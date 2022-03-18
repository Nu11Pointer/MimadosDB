USE MimadosDB

GO
CREATE PROCEDURE sp_branchoffice_read
AS
SELECT
    *
FROM view_branchoffice
