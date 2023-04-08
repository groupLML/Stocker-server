USE [igroup136_test1]
GO
/****** Object:  StoredProcedure [dbo].[spReadPullOrdersMine]    Script Date: 08/04/2023 18:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<LML>
-- Create date: <28-02-2023>
-- Description:	<Read PullMedOrders>
-- =============================================
ALTER PROCEDURE [dbo].[spReadPullOrdersMine]

      @depId smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT PO.pullId as 'orderId', nUser as 'nurseId', NU.firstName+' '+NU.lastName AS 'nurseName',
	        pUser as 'pharmacistId', PU.firstName+' '+PU.lastName AS 'pharmacistName',
			pullStatus as 'orderStatus', pullDate as 'orderDate', lastUpdate
	 FROM [PullOrders] as PO inner join [Users] as NU
	      on NU.userId= PO.nUser inner join [Users] as PU 
	      on PU.userId= PO.pUser
	 where PO.depId= @depId 
	 order by PO.lastUpdate desc
END
