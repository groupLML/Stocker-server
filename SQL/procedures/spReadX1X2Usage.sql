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
ALTER PROCEDURE spReadX1X2Usage
	-- Add the parameters for the stored procedure here
	@medId smallint,
	@depId smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
with temp as (
    select sum(MU.useQty) as totalUsage,  month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear
	from Usages U inner join MedUsages MU
	     on U.usageId= MU.usageId 
	where MU.medId=@medId and U.depId=@depId and (month(U.lastUpdate)= month(GETDATE())-1 and year(U.lastUpdate)= year(GETDATE()))
	group by MU.medId, month(U.lastUpdate), year(U.lastUpdate)
	UNION
	select sum(MU.useQty) as totalUsage,  month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear
	from Usages U inner join MedUsages MU
	     on U.usageId= MU.usageId 
	where MU.medId=@medId and U.depId=@depId and (month(U.lastUpdate)= month(GETDATE()) and year(U.lastUpdate)= year(GETDATE())-1)
	group by MU.medId, month(U.lastUpdate), year(U.lastUpdate)
)

select t1.totalUsage as usageOneMonthAgo, t2.totalUsage as usageOneYearAgo
from temp t1 left outer join temp t2
	 on t1.useMonth=t2.useMonth-1 and t1.useYear=t2.useYear+1
	 where t1.totalUsage IS NOT NULL and t2.totalUsage IS NOT NULL 
END
GO


	--select *
	--from
 --   (select useQty as totalUsage, CAST(DATEFROMPARTS(year(U.lastUpdate),month(U.lastUpdate),1) AS varchar) as dateUse 
	--from Usages U inner join MedUsages MU
	--     on U.usageId= MU.usageId 
	--where MU.medId=1 and U.depId=3 and (month(U.lastUpdate)= month(GETDATE())-1 and year(U.lastUpdate)= year(GETDATE()))
	--UNION
	--select MU.useQty as totalUsage, CAST(DATEFROMPARTS(year(U.lastUpdate),month(U.lastUpdate),1) AS varchar) as dateUse
	--from Usages U inner join MedUsages MU
	--     on U.usageId= MU.usageId 
	--where MU.medId=1 and U.depId=3 and (month(U.lastUpdate)= month(GETDATE()) and year(U.lastUpdate)= year(GETDATE())-1)) temp
	--pivot (sum(totalUsage) for dateUse in([x1],[x2])) as pivotTable




	--select *, month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear
	--	from Usages U inner join MedUsages MU
	--     on U.usageId= MU.usageId 
	--where MU.medId=1 and U.depId=3
	--order by month(U.lastUpdate), year(U.lastUpdate)

--	with temp as (
--    select sum(MU.useQty) as totalUsage,  month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear
--	from Usages U inner join MedUsages MU
--	     on U.usageId= MU.usageId 
--	where MU.medId=7 and U.depId=4 and (month(U.lastUpdate)= month(GETDATE())-1 and year(U.lastUpdate)= year(GETDATE()))
--	group by MU.medId, month(U.lastUpdate), year(U.lastUpdate)
--	UNION
--	select sum(MU.useQty) as totalUsage,  month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear
--	from Usages U inner join MedUsages MU
--	     on U.usageId= MU.usageId 
--	where MU.medId=7 and U.depId=4 and (month(U.lastUpdate)= month(GETDATE()) and year(U.lastUpdate)= year(GETDATE())-1)
--	group by MU.medId, month(U.lastUpdate), year(U.lastUpdate)
--)

--select t1.totalUsage as usageOneMonthAgo, t2.totalUsage as usageOneYearAgo
--from temp t1 left outer join temp t2
--	 on t1.useMonth=t2.useMonth-1 and t1.useYear=t2.useYear+1
--	 where t1.totalUsage IS NOT NULL and t2.totalUsage IS NOT NULL 