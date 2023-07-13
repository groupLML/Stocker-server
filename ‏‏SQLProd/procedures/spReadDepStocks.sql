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
-- Create date: <27/02/2023>
-- Description:	<Read Dep Stocks>
-- =============================================
ALTER PROCEDURE spReadDepStocks
     @depId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Stocks].medId, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', sum(stcQty) as 'stcQty'
	FROM [Stocks] inner join [Medicines]
	on [Stocks].medId=[Medicines].medId
	where depId=@depId
	group by [Stocks].medId, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given
	

END
GO
