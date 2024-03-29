USE [XCLCMS]
GO
/****** Object:  StoredProcedure [dbo].[sp_Sys_GetFunctionEnumList]    Script Date: 04/11/2015 17:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_Sys_GetFunctionEnumList] AS 
--生成模块功能的c# 枚举
BEGIN

DECLARE @str VARCHAR(MAX)=''
DECLARE @br VARCHAR(2)=char(13)+char(10)

;WITH FuncInfo AS (
	SELECT
	*,
	(
		SELECT TOP 1 FunctionName FROM dbo.SysFunction AS b WHERE b.SysFunctionID=a.ParentID
	) AS ParentName
	FROM dbo.v_SysFunction AS a WHERE a.IsLeaf=1 AND a.RecordState='N'
)
SELECT
@str=@str+('/// <summary>'+@br+'///'+ (ISNULL(ParentName,'')+'-'+ISNULL(FunctionName,''))+@br+'/// </summary>'+@br+'[Description("'+(ISNULL(ParentName,'')+'-'+ISNULL(FunctionName,''))+'")]'+@br+ISNULL(code,'') +'=' +CAST(SysFunctionID AS VARCHAR)+',')+@br
FROM FuncInfo ORDER BY ParentID ASC

PRINT @str

end
GO
