USE MimadosDB

GO
CREATE VIEW [view_supplieremail]
AS
    SELECT SE.Id,
    SE.SupplierID,
    S.Name AS [Supplier],
    S.Active AS [SupplierActive],
    SE.Email,
    SE.Active
     FROM SupplierEmail AS SE
     INNER JOIN [Supplier] AS S
     ON S.Id = SE.SupplierId