USE MimadosDB

GO
CREATE PROCEDURE sp_branchoffice_create
    @Name VARCHAR(100),
    @Address VARCHAR(250),
    @MunicipalityId INT,
    @Active BIT,
    @Result INT OUTPUT,
    @Message VARCHAR(250) OUTPUT
AS
BEGIN TRY
	INSERT INTO [BranchOffice]
    (Name, Address, MunicipalityId, Active)
VALUES
    (@Name, @Address, @MunicipalityId, @Active)

	SET @Result = SCOPE_IDENTITY()
	SET @Message = ''
END TRY

BEGIN CATCH
	SET @Result = - 1
	SET @Message = ERROR_MESSAGE()
END CATCH
