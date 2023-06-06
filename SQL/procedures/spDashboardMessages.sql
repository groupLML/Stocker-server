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
CREATE PROCEDURE spDashboardMessages
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
	
	 SELECT N'הודעה חדשה' as titleM, N'מאת ' + U.firstName +' '+ U.lastName as textM, 1 as typeM, msgDate as dateM
	 FROM [Messages] as M inner join [Users] as U on M.userId=U.userId
	 where Datediff(day, msgDate, GETDATE()) < 7
	 union 
	 SELECT N'בקשה חדשה עדכון תקן' as titleM, N'עבור מחלקה ' +depName+ N' מאת ' + U.firstName +' '+ U.lastName as textM, 2 as typeM, reqDate as dateM
	 from NormRequests NR inner join Norms N on NR.normId=N.normId inner join 
	      Departments D on N.depId=D.depId inner join [Users] as U on NR.userId=U.userId
	 where Datediff(day, reqDate, GETDATE()) < 7
	 union 
	 SELECT N'מלאי מחלקה התרוקן' as titleM, N'מחלקה ' +D.depName as textM, 3 as typeM, min(dateM) as dateM
		 from temp inner join Departments D on temp.depId=D.depId
	 where Datediff(day, dateM, GETDATE()) < 7 
	 group by D.depId, D.depName
	 order by dateM desc


END
GO
