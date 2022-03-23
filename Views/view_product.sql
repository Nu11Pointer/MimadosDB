USE MimadosDB
GO

CREATE VIEW view_product
AS
SELECT P.Id,
	P.ProductBrandId,
	PB.Name AS [ProductBrand],
	PB.Active [ProductBrandActive],
	P.ProductCategoryId,
	PC.Name AS [ProductCategory],
	PC.Active AS [ProductCategoryActive],
	P.Name,
	P.Description,
	P.SalePrice,
	P.Stock,
	P.Active
FROM Product AS P
INNER JOIN ProductBrand AS PB ON PB.ID = P.ProductBrandId
INNER JOIN ProductCategory AS PC ON PC.ID = P.ProductCategoryId
