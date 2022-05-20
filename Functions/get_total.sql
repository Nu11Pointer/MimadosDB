USE MimadosDB
GO

ALTER FUNCTION get_total (@Id INT, @Sale BIT = 1)
RETURNS DECIMAL(10, 2)

BEGIN
	DECLARE @Total DECIMAL(10, 2)

	IF (@Sale = 1)
	BEGIN
		SELECT @Total = SUM(SalePrice * Quantity)
		FROM [SaleDetail]
		WHERE SaleId = @Id
	END
	ELSE
	BEGIN
		SELECT @Total = SUM(PurchasePrice * Quantity)
		FROM [PurchaseDetail]
		WHERE PurchaseId = @Id
	END
	IF (@Total is NULL)
			RETURN 0
		RETURN @Total
END
