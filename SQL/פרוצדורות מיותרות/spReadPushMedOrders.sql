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
-- Description:	<Read PushMedOrders>
-- =============================================
ALTER PROCEDURE spReadPushMedOrders

      @depId smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT O.pushId as 'orderId', O.depId, depName, pUser as 'pharmacistId', firstName+' '+lastName AS 'pharmacistName',
			M.medId, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', 
			poQty, supQty, reportNum, pushStatus as 'orderStatus', pushDate as 'orderDate', O.lastUpdate
	 FROM [PushOrders] as O inner join [PushMedOrders] as MO
	      on O.pushId= MO.orderId inner join [Medicines] as M
		  on MO.medId=M.medId inner join [Users] as U 
	      on U.userId= O.pUser inner join [Departments] as D 
	      on U.depId= D.depId 
	 where O.depId= @depId
END
GO

