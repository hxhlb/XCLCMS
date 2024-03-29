USE [XCLCMS]
GO
/****** Object:  UserDefinedFunction [dbo].[fun_SysRole_GetLayerListByID]    Script Date: 04/11/2015 17:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fun_SysRole_GetLayerListByID](@sysRoleID BIGINT) RETURNS TABLE AS RETURN
--获取当前角色的所在层级路径名
--如:根目录/子目录/文件

WITH Info1 AS (
	SELECT SysRoleID, ParentID, RoleName FROM dbo.SysRole WHERE SysRoleID=@sysRoleID
	UNION ALL
	SELECT a.SysRoleID, a.ParentID,a.RoleName FROM dbo.SysRole AS a 
	INNER JOIN Info1 AS b ON a.SysRoleID=b.ParentID
)
SELECT SysRoleID, ParentID,RoleName FROM Info1
GO
