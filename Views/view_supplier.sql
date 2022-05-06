USE MimadosDB
GO

CREATE VIEW [view_supplier]
AS
SELECT S.Id,
	S.Name,
	S.Address,
	S.MunicipalityId,
	M.Name AS [Municipality],
	M.Active AS [MunicipalityActive],
	M.DepartmentId,
	D.Name AS [Department],
	D.Active AS [DepartmentActive],
	S.Active
FROM [Supplier] AS S
INNER JOIN [Municipality] AS M ON M.Id = S.MunicipalityId
INNER JOIN [Department] AS D ON D.Id = M.DepartmentId
