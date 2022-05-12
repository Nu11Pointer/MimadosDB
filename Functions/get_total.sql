USE MimadosDB
GO

ALTER FUNCTION get_total (@SaleId INT)
RETURNS DECIMAL(10, 2)

BEGIN
	DECLARE @Total DECIMAL(10, 2)

	SELECT @Total = SUM(SalePrice * Quantity)
	FROM [SaleDetail]
	WHERE SaleId = @SaleId
	IF (@Total is NULL)
		RETURN 0
	RETURN @Total
END
