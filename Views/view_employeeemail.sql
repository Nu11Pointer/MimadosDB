USE MimadosDB
GO

CREATE VIEW [view_employeeemail]
AS
SELECT EE.Id,
	EE.EmployeeId,
	E.Name [EmployeeName],
	E.SurName [EmployeeSurName],
	CONCAT (
		E.Name,
		' ',
		E.SurName
		) [Employee],
	EE.Email,
	EE.Active
FROM [EmployeeEmail] AS EE
INNER JOIN Employee AS E ON E.Id = EE.EmployeeId
