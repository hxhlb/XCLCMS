USE [XCLCMS]
GO
/****** Object:  UserDefinedFunction [dbo].[fun_SysDic_GetAllUnderListByCode]    Script Date: 04/11/2015 17:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fun_SysDic_GetAllUnderListByCode](@Code VARCHAR(50)) RETURNS TABLE AS RETURN
--递归获取指定code下的所有列表
WITH Info1 AS (
	SELECT * FROM dbo.v_SysDic WHERE RecordState='N' AND ParentID=(
		SELECT SysDicID FROM dbo.SysDic WHERE Code=@Code
	)
),Info2 AS (
	SELECT * FROM Info1
	UNION ALL
	SELECT a.* FROM dbo.v_SysDic AS a
	INNER JOIN Info2 AS b ON a.ParentID=b.SysDicID AND a.RecordState='N'
)
SELECT * FROM Info2
GO
