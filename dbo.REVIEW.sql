CREATE TABLE REVIEW (
	REVIEW_ID	BIGINT	IDENTITY(1,1) NOT NULL,
	PLACE_ID	VARCHAR(20)	NOT NULL,
	USER_SUID	VARCHAR(18)	NOT NULL,
	CONTENT	VARCHAR(1000)	NOT NULL,
	IMG_URL	VARCHAR(100)	NULL,
	CREATE_DT	DATETIME	NOT NULL,
	UPDATE_DT	DATETIME	NOT NULL
);

ALTER TABLE REVIEW ADD CONSTRAINT PK_REVIEW PRIMARY KEY NONCLUSTERED (
	REVIEW_ID
);

ALTER TABLE REVIEW ADD CONSTRAINT FK_PLACE_TO_REVIEW_1 FOREIGN KEY (
	PLACE_ID
)
REFERENCES PLACE (
	PLACE_ID
);

ALTER TABLE REVIEW ADD CONSTRAINT FK_USER_TO_REVIEW_1 FOREIGN KEY (
	USER_SUID
)
REFERENCES USER_INFO (
	SUID
);

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���� ���� ���̵� IDENTITY VALUE' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'REVIEW_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'��� ���� ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'PLACE_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'����� ����ũ ID (MPS+��+��+��+�ڵ�����ȣ)' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���� ���� �ִ� 500��' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'CONTENT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���� ���� ��� URL' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'IMG_URL';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���� ��¥' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'���� ��¥' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'REVIEW', @level2type=N'COLUMN',@level2name=N'UPDATE_DT';
