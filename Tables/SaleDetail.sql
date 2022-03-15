USE MimadosDB
GO

CREATE TABLE [SaleDetail]
(
    SaleId INT FOREIGN KEY REFERENCES [Sale](Id),
    ProductId INT FOREIGN KEY REFERENCES [Product](Id),
    SalePrice DECIMAL(10, 2) NOT NULL,
    Quantity INT CHECK (Quantity > 0) NOT NULL,
    Active BIT DEFAULT 1 NOT NULL,
    PRIMARY KEY (SaleId, ProductId )
)
