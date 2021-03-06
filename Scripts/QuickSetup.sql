-- Use this script when you wanna create or reset the database without any register.
USE master

IF EXISTS (
		SELECT *
		FROM sysdatabases
		WHERE NAME = 'MimadosDB'
		)
BEGIN
	DROP DATABASE MimadosDB
END
GO

CREATE DATABASE MimadosDB
GO

USE MimadosDB

-- Tables
CREATE TABLE [Department] (
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [Municipality] (
	Id INT IDENTITY PRIMARY KEY,
	DepartmentId INT FOREIGN KEY REFERENCES [Department](Id),
	Name VARCHAR(100) NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [BranchOffice] (
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Address VARCHAR(250) NOT NULL,
	MunicipalityId INT FOREIGN KEY REFERENCES [Municipality](Id),
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [BranchOfficePhone] (
	Id INT IDENTITY PRIMARY KEY,
	BranchOfficeId INT FOREIGN KEY REFERENCES [BranchOffice](Id),
	PhoneNumber VARCHAR(9) UNIQUE NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [Customer] (
	Id INT IDENTITY PRIMARY KEY,
	IdentityCard VARCHAR(16) UNIQUE,
	Name VARCHAR(100) NOT NULL,
	SurName VARCHAR(100) NOT NULL,
	Address VARCHAR(250) NOT NULL,
	MunicipalityId INT FOREIGN KEY REFERENCES [Municipality](Id),
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [CustomerEmail] (
	Id INT IDENTITY PRIMARY KEY,
	CustomerId INT FOREIGN KEY REFERENCES [Customer](Id),
	Email VARCHAR(100) UNIQUE NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [CustomerPhone] (
	Id INT IDENTITY PRIMARY KEY,
	CustomerId INT FOREIGN KEY REFERENCES [Customer](Id),
	PhoneNumber VARCHAR(9) UNIQUE NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [EmployeePosition] (
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [Employee] (
	Id INT IDENTITY PRIMARY KEY,
	EmployeePositionId INT FOREIGN KEY REFERENCES [EmployeePosition](Id),
	BranchOfficeId INT FOREIGN KEY REFERENCES [BranchOffice](Id),
	IdentityCard VARCHAR(16) UNIQUE NOT NULL,
	Name VARCHAR(100) NOT NULL,
	SurName VARCHAR(100) NOT NULL,
	Address VARCHAR(250),
	MunicipalityId INT FOREIGN KEY REFERENCES [Municipality](Id),
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [EmployeeEmail] (
	Id INT IDENTITY PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES [Employee](Id),
	Email VARCHAR(100) UNIQUE NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [EmployeePhone] (
	Id INT IDENTITY PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES [Employee](Id),
	PhoneNumber VARCHAR(9) UNIQUE NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [Supplier] (
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Address VARCHAR(250) NOT NULL,
	MunicipalityId INT FOREIGN KEY REFERENCES [Municipality](Id),
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [SupplierEmail] (
	Id INT IDENTITY PRIMARY KEY,
	SupplierId INT FOREIGN KEY REFERENCES [Supplier](Id),
	Email VARCHAR(100) UNIQUE NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [SupplierPhone] (
	Id INT IDENTITY PRIMARY KEY,
	SupplierId INT FOREIGN KEY REFERENCES [Supplier](Id),
	PhoneNumber VARCHAR(9) UNIQUE NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [ProductBrand] (
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [ProductCategory] (
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [Product] (
	Id INT IDENTITY PRIMARY KEY,
	ProductBrandId INT FOREIGN KEY REFERENCES [ProductBrand](Id),
	ProductCategoryId INT FOREIGN KEY REFERENCES [ProductCategory](Id),
	Name VARCHAR(100) NOT NULL,
	Description VARCHAR(MAX) DEFAULT 'Este producto no tiene descripci??n.' NOT NULL,
	SalePrice DECIMAL(10, 2) CHECK (SalePrice >= 0) NOT NULL,
	Stock INT CHECK (Stock >= 0) DEFAULT 0 NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [ProductImage] (
	ProductId INT PRIMARY KEY FOREIGN KEY REFERENCES Product(Id),
	ImageName VARCHAR(100),
	ImagePath VARCHAR(MAX)
	)

CREATE TABLE [Purchase] (
	ProductId INT FOREIGN KEY REFERENCES [Product](Id),
	SupplierId INT FOREIGN KEY REFERENCES [Supplier](Id),
	Quantity INT CHECK (Quantity > 0) NOT NULL,
	PurchasePrice DECIMAL(10, 2) CHECK (PurchasePrice >= 0) NOT NULL,
	TIMESTAMP DATETIME DEFAULT GETDATE() NOT NULL,
	Active BIT DEFAULT 1 NOT NULL,
	PRIMARY KEY (
		ProductId,
		SupplierId,
		TIMESTAMP
		)
	)

CREATE TABLE [Currency] (
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [PaymentType] (
	Id INT IDENTITY PRIMARY KEY,
	Name VARCHAR(100) NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [Sale] (
	Id INT IDENTITY PRIMARY KEY,
	CurrencyId INT FOREIGN KEY REFERENCES [Currency](Id),
	PaymentTypeId INT FOREIGN KEY REFERENCES [PaymentType](Id),
	CustomerId INT FOREIGN KEY REFERENCES [Customer](Id),
	EmployeeId INT FOREIGN KEY REFERENCES [Employee](Id),
	Payment DECIMAL(10, 2) CHECK (Payment >= 0) NOT NULL,
	TIMESTAMP DATETIME DEFAULT GETDATE() NOT NULL,
	Active BIT DEFAULT 1 NOT NULL
	)

CREATE TABLE [SaleDetail] (
	SaleId INT FOREIGN KEY REFERENCES [Sale](Id),
	ProductId INT FOREIGN KEY REFERENCES [Product](Id),
	SalePrice DECIMAL(10, 2) NOT NULL,
	Quantity INT CHECK (Quantity > 0) NOT NULL,
	Active BIT DEFAULT 1 NOT NULL,
	PRIMARY KEY (
		SaleId,
		ProductId
		)
	)
GO

-- Views
CREATE VIEW [view_branchoffice]
AS
SELECT B.Id,
	B.Name,
	B.Address,
	M.DepartmentId,
	D.Name AS [Department],
	D.Active AS [DepartmentActive],
	B.MunicipalityId,
	M.Name AS [Municipality],
	M.Active AS [MunicipalityActive],
	B.Active
FROM BranchOffice AS B
INNER JOIN [Municipality] AS M ON M.Id = B.MunicipalityId
INNER JOIN [Department] AS D ON D.Id = M.DepartmentId
GO

CREATE VIEW [view_branchofficephone]
AS
SELECT BP.Id,
	BP.BranchOfficeId,
	B.Name [BranchOffice],
	BP.PhoneNumber,
	BP.Active
FROM [BranchOfficePhone] AS BP
INNER JOIN [BranchOffice] AS B ON B.Id = BP.BranchOfficeId
GO

CREATE VIEW [view_customer]
AS
SELECT C.Id,
	C.IdentityCard,
	C.Name,
	C.SurName,
	C.Address,
	C.MunicipalityId,
	M.Name AS [Municipality],
	M.Active AS [MunicipalityActive],
	M.DepartmentId,
	D.Name AS [Department],
	D.Active AS [DepartmentActive],
	C.Active
FROM Customer AS C
INNER JOIN [Municipality] AS M ON M.Id = C.MunicipalityId
INNER JOIN [Department] AS D ON D.Id = M.DepartmentId
GO

-- Stored Procedures
CREATE PROCEDURE [sp_branchoffice] @Operation VARCHAR(1),
	@Id INT = NULL,
	@Name VARCHAR(100) = NULL,
	@Address VARCHAR(250) = NULL,
	@MunicipalityId INT = NULL,
	@Active BIT = 1,
	@Result INT = - 1 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		INSERT INTO [BranchOffice] (
			Name,
			Address,
			MunicipalityId,
			Active
			)
		VALUES (
			@Name,
			@Address,
			@MunicipalityId,
			@Active
			)

		SET @Result = SCOPE_IDENTITY()
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = - 1
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'R'
BEGIN
	BEGIN TRY
		SELECT *
		FROM view_branchoffice

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'U'
BEGIN
	BEGIN TRY
		UPDATE BranchOffice
		SET Name = @Name,
			Address = @Address,
			MunicipalityId = @MunicipalityId,
			Active = @Active
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'D'
BEGIN
	BEGIN TRY
		DELETE BranchOffice
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
GO


GO

CREATE PROCEDURE [sp_branchofficephone] @Operation VARCHAR(1),
	@Id INT = NULL,
	@BranchOfficeId INT = NULL,
	@PhoneNumber VARCHAR(9) = NULL,
	@Active BIT = 1,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		INSERT INTO [BranchOfficePhone] (
			BranchOfficeId,
			PhoneNumber,
			Active
			)
		VALUES (
			@BranchOfficeId,
			@PhoneNumber,
			@Active
			)

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'R'
BEGIN
	BEGIN TRY
		SELECT *
		FROM [view_branchofficephone]

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'U'
BEGIN
	BEGIN TRY
		UPDATE [BranchOfficePhone]
		SET PhoneNumber = @PhoneNumber,
			Active = @Active
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'D'
BEGIN
	BEGIN TRY
		DELETE [BranchOfficePhone]
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
GO

CREATE PROCEDURE [sp_municipality] @Operation VARCHAR(1),
	@Id INT = NULL,
	@DepartmentId INT = NULL,
	@Name VARCHAR(100) = NULL,
	@Active BIT = NULL,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		INSERT INTO [Municipality] (
			DepartmentId,
			Name,
			Active
			)
		VALUES (
			@DepartmentId,
			@Name,
			@Active
			)

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'R'
BEGIN
	BEGIN TRY
		SELECT Id,
			DepartmentId,
			Name,
			Active
		FROM [Department]

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'U'
BEGIN
	BEGIN TRY
		UPDATE [Municipality]
		SET DepartmentId = @DepartmentId,
			Name = @Name,
			Active = @Active
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'D'
BEGIN
	BEGIN TRY
		DELETE [Municipality]
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
GO

-- Triggers
CREATE TRIGGER [tr_product] ON [Purchase]
FOR INSERT
AS
SET NOCOUNT ON

UPDATE Product
SET Stock = P.Stock + I.Quantity
FROM inserted AS I
INNER JOIN Product AS P ON P.Id = I.ProductId
GO

CREATE TRIGGER [tr_sale_detail] ON [SaleDetail]
FOR INSERT
AS
SET NOCOUNT ON

UPDATE [Product]
SET Stock = P.Stock - I.Quantity
FROM inserted AS I
INNER JOIN [Product] AS P ON P.Id = I.ProductId
