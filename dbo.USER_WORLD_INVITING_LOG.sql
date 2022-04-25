CREATE TABLE USER_WORLD_INVITING_LOG (

    SEQ BIGINT NOT NULL IDENTITY (1,1),
	TARGET_SUID	VARCHAR(18)	NOT NULL,
	USER_SUID	VARCHAR(18)	NOT NULL,
	WORLD_ID	BIGINT	NOT NULL,
	CREATE_DT	DATETIME	NOT NULL,
	UPDATE_DT	DATETIME	NOT NULL,
    INVITING_STATUS CHAR(1) NOT NULL Default ('-'),
    WORLD_USER_CODE CHAR(6) NOT NULL
);

ALTER TABLE USER_WORLD_INVITING_LOG ADD CONSTRAINT PK_USER_WORLD_INVITING_LOG UNIQUE (
    SEQ

);
CREATE NONCLUSTERED INDEX [NC2_INVITING_LOG_COL_SUID_WORLD] ON USER_WORLD_INVITING_LOG (TARGET_SUID, USER_SUID, WORLD_ID)

-- �˸� ��ȸ���� 12�� �˸� ���͸�.
CREATE CLUSTERED INDEX FK_USER_WORLD_INVITING_LOG_COL_CREATEDT ON USER_WORLD_INVITING_LOG (CREATE_DT ASC) WITH FILLFACTOR = 90;

--  ����� �ʴ��ϱ� ���� �� �̹� �ʴ븦 �޾Ҵ��� Ȯ�� �ϴ� ����.
CREATE NONCLUSTERED INDEX [NC1_INVITING_LOG_COL_CODE] ON [USER_WORLD_INVITING_LOG] (	
    USER_SUID,
    WORLD_ID,
    TARGET_SUID
)WITH FILLFACTOR = 90;


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʴ� ����� SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',
@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'TARGET_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʴ��� SUID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'USER_SUID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʴ� ���� ���� ID' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'WORLD_ID';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʴ� ��¥' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'CREATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʴ� ����, ���� ��¥.' , @level0type=N'SCHEMA',
@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'UPDATE_DT';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʴ� ����.' , @level0type=N'SCHEMA',@level0name=N'dbo', 
@level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'INVITING_STATUS';

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'�ʴ��� ���� �ʴ� �ڵ�.' , @level0type=N'SCHEMA',
@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'USER_WORLD_INVITING_LOG', @level2type=N'COLUMN',@level2name=N'WORLD_USER_CODE';
