USE [XCLCMS]
GO
/****** Object:  StoredProcedure [dbo].[sp_SysRoleFunction_ADD]    Script Date: 04/11/2015 17:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_SysRoleFunction_ADD]
@FK_SysRoleID bigint,
@FK_SysFunctionIDXML XML=NULL,

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
	
		BEGIN TRAN trans
		
		/********其它附加处理********/
		BEGIN
			--删除角色的功能
			DELETE FROM dbo.SysRoleFunction WHERE FK_SysRoleID=@FK_SysRoleID
		END
		
		/********解析功能xml及保存信息********/
		BEGIN
			;WITH FunctionIdList AS (
				SELECT 
				T.C.value('text()[1]','bigint') AS functionID
				FROM @FK_SysFunctionIDXML.nodes('//long') AS T(C)
			)
			INSERT INTO dbo.SysRoleFunction( FK_SysRoleID ,FK_SysFunctionID ,RecordState ,CreateTime ,CreaterID ,CreaterName ,UpdateTime , UpdaterID , UpdaterName)
			SELECT @FK_SysRoleID,
			a.functionID,
			@RecordState,
			@CreateTime,
			@CreaterID,
			@CreaterName,
	        @UpdateTime ,
	        @UpdaterID ,
	        @UpdaterName
			FROM FunctionIdList AS a
		END
			
		SET @ResultCode=1
		COMMIT TRAN trans
	END TRY
	BEGIN CATCH
	
		set @ResultMessage= ERROR_MESSAGE() 
		SET @ResultCode=0
		ROLLBACK TRAN trans	
		
	END CATCH 
 
END
GO
