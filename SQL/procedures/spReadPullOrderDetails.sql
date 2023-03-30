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
-- Create date: <28-02-2023>
-- Description:	<Read PullOrderDetails>
-- =============================================
CREATE PROCEDURE spReadPullOrderDetails

      @orderId smallint, 
      @depId smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT M.medId, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', poQty, supQty
	 FROM [PullOrders] as PO inner join [PullMedOrders] as MO
	      on PO.pullId= MO.pullId inner join [Medicines] as M
		  on MO.medId=M.medId 
	 where PO.depId= @depId and PO.pullId=@orderId
END
GO

