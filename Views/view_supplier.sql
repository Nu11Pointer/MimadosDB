USE MimadosDB
GO

CREATE VIEW [view_supplier]
AS
SELECT S.Id,
	S.Name,
	S.Address,
	S.MunicipalityId,
	M.Name AS [Municipality],
	M.DepartmentId,
	D.Name AS [Department],
	D.Active AS [DepartmentActive],
	M.Active AS [MunicipalityActive],
	S.Active
FROM [Supplier] AS S
INNER JOIN [Municipality] AS M ON M.Id = S.MunicipalityId
INNER JOIN [Department] AS D ON D.Id = M.DepartmentId
