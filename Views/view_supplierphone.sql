USE MimadosDB
GO

CREATE VIEW [view_supplierphone]
AS
SELECT SP.Id,
	SP.SupplierId,
    S.Name AS [Supplier],
    S.Address AS [SupplierAddress],
    S.Active AS [SupplierActive],
	SP.PhoneNumber,
	SP.Active
FROM [SupplierPhone] AS SP
INNER JOIN [Supplier] AS S
ON S.Id = SP.SupplierId