USE MimadosDB
GO

CREATE
	OR

ALTER PROCEDURE [sp_user] @Operation VARCHAR(1) = 'R',
	@EmployeeId INT = NULL,
	@EmployeeEmailId INT = NULL,
	@Email VARCHAR(250) = NULL,
	@Password VARCHAR(250) = NULL,
	@Active BIT = NULL,
	@Result BIT = 0 OUTPUT,
	@Message VARCHAR(250) = '' OUTPUT
AS
IF @Operation LIKE 'C'
BEGIN
	BEGIN TRY
		-- Verificar que el empleado solo tenga un usuario
		IF EXISTS (
				SELECT *
				FROM [view_user]
				WHERE EmployeeId = @EmployeeId
				)
		BEGIN
			SET @Result = 0
			SET @Message = 'El empleado seleccionado ya posee una cuenta asociada.'
		END
		ELSE
		BEGIN
			INSERT INTO [User] (
				EmployeeId,
				EmployeeEmailId,
				[Password],
				Active
				)
			VALUES (
				@EmployeeId,
				@EmployeeEmailId,
				ENCRYPTBYPASSPHRASE(@Password, @Password),
				@Active
				)

			SET @Result = 1
			SET @Message = ''
		END
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
		FROM [view_user]

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
		UPDATE [User]
		SET EmployeeEmailId = @EmployeeEmailId,
			Active = @Active
		WHERE EmployeeId = @EmployeeId

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
		DELETE
		FROM [User]
		WHERE EmployeeId = @EmployeeId
			AND EmployeeEmailId = @EmployeeEmailId

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'V'
BEGIN
	BEGIN TRY
		IF EXISTS (
				SELECT *
				FROM [view_user]
				WHERE CAST(DECRYPTBYPASSPHRASE(@Password, [Password]) AS VARCHAR(250)) = @Password
					AND EmployeeEmail = @Email
				)
			SET @Result = 1
		ELSE
			SET @Result = 0

		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END

IF @Operation LIKE 'P'
BEGIN
	BEGIN TRY
		UPDATE [User]
		SET [Password] = ENCRYPTBYPASSPHRASE(@Password, @Password)
		WHERE EmployeeId = @EmployeeId

		SET @Result = 1
		SET @Message = ''
	END TRY

	BEGIN CATCH
		SET @Result = 0
		SET @Message = ERROR_MESSAGE()
	END CATCH
END