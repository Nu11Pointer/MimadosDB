USE MimadosDB
GO

CREATE TABLE [BranchOfficePhone]
(
    Id INT IDENTITY PRIMARY KEY,
    BranchOfficeId INT FOREIGN KEY REFERENCES [BranchOffice](Id),
    PhoneNumber VARCHAR(9) UNIQUE NOT NULL,
    Active BIT DEFAULT 1 NOT NULL
)
