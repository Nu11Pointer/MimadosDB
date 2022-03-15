USE MimadosDB
GO

CREATE TABLE [ProductImage]
(
    ProductId INT PRIMARY KEY FOREIGN KEY REFERENCES Product(Id),
    ImageName VARCHAR(100),
    ImagePath VARCHAR(MAX)
)
