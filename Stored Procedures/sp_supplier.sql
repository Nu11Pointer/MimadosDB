USE MimadosDB
GO

CREATE PROCEDURE [sp_supplier] @Operation VARCHAR(1),
	@Id INT = NULL,
	@Name VARCHAR(100) = NULL,
	@Address VARCHAR(250) = NULL,
	@MunicipalityId INT = NULL,
	@Active BIT = 1,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		INSERT INTO [Supplier] (
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
		FROM [view_supplier]

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
		UPDATE [Supplier]
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
		DELETE [Supplier]
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
