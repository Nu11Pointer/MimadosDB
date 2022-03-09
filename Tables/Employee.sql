USE MimadosDB
GO

CREATE TABLE [Employee]
(
    Id INT IDENTITY PRIMARY KEY,
    EmployeePositionId INT FOREIGN KEY REFERENCES [EmployeePosition](Id),
    BranchOfficeId INT FOREIGN KEY REFERENCES [BranchOffice](Id),
    IdentityCard VARCHAR(16) UNIQUE NOT NULL,
    Name VARCHAR(100) NOT NULL,
    SurName VARCHAR(100) NOT NULL,
    Address VARCHAR(250),
    MunicipalityId INT FOREIGN KEY REFERENCES [Municipality](Id),
    Active BINARY DEFAULT 1 NOT NULL
)
