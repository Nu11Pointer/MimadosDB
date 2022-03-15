USE MimadosDB

GO
CREATE PROCEDURE sp_branchoffice_delete
    @Id INT,
    @Result BIT OUTPUT,
    @Message VARCHAR(250) OUTPUT
AS
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
