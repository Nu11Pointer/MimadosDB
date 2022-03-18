USE MimadosDB
GO

CREATE TABLE [Product]
(
    Id INT IDENTITY PRIMARY KEY,
    ProductBrandId INT FOREIGN KEY REFERENCES [ProductBrand](Id),
    ProductCategoryId INT FOREIGN KEY REFERENCES [ProductCategory](Id),
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(MAX) DEFAULT 'Este producto no tiene descripción.' NOT NULL,
    SalePrice DECIMAL(10, 2) CHECK (SalePrice >= 0) NOT NULL,
    Stock INT CHECK (Stock >= 0) DEFAULT 0 NOT NULL,
    Active BIT DEFAULT 1 NOT NULL
)
