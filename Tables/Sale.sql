USE MimadosDB
GO

CREATE TABLE [Sale]
(
    Id INT IDENTITY PRIMARY KEY,
    CurrencyId INT FOREIGN KEY REFERENCES [Currency](Id),
    PaymentTypeId INT FOREIGN KEY REFERENCES [PaymentType](Id),
    CustomerId INT FOREIGN KEY REFERENCES [Customer](Id),
    EmployeeId INT FOREIGN KEY REFERENCES [Employee](Id),
    Payment DECIMAL(10, 2) CHECK (Payment >= 0) NOT NULL,
    TimeStamp DATETIME DEFAULT GETDATE() NOT NULL,
    Active BIT DEFAULT 1 NOT NULL
)
