USE MimadosDB
GO

CREATE PROCEDURE [sp_purchase] @Operation VARCHAR(1),
	@ProductId INT = NULL,
	@SupplierId INT = NULL,
	@Quantity INT = NULL,
	@PurchasePrice DECIMAL(10, 2) = NULL,
	@TimeStamp DATETIME  = NULL,
	@Active BIT = NULL,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		INSERT INTO [Purchase] (
			ProductId,
            SupplierId,
            Quantity,
            PurchasePrice,
            Active
			)
		VALUES (
			@ProductId,
            @SupplierId,
            @Quantity,
            @PurchasePrice,
            @Active
			)

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'R'
BEGIN
	BEGIN TRY
		SELECT * FROM [view_purchase] ORDER BY [TimeStamp] DESC

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'U'
BEGIN
	BEGIN TRY
		UPDATE [Purchase]
		SET ProductId = @ProductId,
            SupplierId = @SupplierId,
            Quantity = @Quantity,
            PurchasePrice = @PurchasePrice,
            Active = @Active
		WHERE [TimeStamp] LIKE @TimeStamp

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'D'
BEGIN
	BEGIN TRY
		DELETE [Purchase]
		WHERE [TimeStamp] LIKE @TimeStamp

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
