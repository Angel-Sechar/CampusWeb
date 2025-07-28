SET NOCOUNT ON;
EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Constant table for storing various constants used in the application.', 
    @level0type = N'Schema', @level0name = N'Dbo', 
    @level1type = N'Table', @level1name = N'Constant';

EXEC sp_addextendedproperty 
    @name = N'MS_Description', 
    @value = N'Indicates the identification of the table.', 
    @level0type = N'Schema', @level0name = N'Dbo', 
    @level1type = N'Table', @level1name = N'Constant',
    @level2type = N'Column', @level2name = N'nConstantId';

EXEC sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Indicates the value of the constant.',
    @level0type = N'Schema', @level0name = N'Dbo',
    @level1type = N'Table', @level1name = N'Constant',
    @level2type = N'Column', @level2name = N'nConstantValue';

EXEC sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Description of the constant.',
    @level0type = N'Schema', @level0name = N'Dbo',
    @level1type = N'Table', @level1name = N'Constant',
    @level2type = N'Column', @level2name = N'sConstantDescription';

EXEC sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Related information or context for the constant.',
    @level0type = N'Schema', @level0name = N'Dbo',
    @level1type = N'Table', @level1name = N'Constant',
    @level2type = N'Column', @level2name = N'sConstantRelated';

EXEC sp_addextendedproperty 
    @name = N'MS_Description',
    @value = N'Status of the constant, check constant 2.',
    @level0type = N'Schema', @level0name = N'Dbo',
    @level1type = N'Table', @level1name = N'Constant',
    @level2type = N'Column', @level2name = N'nConstantStatus';

SET NOCOUNT OFF;