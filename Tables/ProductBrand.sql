USE MimadosDB
GO

CREATE TABLE [ProductBrand]
(
    Id INT IDENTITY PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Active BIT DEFAULT 1 NOT NULL
)
