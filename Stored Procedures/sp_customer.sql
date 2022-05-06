USE MimadosDB
GO

CREATE PROCEDURE [sp_customer] @Operation VARCHAR(1) = 'R',
	@Id INT = NULL,
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
		INSERT INTO [Customer] (
			IdentityCard,
			Name,
			SurName,
			Address,
			MunicipalityId,
			Active
			)
		VALUES (
			@IdentityCard,
			@Name,
			@SurName,
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
		FROM [view_customer]

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
		UPDATE [Customer]
		SET IdentityCard = @IdentityCard,
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
		DELETE [Customer]
		WHERE Id = @Id

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END
