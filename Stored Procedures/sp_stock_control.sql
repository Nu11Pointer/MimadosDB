USE MimadosDB
GO

CREATE
	OR

ALTER PROCEDURE [sp_stock_control] @IdProduct INT,
	@Quantity INT
AS
BEGIN TRY
	UPDATE [Product]
	SET [Stock] = [Stock] + @Quantity
	WHERE [Id] = @IdProduct
END TRY

BEGIN CATCH
END CATCH
