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
ALTER PROCEDURE spReadDataPredictions
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
select month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear,
	       case when (month(U.lastUpdate) in (9,10,11)) then '1' --סתיו
		        when (month(U.lastUpdate) in (12,1,2)) then '2' --חורף
				when (month(U.lastUpdate) in (3,4,5)) then '3'-- אביב
				else '4' --קיץ
				end as season,
			    sum(useQty) as futureUsage
	from Usages U inner join MedUsages MU
	     on U.usageId= MU.usageId
	where MU.medId=@medId and U.depId=@depId and DATEFROMPARTS(year(U.lastUpdate),month(U.lastUpdate),1) != DATEFROMPARTS(year(GETDATE()),month(GETDATE()),1)
	group by MU.medId, month(U.lastUpdate), year(U.lastUpdate)
)

select  case when (t2.futureUsage IS NULL) then 0 
			 else t2.futureUsage
			 end as usageOneMonthAgo,
        case when (t3.futureUsage IS NULL) then 0 
			 else t3.futureUsage
			 end as usageOneYearAgo,
        t1.season, t1.futureUsage
from temp t1 left outer join temp t2
     on (t1.useMonth-1)=t2.useMonth and t1.useYear=t2.useYear
	 left outer join temp t3
	 on t1.useMonth=t3.useMonth and (t1.useYear-1)=t3.useYear
	 where t3.futureUsage IS NOT NULL and t2.futureUsage IS NOT NULL 

END
GO

--select *
----from Usages U inner join MedUsages MU
----	     on U.usageId= MU.usageId inner join MedNorms MN
----		 on MU.medId= MN.medId inner join Norms N
----		 on N.normId=MN.normId
----	where MN.medId=1 and N.depId=3
--select *
--from  MedNorms MN inner join Norms N
--		 on N.normId=MN.normId
--	where N.depId=3


--select month(lastUpdate), t1.previousUsage, t3.previousYearUsage,
--	       case when (month(lastUpdate) in (9,10,11)) then N'סתיו'
--		        when (month(lastUpdate) in (12,1,2)) then N'חורף'
--				when (month(lastUpdate) in (3,4,5)) then N'אביב'
--				else N'קיץ'
--				end as season, t2.futureUsage
--	from Usages U1 inner join MedUsages MU
--	     on U1.usageId= MU.usageId inner join (select MU.medId,sum(useQty) as previousUsage
--		                                       from Usages U2 inner join MedUsages MU
--	                                               on U2.usageId= MU.usageId
--											   group by MU.medId, month(lastUpdate),year(lastUpdate)) as t1
--         on MU.medId= t1.medId inner join (select MU.medId,sum(useQty) as futureUsage
--		                                   from Usages U3 inner join MedUsages MU
--	                                               on U3.usageId= MU.usageId
--										   group by MU.medId, month(lastUpdate),year(lastUpdate)) as t2
--         on MU.medId= t2.medId inner join (select MU.medId,sum(useQty) as previousYearUsage
--		                                   from Usages U4 inner join MedUsages MU
--	                                               on U4.usageId= MU.usageId
--										   group by MU.medId, month(lastUpdate),year(lastUpdate)) as t3
--         on MU.medId= t3.medId





--select month(lastUpdate), t1.previousUsage, 
--	       case when (month(lastUpdate) in (9,10,11)) then N'סתיו'
--		        when (month(lastUpdate) in (12,1,2)) then N'חורף'
--				when (month(lastUpdate) in (3,4,5)) then N'אביב'
--				else N'קיץ'
--				end as season
--	from Usages U1 inner join MedUsages MU
--	     on U1.usageId= MU.usageId inner join (select U2.usageId,MU.medId,sum(useQty) as previousUsage
--		                                       from Usages U2 inner join MedUsages MU
--	                                               on U2.usageId= MU.usageId
--											   group by MU.medId, month(lastUpdate),year(lastUpdate), U2.usageId) as t1
--         on MU.medId= t1.medId 

	
--	select *, month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear,
--			    useQty
--	from Usages U inner join MedUsages MU
--	     on U.usageId= MU.usageId inner join MedNorms MN
--		 on MU.medId= MN.medId inner join Norms N
--		 on N.normId=MN.normId 
--	where MU.medId=1 and U.depId=3 and DATEFROMPARTS(year(U.lastUpdate),month(U.lastUpdate),1) != DATEFROMPARTS(year(GETDATE()),month(GETDATE()),1)
--	group by MU.medId, month(U.lastUpdate), year(U.lastUpdate)


