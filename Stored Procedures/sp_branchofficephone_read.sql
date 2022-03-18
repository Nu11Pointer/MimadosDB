USE MimadosDB

GO
CREATE PROCEDURE sp_branchofficephone_read
AS
SELECT *
FROM view_branchofficephone
