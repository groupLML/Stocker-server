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
ALTER PROCEDURE spDashboardPieChart
	-- Add the parameters for the stored procedure here
	@depId smallint,
	@medId smallint,
	@month smallint,
	@year char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
	select TOP(5) depName, sum(useQty) as totalQty
	from Usages U inner Join MedUsages MU on U.usageId=MU.usageId inner join 
	     Departments D on U.depId=D.depId
	where medId=@medId and (month(lastUpdate)=@month and YEAR(lastUpdate)= @year)
	group by medId, U.depId, depName, month(lastUpdate), YEAR(lastUpdate)
	order by totalQty desc

END
GO

 --   select *
	--from Usages U inner Join MedUsages MU on U.usageId=MU.usageId inner join 
	--     Departments D on U.depId=D.depId
	--where medId=1 and (month(lastUpdate)=5 and YEAR(lastUpdate)= 2023)
	----group by medId, depId, month(lastUpdate), YEAR(lastUpdate)
	--order by totalQty desc

	--select depName, sum(useQty) as totalQty
	--from Usages U inner Join MedUsages MU on U.usageId=MU.usageId inner join 
	--     Departments D on U.depId=D.depId
	--where medId=1 and (month(lastUpdate)=5 and YEAR(lastUpdate)= 2023)
	--group by medId, U.depId, depName, month(lastUpdate), YEAR(lastUpdate)
	--order by totalQty desc