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
-- Description:	<Read PullMedOrders>
-- =============================================
ALTER PROCEDURE spReadPullMedOrders

      @depId smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT O.pullId as 'orderId', nUser as 'nurseId', NU.firstName+' '+NU.lastName AS 'nurseName', O.depId, depName, 
	        pUser as 'pharmacistId', PU.firstName+' '+PU.lastName AS 'pharmacistName',
			M.medId, genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', 
			poQty, supQty, reportNum, pullStatus as 'orderStatus', pullDate as 'orderDate'
	 FROM [PullOrders] as O inner join [PullMedOrders] as MO
	      on O.pullId= MO.pullId inner join [Medicines] as M
		  on MO.medId=M.medId inner join [Users] as NU 
	      on NU.userId= O.nUser inner join [Departments] as D 
	      on NU.depId= D.depId inner join [Users] as PU 
	      on PU.userId= O.pUser
	 where O.depId= @depId
END
GO

SELECT *
	 FROM [PullOrders]