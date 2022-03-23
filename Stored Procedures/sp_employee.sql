USE MimadosDB
GO

CREATE PROCEDURE [sp_employee] @Operation VARCHAR(1) = 'R',
	@Id INT = NULL,
	@EmployeePositionId INT = NULL,
	@BranchOfficeId INT = NULL,
	@IdentityCard VARCHAR(16) = NULL,
	@Name VARCHAR(100) = NULL,
	@SurName VARCHAR(100) = NULL,
	@Address VARCHAR(250) = NULL,
	@MunicipalityId INT = NULL,
	@Active BIT = NULL,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		INSERT INTO [Employee] (
			EmployeePositionId,
			BranchOfficeId,
			IdentityCard,
			Name,
			SurName,
			Address,
			MunicipalityId,
			Active
			)
		VALUES (
			@EmployeePositionId,
			@BranchOfficeId,
			@IdentityCard,
			@Name,
			@SurName,
			@Address,
			@MunicipalityId,
			@Active
			)

		SET @Result = SCOPE_IDENTITY()
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
		FROM [view_employee]

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
		UPDATE [Employee]
		SET EmployeePositionId = @EmployeePositionId,
			BranchOfficeId = @BranchOfficeId,
			IdentityCard = @IdentityCard,
			Name = @Name,
			SurName = @SurName,
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
		DELETE [Employee]
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
