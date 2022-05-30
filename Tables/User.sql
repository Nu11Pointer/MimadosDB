USE MimadosDB
GO

CREATE TABLE [User]
(
    EmployeeId INT FOREIGN KEY REFERENCES[Employee](Id),
    EmployeeEmailId INT FOREIGN KEY REFERENCES[EmployeeEmail](Id),
    [Password] VARCHAR(250) NOT NULL,
    Active BIT DEFAULT 1 NOT NULL,
    PRIMARY KEY (EmployeeId, EmployeeEmailId)
)
