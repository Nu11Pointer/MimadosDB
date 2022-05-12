USE MimadosDB
GO

CREATE VIEW [view_saledetail]
AS
SELECT SD.SaleId,
    SD.[ProductId],
	P.Name AS [Product],
    SD.SalePrice,
	SD.Quantity,
	SD.Active
FROM [SaleDetail] AS SD
INNER JOIN Product AS P ON P.Id = SD.ProductId
