USE MimadosDB

GO
CREATE PROCEDURE sp_municipality_read
AS
SELECT
    Id,
    DepartmentId,
    Name,
    Active
FROM Municipality
