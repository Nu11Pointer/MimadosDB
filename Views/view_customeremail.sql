USE MimadosDB
GO

CREATE VIEW [view_customeremail]
AS
SELECT CE.Id,
	CE.CustomerId,
	C.Name [CustomerName],
	C.SurName [CustomerSurName],
	CONCAT (
		C.Name,
		' ',
		C.SurName
		) [Customer],
	CE.Email,
	CE.Active
FROM [CustomerEmail] AS CE
INNER JOIN Customer AS C ON C.Id = CE.CustomerId
