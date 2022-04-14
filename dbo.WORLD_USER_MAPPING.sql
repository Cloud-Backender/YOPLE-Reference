CREATE TABLE WORLD_USER_MAPPING (
	USER_SUID	VARCHAR(18)	NOT NULL,
	WORLD_ID	BIGINT	NOT NULL,
	WORLD_USER_CODE	CHAR(6)	NOT NULL,
	WORLD_INVITAION_CODE	CHAR(6)	NOT NULL,
	ACCESS_TIME	DATETIME	NOT NULL,
	CREATE_DT	DATETIME	NOT NULL
);



ALTER TABLE WORLD_USER_MAPPING ADD CONSTRAINT PK_WORLD_USER_MAPPING PRIMARY KEY NONCLUSTERED (
	USER_SUID,
	WORLD_ID
);

CREATE CLUSTERED INDEX FK1_WORLD_USER_MAPPING_COL_CREATEDT  ON WORLD_USER_MAPPING (CREATE_DT)

ALTER TABLE WORLD_USER_MAPPING ADD CONSTRAINT FK_USER_TO_WORLD_USER_MAPPING_1 FOREIGN KEY (
	USER_SUID
)
REFERENCES [USER] (
	SUID
);

ALTER TABLE WORLD_USER_MAPPING ADD CONSTRAINT FK_WORLD_TO_WORLD_USER_MAPPING_1 FOREIGN KEY (
	WORLD_ID
)
REFERENCES WORLD (
	WORLD_ID
);


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����� ����ũ ID (MPS+��+��+��+�ڵ�����ȣ)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Index��' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'WORLD_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���� �� ������� ���� �ڵ� & �ʴ� �ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'WORLD_USER_CODE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���� ����� �ʴ���� �ڵ�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'WORLD_INVITAION_CODE';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���忡 �ֱ� ������ �ð�' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'ACCESS_TIME';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���忡 ������ ��¥' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WORLD_USER_MAPPING', @level2type=N'COLUMN',@level2name=N'CREATE_DT';
