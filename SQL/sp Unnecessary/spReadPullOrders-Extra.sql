USE [igroup136_test1]
GO
/****** Object:  StoredProcedure [dbo].[spReadPullOrders]    Script Date: 08/04/2023 17:59:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<LML>
-- Create date: <28-02-2023>
-- Description:	<Read PullOrders>
-- =============================================
ALTER PROCEDURE [dbo].[spReadPullOrders]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 SELECT O.pullId as 'O.PullId', nUser, U2.firstName+' '+U2.lastName AS 'nurseName', pUser, 
	        CASE WHEN (pUser=0) THEN ''
			     else U1.firstName+' '+U1.lastName 
				 end as 'pharmName', 
	        O.depId, depName, reportNum, O.lastUpdate,
			CASE WHEN (pullStatus like 'W') THEN N'בהמתנה'
			     WHEN (pullStatus like 'T') THEN N'בטיפול'
				 WHEN (pullStatus like 'I') THEN N'נופק'
				 end as pullStatus, 
			cast(pullDate as date) as 'orderDate', CONVERT(NVARCHAR, pullDate, 8) as 'orderTime', MO.orderId as 'MO.PullId', MO.[medId],
			MO.medId AS 'medId', genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', poQty, supQty, MO.mazNum
	 FROM [PullOrders] as O INNER JOIN [PullMedOrders] as MO
	      on O.pullId= MO.orderId INNER JOIN [Medicines]
          ON MO.[medId] = Medicines.[medId] INNER JOIN [Users] as U1
		  ON U1.[userId] = O.[pUser] INNER JOIN [Departments] 
		  ON O.[depId] = Departments.[depId] INNER JOIN [Users] as U2
		  ON U2.[userId] = O.[nUser]
	 order by O.pullId desc, O.lastUpdate desc
END
