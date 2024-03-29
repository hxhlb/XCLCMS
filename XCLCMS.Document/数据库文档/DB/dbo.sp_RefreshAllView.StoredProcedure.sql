USE [XCLCMS]
GO
/****** Object:  StoredProcedure [dbo].[sp_RefreshAllView]    Script Date: 04/11/2015 17:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_RefreshAllView] AS
DECLARE MyCursor CURSOR
FOR select Name from dbo.sysobjects where OBJECTPROPERTY(id, N'IsView') = 1 and (not name in ('sysconstraints','syssegments'))  
  
   
DECLARE @name varchar(40) 
OPEN MyCursor 
  
FETCH NEXT FROM MyCursor INTO @name
WHILE (@@fetch_status <> -1) 
BEGIN
 IF (@@fetch_status <> -2) 
 begin
 exec sp_refreshview @name
 end
 FETCH NEXT FROM MyCursor INTO @name
END
  
CLOSE MyCursor 
DEALLOCATE MyCursor
GO
