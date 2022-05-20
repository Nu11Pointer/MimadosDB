USE MimadosDB
GO

ALTER PROCEDURE [sp_purchase] @Operation VARCHAR(1),
	@Id INT = NULL,
	@CurrencyId INT = NULL,
	@PaymentTypeId INT = NULL,
	@SupplierId INT = NULL,
	@EmployeeId INT = NULL,
	@Payment DECIMAL(10, 2) = NULL,
	@TimeStamp DATETIME = NULL,
	@Active BIT = NULL,
	@PurchaseDetail XML = NULL,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT,
	@Scope INT = 0 OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

		INSERT INTO [Purchase] (
			CurrencyId,
			PaymentTypeId,
			SupplierId,
			EmployeeId,
			Payment
			)
		VALUES (
			@CurrencyId,
			@PaymentTypeId,
			@SupplierId,
			@EmployeeId,
			@Payment
			)

		DECLARE @scope_identity INT

		SET @scope_identity = SCOPE_IDENTITY()

		INSERT INTO [PurchaseDetail] (
			PurchaseId,
			ProductId,
			PurchasePrice,
			Quantity
			)
		SELECT PurchaseId = @scope_identity,
			ProductId = Node.Data.value('(Product/Id)[1]', 'INT'),
			PurchasePrice = Node.Data.value('(PurchasePrice)[1]', 'DECIMAL(10, 2)'),
			Quantity = Node.Data.value('(Quantity)[1]', 'INT')
		FROM @PurchaseDetail.nodes('/ArrayOfPurchaseDetails/PurchaseDetails') AS Node(Data)

		COMMIT

		SET @Scope = @scope_identity
		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		ROLLBACK

		SET @Scope = - 1
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'R'
BEGIN
	BEGIN TRY
		SELECT *
		FROM [view_purchase]

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Scope = - 1
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
