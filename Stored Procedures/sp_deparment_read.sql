USE MimadosDB

GO
CREATE PROCEDURE sp_department_read
AS
SELECT
    Id,
    Name,
    Active
FROM Department
