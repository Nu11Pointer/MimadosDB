USE MimadosDB
GO

CREATE VIEW [view_purchase]
AS
SELECT P.Id,
	P.CurrencyId,
	P.PaymentTypeId,
	P.SupplierId,
	S.Name AS [Supplier],
	P.EmployeeId,
	E.Name AS [EmployeeName],
	E.SurName AS [EmployeeSurName],
	P.Payment,
	dbo.get_total(P.Id, 0) AS Total,
	P.[TimeStamp],
	P.Active
FROM [Purchase] AS P
INNER JOIN [Supplier] AS S ON S.Id = P.SupplierId
INNER JOIN [Employee] AS E ON E.Id = P.EmployeeId
