USE MimadosDB
GO

CREATE VIEW view_employee
AS
SELECT E.Id,
	E.EmployeePositionId,
	EP.Name AS [EmployeePosition],
	EP.Active AS [EmployeePositionActive],
	E.BranchOfficeId,
	B.Name AS [BranchOffice],
	B.Active AS [BranchOfficeActive], 
	E.IdentityCard,
	E.Name,
	E.SurName,
	CONCAT (
		E.SurName,
		' ',
		E.Name
		) AS [FullName],
	E.Address,
	D.Id AS [DepartmentId],
	D.Name AS [Department],
	D.Active AS [DepartmentActive],
	E.MunicipalityId,
	M.Name AS [Municipality],
	M.Active AS [MunicipalityActive],
	E.Active
FROM Employee AS E
INNER JOIN EmployeePosition AS EP ON EP.Id = E.EmployeePositionId
INNER JOIN BranchOffice AS B ON B.Id = E.BranchOfficeId
INNER JOIN Municipality AS M ON M.Id = E.MunicipalityId
INNER JOIN Department AS D ON D.Id = M.DepartmentId
