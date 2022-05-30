USE MimadosDB
GO

CREATE
	OR

ALTER VIEW [view_user]
AS
SELECT U.EmployeeId,
	U.EmployeeEmailId,
	(
		SELECT Email
		FROM EmployeeEmail
		WHERE Id = EmployeeEmailId
		) AS EmployeeEmail,
	E.Name,
	E.SurName,
	B.Id AS [BranchOfficeId],
	B.Name AS [BranchOffice],
	EP.Id AS [EmployeePositionId],
	EP.Name AS [EmployeePosition],
	U.[Password],
	U.Active
FROM [MimadosDB].[dbo].[User] AS U
INNER JOIN Employee AS E ON E.Id = U.EmployeeId
INNER JOIN BranchOffice AS B ON B.Id = E.BranchOfficeId
INNER JOIN EmployeePosition AS EP ON EP.Id = E.EmployeePositionId
