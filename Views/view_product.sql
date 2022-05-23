USE MimadosDB
GO

ALTER VIEW view_product
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
	P.ProductPackagingId,
	PP.Name AS [ProductPackaging],
	PP.Active AS [ProductPackagingActive],
	P.NetContent,
	P.ProductMeasurementUnitId,
	PMU.Name AS [ProductMeasurementUnit],
	PMU.Symbol AS [ProductMeasurementUnitSymbol],
	PMU.Active AS [ProductMeasurementUnitActive],
	P.SalePrice,
	P.Stock,
	P.Active
FROM Product AS P
INNER JOIN ProductBrand AS PB ON PB.ID = P.ProductBrandId
INNER JOIN ProductCategory AS PC ON PC.ID = P.ProductCategoryId
INNER JOIN ProductPackaging AS PP ON PP.Id = P.ProductPackagingId
INNER JOIN ProductMeasurementUnit AS PMU ON PMU.Id = P.ProductMeasurementUnitId
