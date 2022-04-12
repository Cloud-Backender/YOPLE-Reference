
CREATE TABLE PLACE (
	PLACE_ID	VARCHAR(20)	NOT NULL,
	NAME	VARCHAR(200)	NOT NULL,
	ADDRESS	VARCHAR(200)	NOT NULL,
	ROAD_ADDRESS	VARCHAR(200)	NOT NULL,
	CATEGORY_GROUP_CODE	VARCHAR(10)	NOT NULL,
	CATEGORY_GROUP_NAME	VARCHAR(50)	NOT NULL,
	X	DECIMAL(16,13)	NOT NULL,
	Y	DECIMAL(16,14)	NOT NULL
);

ALTER TABLE PLACE ADD CONSTRAINT PK_PLACE PRIMARY KEY NONCLUSTERED (
	PLACE_ID
);

CREATE CLUSTERED INDEX [CL_PLACE_COL_X_Y] ON PLACE (X,Y)


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��� ���� ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLACE', @level2type=N'COLUMN',@level2name=N'PLACE_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ȣ��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLACE', @level2type=N'COLUMN',@level2name=N'NAME';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ּ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLACE', @level2type=N'COLUMN',@level2name=N'ADDRESS';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���θ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLACE', @level2type=N'COLUMN',@level2name=N'ROAD_ADDRESS';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׷� �ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLACE', @level2type=N'COLUMN',@level2name=N'CATEGORY_GROUP_CODE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�׷� �̸�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLACE', @level2type=N'COLUMN',@level2name=N'CATEGORY_GROUP_NAME';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'X��ǥ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLACE', @level2type=N'COLUMN',@level2name=N'X';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Y��ǥ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PLACE', @level2type=N'COLUMN',@level2name=N'Y';
