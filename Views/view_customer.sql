USE MimadosDB

GO
CREATE VIEW view_customer
AS
    SELECT
        C.Id,
        C.IdentityCard,
        C.Name,
        C.SurName,
        C.Address,
        C.MunicipalityId,
        M.Name AS [Municipality],
        M.Active AS [MunicipalityActive],
        M.DepartmentId,
        D.Name AS [Department],
        D.Active AS [DepartmentActive],
        C.Active
    FROM Customer AS C
        INNER JOIN Municipality AS M ON M.Id = C.MunicipalityId
        INNER JOIN Department AS D ON D.Id = M.DepartmentId
