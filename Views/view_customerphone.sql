USE MimadosDB
GO

CREATE VIEW [view_customerphone]
AS
SELECT CP.Id,
	CP.CustomerId,
	C.Name [CustomerName],
	C.SurName [CustomerSurName],
	CONCAT (
		C.Name,
		' ',
		C.SurName
		) [Customer],
	CP.PhoneNumber,
	CP.Active
FROM [CustomerPhone] AS CP
INNER JOIN Customer AS C ON C.Id = CP.CustomerId
