USE MimadosDB
GO

CREATE VIEW [view_employeephone]
AS
SELECT EP.Id,
	EP.EmployeeId,
	E.Name [EmployeeName],
	E.SurName [EmployeeSurName],
	CONCAT (
		E.Name,
		' ',
		E.SurName
		) [Employee],
	EP.PhoneNumber,
	EP.Active
FROM [EmployeePhone] AS EP
INNER JOIN [Employee] AS E ON E.Id = EP.EmployeeId
