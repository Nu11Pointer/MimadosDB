USE MimadosDB

GO
CREATE TRIGGER [tr_purchasedetail] ON [PurchaseDetail]
FOR INSERT
AS
SET NOCOUNT ON

UPDATE Product
SET Stock = P.Stock + I.Quantity
FROM inserted AS I
    INNER JOIN Product AS P ON P.Id = I.ProductId
