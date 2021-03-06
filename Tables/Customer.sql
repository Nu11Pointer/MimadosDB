USE MimadosDB
GO

CREATE TABLE [Customer]
(
    Id INT IDENTITY PRIMARY KEY,
    IdentityCard VARCHAR(16),
    Name VARCHAR(100) NOT NULL,
    SurName VARCHAR(100) NOT NULL,
    Address VARCHAR(250) NOT NULL,
    MunicipalityId INT FOREIGN KEY REFERENCES [Municipality](Id),
    Active BIT DEFAULT 1 NOT NULL
)
