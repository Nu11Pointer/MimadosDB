USE MimadosDB

GO
CREATE PROCEDURE sp_branchoffice_read
AS
SELECT
    Id,
    Name,
    Address,
    MunicipalityId,
    Active
FROM BranchOffice