--	Select *
--from [MedUsages] inner join [Usages] on [MedUsages].usageId = [Usages].usageId
--where medId=4 and depId=3 and year(lastUpdate) =2020
--order by [Usages].usageId desc


--	Select *
--from MedNorms MN inner join Norms N
--		 on N.normId=MN.normId
--where medId=4 and depId=3 and year(lastUpdate) =2020
--order by MN.normId desc


--with temp as (
--select month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear,
--	       case when (month(U.lastUpdate) in (9,10,11)) then '1' --סתיו
--		        when (month(U.lastUpdate) in (12,1,2)) then '2' --חורף
--				when (month(U.lastUpdate) in (3,4,5)) then '3'-- אביב
--				else '4' --קיץ
--				end as season,
--			    sum(useQty) as futureUsage
--	from Usages U inner join MedUsages MU
--	     on U.usageId= MU.usageId inner join MedNorms MN
	--	 on MU.medId= MN.medId inner join Norms N
	--	 on N.normId=MN.normId
	--where MN.medId=4 and U.depId=3 and DATEFROMPARTS(year(U.lastUpdate),month(U.lastUpdate),1) != DATEFROMPARTS(year(GETDATE()),month(GETDATE()),1)
--	group by MU.medId, month(U.lastUpdate), year(U.lastUpdate)
--)

--select  case when (t2.futureUsage IS NULL) then 0 
--			 else t2.futureUsage
--			 end as usageOneMonthAgo,
--        case when (t3.futureUsage IS NULL) then 0 
--			 else t3.futureUsage
--			 end as usageOneYearAgo,
--        t1.season, t1.futureUsage
--from temp t1 left outer join temp t2
--     on (t1.useMonth-1)=t2.useMonth and t1.useYear=t2.useYear
--	 left outer join temp t3
--	 on t1.useMonth=t3.useMonth and (t1.useYear-1)=t3.useYear
--	 where t3.futureUsage IS NOT NULL and t2.futureUsage IS NOT NULL 


--with temp as (
--select month(U.lastUpdate) as useMonth, year(U.lastUpdate) as useYear,
--	       case when (month(U.lastUpdate) in (9,10,11)) then '1' --סתיו
--		        when (month(U.lastUpdate) in (12,1,2)) then '2' --חורף
--				when (month(U.lastUpdate) in (3,4,5)) then '3'-- אביב
--				else '4' --קיץ
--				end as season,
--			    sum(useQty) as futureUsage
--	from Usages U inner join MedUsages MU
--	     on U.usageId= MU.usageId
--	where MU.medId=7 and U.depId=4 and DATEFROMPARTS(year(U.lastUpdate),month(U.lastUpdate),1) != DATEFROMPARTS(year(GETDATE()),month(GETDATE()),1)
--	group by MU.medId, month(U.lastUpdate), year(U.lastUpdate)
--)

--select  case when (t2.futureUsage IS NULL) then 0 
--			 else t2.futureUsage
--			 end as usageOneMonthAgo,
--        case when (t3.futureUsage IS NULL) then 0 
--			 else t3.futureUsage
--			 end as usageOneYearAgo,
--        t1.season, t1.futureUsage
--from temp t1 left outer join temp t2
--     on (t1.useMonth-1)=t2.useMonth and t1.useYear=t2.useYear
--	 left outer join temp t3
--	 on t1.useMonth=t3.useMonth and (t1.useYear-1)=t3.useYear
--	 where t3.futureUsage IS NOT NULL and t2.futureUsage IS NOT NULL 
