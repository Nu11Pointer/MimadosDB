USE MimadosDB
GO

CREATE TABLE [BranchOffice]
(
    Id INT IDENTITY PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(250) NOT NULL,
    MunicipalityId INT FOREIGN KEY REFERENCES [Municipality](Id),
    Active BIT DEFAULT 1 NOT NULL
)
