USE MimadosDB
GO

CREATE TABLE [PurchaseDetail]
(
    PurchaseId INT FOREIGN KEY REFERENCES [Purchase](Id),
    ProductId INT FOREIGN KEY REFERENCES [Product](Id),
    PurchasePrice DECIMAL(10, 2) NOT NULL,
    Quantity INT CHECK (Quantity > 0) NOT NULL,
    Active BIT DEFAULT 1 NOT NULL,
    PRIMARY KEY (PurchaseId, ProductId )
)
