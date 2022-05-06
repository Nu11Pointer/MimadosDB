USE MimadosDB
GO

CREATE VIEW [view_purchase]
AS
SELECT PC.[ProductId],
	P.Name AS [Product],
	P.Active AS [ProductActive],
	PC.SupplierId,
	S.Name AS [Supplier],
	S.Active AS [SupplierActive],
	PC.Quantity,
	PC.PurchasePrice,
	PC.[TimeStamp],
	PC.Active
FROM [Purchase] AS PC
INNER JOIN Product AS P ON P.Id = PC.ProductId
INNER JOIN Supplier AS S ON S.Id = PC.SupplierId
