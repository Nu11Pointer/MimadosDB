USE MimadosDB
GO

CREATE TABLE [Purchase] 
(
    Id INT IDENTITY PRIMARY KEY,
	CurrencyId INT FOREIGN KEY REFERENCES [Currency](Id),
	PaymentTypeId INT FOREIGN KEY REFERENCES [PaymentType](Id),
	SupplierId INT FOREIGN KEY REFERENCES [Supplier](Id),
	EmployeeId INT FOREIGN KEY REFERENCES [Employee](Id),
	Payment DECIMAL(10, 2) CHECK (Payment >= 0) NOT NULL,
	TIMESTAMP DATETIME DEFAULT GETDATE() NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
)
