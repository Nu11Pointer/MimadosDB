USE MimadosDB

GO
CREATE PROCEDURE sp_branchoffice_crud
	@Operation VARCHAR(1),
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
