USE MimadosDB
GO

CREATE PROCEDURE [sp_productcategory] @Operation VARCHAR(1),
	@Id INT = NULL,
	@Name VARCHAR(100) = NULL,
	@Active BIT = NULL,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		INSERT INTO [ProductCategory] (
			Name,
			Active
			)
		VALUES (
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
			Name,
			Active
		FROM [ProductCategory]

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
		UPDATE [ProductCategory]
		SET Name = @Name,
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
		DELETE [ProductCategory]
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
