USE [XCLCMS]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 04/11/2015 17:44:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentsID] [bigint] NOT NULL,
	[ObjectType] [char](3) NOT NULL,
	[FK_ObjectID] [bigint] NULL,
	[ParentCommentID] [bigint] NOT NULL,
	[GoodCount] [int] NOT NULL,
	[MiddleCount] [int] NOT NULL,
	[BadCount] [int] NOT NULL,
	[Contents] [nvarchar](2000) NULL,
	[VerifyState] [char](3) NOT NULL,
	[Remark] [nvarchar](200) NULL,
	[RecordState] [char](1) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreaterID] [bigint] NOT NULL,
	[CreaterName] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NOT NULL,
	[UpdaterID] [bigint] NOT NULL,
	[UpdaterName] [nvarchar](50) NULL,
 CONSTRAINT [PK_COMMENTS] PRIMARY KEY CLUSTERED 
(
	[CommentsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_ObjectType] ON [dbo].[Comments] 
(
	[ObjectType] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecordState] ON [dbo].[Comments] 
(
	[RecordState] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_VerifyState] ON [dbo].[Comments] 
(
	[VerifyState] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CommentsID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'CommentsID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被评论对象类别(ObjectTypeEnum)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'ObjectType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'被评论对象ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'FK_ObjectID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'上级评论' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'ParentCommentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点【好】数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'GoodCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点【中】数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'MiddleCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'点【差】数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'BadCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'Contents'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核状态(VerifyStateEnum)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'VerifyState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录状态(RecordStateEnum)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'RecordState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'CreaterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'CreaterName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'UpdaterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments', @level2type=N'COLUMN',@level2name=N'UpdaterName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'评论表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Comments'
GO
