USE [XCLCMS]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 04/11/2015 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tags](
	[TagsID] [bigint] NOT NULL,
	[TagName] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
	[RecordState] [char](1) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreaterID] [bigint] NOT NULL,
	[CreaterName] [nvarchar](50) NULL,
	[UpdateTime] [datetime] NOT NULL,
	[UpdaterID] [bigint] NOT NULL,
	[UpdaterName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TAGS] PRIMARY KEY CLUSTERED 
(
	[TagsID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_RecordState] ON [dbo].[Tags] 
(
	[RecordState] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TagName] ON [dbo].[Tags] 
(
	[TagName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'TagsID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'TagsID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'TagName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录状态(RecordStateEnum)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'RecordState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'CreaterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'CreaterName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'UpdaterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新人名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags', @level2type=N'COLUMN',@level2name=N'UpdaterName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标签表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Tags'
GO
