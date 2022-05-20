USE MimadosDB
GO

CREATE VIEW [view_purchasedetail]
AS
SELECT PD.PurchaseId,
	PD.[ProductId],
	P.Name AS [Product],
	PD.PurchasePrice,
	PD.Quantity,
	PD.Active
FROM [PurchaseDetail] AS PD
INNER JOIN Product AS P ON P.Id = PD.ProductId
