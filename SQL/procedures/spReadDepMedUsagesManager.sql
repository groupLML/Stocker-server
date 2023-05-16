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
-- Author:		<LML>
-- Create date: <28/02/2023>
-- Description:	<Read Dep MedUsages Manager>
-- =============================================
ALTER PROCEDURE spReadDepMedUsagesManager
     @depId smallint,
	 @startDate datetime,
	 @endDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT MU.medId,mazNum, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', sum(useQty) as 'useQty'
	FROM [Usages] U inner join [MedUsages] MU
         on U.usageId=MU.usageId inner join [Medicines] M
         on MU.medId=M.medId 
	where U.depId= @depId and (U.lastUpdate>=@startDate and U.lastUpdate<=@endDate)
	group by MU.medId,mazNum,genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given


END
GO

--select U.usageId, reportNum, MU.medId, mazNum, 
--       genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', MU.useQty, U.lastUpdate
--FROM [Usages] U inner join [MedUsages] MU
--	 on U.usageId=MU.usageId inner join [Medicines] M
--	 on MU.medId=M.medId 
--where U.depId= 3 
--order by U.lastUpdate desc

	
