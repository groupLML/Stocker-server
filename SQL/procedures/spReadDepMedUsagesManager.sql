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
     @depId smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
    SELECT [MedUsages].medId,mazNum, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', sum(useQty) as 'useQty'
	FROM [MedUsages] inner join [Medicines]
	     on [MedUsages].medId=[Medicines].medId inner join [Usages]
	     on [MedUsages].usageId=[Usages].usageId
	where [Usages].depId=@depId
	group by [MedUsages].medId,mazNum,genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given


END
GO

