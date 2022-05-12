USE MimadosDB
GO

CREATE VIEW [view_sale]
AS
SELECT S.Id,
	S.CurrencyId,
	S.PaymentTypeId,
	S.CustomerId,
    C.Name AS [CustomerName],
    C.SurName AS [CustomerSurName],
	S.EmployeeId,
    E.Name AS [EmployeeName],
    E.SurName AS [EmployeeSurName],
	S.Payment,
    dbo.get_total(S.Id) AS Total,
	S.[TimeStamp],
	S.Active
FROM [Sale] AS S
INNER JOIN [Customer] AS C
ON C.Id = S.CustomerId
INNER JOIN [Employee] AS E
ON E.Id = S.EmployeeId