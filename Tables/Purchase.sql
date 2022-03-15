USE MimadosDB
GO

CREATE TABLE [Purchase]
(
  ProductId INT FOREIGN KEY REFERENCES [Product](Id),
  SupplierId INT FOREIGN KEY REFERENCES [Supplier](Id),
  Quantity INT CHECK (Quantity > 0) NOT NULL,
  PurchasePrice DECIMAL(10, 2) CHECK (PurchasePrice >= 0) NOT NULL,
  TimeStamp DATETIME DEFAULT GETDATE() NOT NULL,
  Active BIT DEFAULT 1 NOT NULL,
  PRIMARY KEY (ProductId, SupplierId, TimeStamp)
)
