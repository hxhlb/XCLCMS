USE [XCLCMS]
GO
/****** Object:  StoredProcedure [dbo].[sp_SysRole_ADD]    Script Date: 04/11/2015 17:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SysRole_ADD]
@SysRoleID bigint,
@ParentID bigint,
@RoleName nvarchar(50),
@Code varchar(50),
@Sort int,
@Weight int,
@Remark varchar(1000),
@RecordState char(1),
@CreateTime datetime,
@CreaterID bigint,
@CreaterName nvarchar(50),
@UpdateTime datetime,
@UpdaterID bigint,
@UpdaterName nvarchar(50),

@ResultCode INT OUTPUT,
@ResultMessage NVARCHAR(1000) OUTPUT

 AS 
BEGIN

	BEGIN TRY
		INSERT INTO [SysRole](
		[SysRoleID],[ParentID],[RoleName],[Code],[Sort],[Weight],[Remark],[RecordState],[CreateTime],[CreaterID],[CreaterName],[UpdateTime],[UpdaterID],[UpdaterName]
		)VALUES(
		@SysRoleID,@ParentID,@RoleName,@Code,@Sort,@Weight,@Remark,@RecordState,@CreateTime,@CreaterID,@CreaterName,@UpdateTime,@UpdaterID,@UpdaterName
		)
		SET @ResultCode=1
	END TRY
	BEGIN CATCH
		set @ResultMessage= ERROR_MESSAGE() 
		SET @ResultCode=0
	END CATCH

END
GO
