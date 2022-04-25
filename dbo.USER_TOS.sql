
CREATE TABLE USER_TOS (
	SUID	VARCHAR(18)	NOT NULL,
	SERVICE_TOS_YN	CHAR(1)	NOT NULL,
	USER_INFO_YN	CHAR(1)	NOT NULL,
	LOCATION_INFO_YN	CHAR(1)	NOT NULL,
	AGE_COLLECTION_YN	CHAR(1)	NOT NULL,
	MARKETING_YN	CHAR(1)	NULL
);

-- ����  ��ȸ�ϰų� �����ϴ� ���񽺴� ����.
-- ���常 ��.
ALTER TABLE USER_TOS ADD CONSTRAINT PK_USER_TOS PRIMARY KEY CLUSTERED (
	SUID
) WITH FILLFACTOR = 90;

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����� ����ũ ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���� �̿��� ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'SERVICE_TOS_YN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�������� ���� �� �̿� ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'USER_INFO_YN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��ġ���� ���� �� �̿� ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'LOCATION_INFO_YN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�� 14�� �̻� ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'AGE_COLLECTION_YN';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'������ ���� ���� ����' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_TOS', @level2type=N'COLUMN',@level2name=N'MARKETING_YN';

