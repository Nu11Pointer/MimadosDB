USE MimadosDB

GO
CREATE VIEW view_branchoffice
AS
    SELECT
        B.Id,
        B.Name,
        B.Address,
        M.DepartmentId,
        D.Name AS [Department],
        D.Active AS [DepartmentActive],
        B.MunicipalityId,
        M.Name AS [Municipality],
        M.Active AS [MunicipalityActive],
        B.Active
    FROM BranchOffice AS B
        INNER JOIN Municipality AS M ON M.Id = B.MunicipalityId
        INNER JOIN Department AS D ON D.Id = M.DepartmentId
