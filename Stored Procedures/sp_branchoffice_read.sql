USE MimadosDB

GO
ALTER PROCEDURE sp_branchoffice_read
AS
SELECT
    *
FROM view_branchoffice
