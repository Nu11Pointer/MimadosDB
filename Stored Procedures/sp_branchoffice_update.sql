USE MimadosDB

GO
CREATE PROCEDURE sp_branchoffice_update
	@Id INT,
	@Name VARCHAR(100),
	@Address VARCHAR(250),
	@MunicipalityId INT,
	@Active BIT,
	@Result BIT OUTPUT,
	@Message VARCHAR(250) OUTPUT
AS
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
