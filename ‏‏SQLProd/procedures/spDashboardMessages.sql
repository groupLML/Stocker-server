-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE spDashboardMessages
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
	 with temp as (
	 select medId, depId, sum(stcQty) as qty, max(entryDate) as dateM
	 from Stocks
	 group by medId, depId
	 having sum(stcQty)<=5)
	
	 SELECT N'הודעה חדשה' as titleM, N'מאת ' + U.firstName +' '+ U.lastName as textM, 1 as typeM,  msgDate as dateTemp,
	        case when (Datediff(minute, msgDate, GETDATE())<60 and Datediff(day, msgDate , GETDATE())=0) then CAST(Datediff(minute, msgDate, GETDATE()) AS nvarchar(5)) + N' דקה' 
			     when (Datediff(minute, msgDate, GETDATE())>=60 and Datediff(day, msgDate, GETDATE())=0) then CAST(Datediff(HOUR, msgDate, GETDATE()) AS nvarchar(5)) + N' שעה' 
			     else CAST(Datediff(day, msgDate , GETDATE()) AS nvarchar(5)) +N' יום' 
			end as dateM, msgId as idM  
	 FROM [Messages] as M inner join [Users] as U on M.userId=U.userId
	 where Datediff(day, msgDate, GETDATE()) < 7
	 union 
	 SELECT N'בקשה חדשה לעדכון תקן' as titleM, N'עבור מחלקה ' +depName+ N' מאת ' + U.firstName +' '+ U.lastName as textM, 2 as typeM,  reqDate as dateTemp,
	        case when (Datediff(minute, reqDate, GETDATE())<60 and Datediff(day, reqDate , GETDATE())=0) then CAST(Datediff(minute, reqDate, GETDATE()) AS nvarchar(5)) + N' דקה' 
			     when (Datediff(minute, reqDate, GETDATE())>=60 and Datediff(day, reqDate, GETDATE())=0) then CAST(Datediff(HOUR, reqDate, GETDATE()) AS nvarchar(5)) + N' שעה' 
			     else CAST(Datediff(day, reqDate , GETDATE()) AS nvarchar(5)) +N' יום' 
			end as dateM, reqId as idM 
	 from NormRequests NR inner join Norms N on NR.normId=N.normId inner join 
	      Departments D on N.depId=D.depId inner join [Users] as U on NR.userId=U.userId
	 where Datediff(day, reqDate, GETDATE()) < 7 and  reqStatus like 'W'
	 union 
	 SELECT N'מלאי מחלקה התרוקן' as titleM, N'מחלקה ' +D.depName as textM, 3 as typeM, min(dateM) as dateTemp,
	        case when (Datediff(minute, min(dateM), GETDATE())<60 and Datediff(day, min(dateM) , GETDATE())=0) then CAST(Datediff(minute, min(dateM), GETDATE()) AS nvarchar(5)) + N' דקה' 
			     when (Datediff(minute, min(dateM), GETDATE())>=60 and Datediff(day, min(dateM), GETDATE())=0) then CAST(Datediff(HOUR, min(dateM), GETDATE()) AS nvarchar(5)) + N' שעה' 
			     else CAST(Datediff(day, min(dateM) , GETDATE()) AS nvarchar(5)) +N' יום' 
			end as dateM, D.depId as idM  
	from temp inner join Departments D on temp.depId=D.depId
	 where Datediff(day, dateM, GETDATE()) < 7 
	 group by D.depId, D.depName
	 order by dateTemp desc


END
GO


  --   SELECT N'הודעה חדשה' as titleM, N'מאת ' + U.firstName +' '+ U.lastName as textM, 1 as typeM,
  --     case when (Datediff(day, msgDate, GETDATE())=0) then CAST(Datediff(minute, msgDate, GETDATE()) AS nvarchar(5)) + N' דקה' 
	 --       when (Datediff(minute, msgDate, GETDATE())>=60 and Datediff(day, msgDate, GETDATE())=0) then CAST(Datediff(HOUR, msgDate, GETDATE()) AS nvarchar(5)) + N' שעה' 
		--	else CAST(Datediff(day, msgDate, GETDATE()) AS nvarchar(5)) +N' יום' 
		--	end as dateM
	 --FROM [Messages] as M inner join [Users] as U on M.userId=U.userId
	 --where Datediff(day, msgDate, GETDATE()) < 7


	 -- SELECT N'בקשה חדשה לעדכון תקן' as titleM, N'עבור מחלקה ' +depName+ N' מאת ' + U.firstName +' '+ U.lastName as textM, 2 as typeM, reqDate, Datediff(minute, reqDate, GETDATE()),
	 --       case when (Datediff(minute, reqDate, GETDATE())<60 and Datediff(day, reqDate , GETDATE())=0) then CAST(Datediff(minute, reqDate, GETDATE()) AS nvarchar(5)) + N' דקה' 
		--	     when (Datediff(minute, reqDate, GETDATE())>=60 and Datediff(day, reqDate, GETDATE())=0) then CAST(Datediff(HOUR, reqDate, GETDATE()) AS nvarchar(5)) + N' שעה' 
		--	     else CAST(Datediff(day, reqDate , GETDATE()) AS nvarchar(5)) +N' יום' 
		--	end as dateM 
	 --from NormRequests NR inner join Norms N on NR.normId=N.normId inner join 
	 --     Departments D on N.depId=D.depId inner join [Users] as U on NR.userId=U.userId
	 --where Datediff(day, reqDate, GETDATE()) < 7
