USE MimadosDB
GO

ALTER PROCEDURE [sp_sale] @Operation VARCHAR(1),
	@Id INT = NULL,
	@CurrencyId INT = NULL,
	@PaymentTypeId INT = NULL,
	@CustomerId INT = NULL,
	@EmployeeId INT = NULL,
	@Payment DECIMAL(10, 2) = NULL,
	@TimeStamp DATETIME = NULL,
	@Active BIT = NULL,
	@SaleDetail XML = NULL,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION

		INSERT INTO [Sale] (
			CurrencyId,
			PaymentTypeId,
			CustomerId,
			EmployeeId,
			Payment
			)
		VALUES (
			@CurrencyId,
			@PaymentTypeId,
			@CustomerId,
			@EmployeeId,
			@Payment
			)

		DECLARE @scope_identity INT

		SET @scope_identity = SCOPE_IDENTITY()

		INSERT INTO [SaleDetail] (
			SaleId,
			ProductId,
			SalePrice,
			Quantity
			)
		SELECT SaleId = @scope_identity,
			ProductId = Node.Data.value('(ProductId)[1]', 'INT'),
			SalePrice = Node.Data.value('(SalePrice)[1]', 'DECIMAL(10, 2)'),
			Quantity = Node.Data.value('(Quantity)[1]', 'INT')
		FROM @SaleDetail.nodes('/ArrayOfSaleDetail/SaleDetail') AS Node(Data)

		COMMIT

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		ROLLBACK

		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
