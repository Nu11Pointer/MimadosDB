USE MimadosDB
GO

CREATE VIEW [view_munipality]
AS
SELECT M.Id,
	M.DepartmentId,
	D.Name AS [Department],
	D.Active AS [DepartmentActive],
	M.Name,
	M.Active
FROM [Municipality] AS M
INNER JOIN [Department] AS D ON D.Id = M.DepartmentId
