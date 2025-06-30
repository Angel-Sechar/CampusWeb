SET NOCOUNT ON;

INSERT INTO DBO.Constant
(
    nConstantId,
    nConstantValue,
    sConstantDescription,
    sConstantRelated,
    nConstantStatus
)
VALUES 
(2, 0, 'Inactive', NULL, 1),
(2, 1, 'Active', NULL, 1),
(2, 2, 'Status of the constant', NULL, 1);

SET NOCOUNT OFF;