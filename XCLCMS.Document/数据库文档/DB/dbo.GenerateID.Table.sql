USE [XCLCMS]
GO
/****** Object:  Table [dbo].[GenerateID]    Script Date: 04/11/2015 17:44:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GenerateID](
	[IDType] [char](3) NOT NULL,
	[IDValue] [bigint] NOT NULL,
	[IDCode] [bigint] NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [nvarchar](100) NULL,
 CONSTRAINT [PK_GENERATEID] PRIMARY KEY CLUSTERED 
(
	[IDType] ASC,
	[IDValue] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID类型(IDTypeEnum)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GenerateID', @level2type=N'COLUMN',@level2name=N'IDType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生成的ID值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GenerateID', @level2type=N'COLUMN',@level2name=N'IDValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'唯一值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GenerateID', @level2type=N'COLUMN',@level2name=N'IDCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GenerateID', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GenerateID', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID生成表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GenerateID'
GO
