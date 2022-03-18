USE MimadosDB

GO
CREATE VIEW view_branchofficephone
AS
    SELECT
        BP.Id,
        BP.BranchOfficeId,
        B.Name [BranchOffice],
        BP.PhoneNumber,
        BP.Active
    FROM BranchOfficePhone AS BP
        INNER JOIN BranchOffice AS B ON B.Id = BP.BranchOfficeId
