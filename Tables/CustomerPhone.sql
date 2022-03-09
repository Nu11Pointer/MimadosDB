USE MimadosDB
GO

CREATE TABLE [CustomerPhone]
(
    Id INT IDENTITY PRIMARY KEY,
    CustomerId INT FOREIGN KEY REFERENCES [Customer](Id),
    PhoneNumber VARCHAR(9) UNIQUE NOT NULL,
    Active BINARY DEFAULT 1 NOT NULL
)
