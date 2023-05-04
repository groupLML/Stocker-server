USE [igroup136_test1]
GO
/****** Object:  StoredProcedure [dbo].[spReadPushOrders]    Script Date: 08/04/2023 18:02:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<LML>
-- Create date: <28-02-2023>
-- Description:	<Read PushOrdersPharm>
-- =============================================
CREATE PROCEDURE [dbo].[spReadPushOrdersPharm]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT pushId, cast(pushDate as smalldatetime) as 'orderDate', CONVERT(NVARCHAR, pushDate, 8) as 'orderTime', 
	        O.depId, depName, pUser, 
	        CASE WHEN (pUser=0) THEN ''
			     else U1.firstName+' '+U1.lastName 
				 end as 'pharmName', 
			CASE WHEN (pushStatus like 'R') THEN N'שוריין'
				 WHEN (pushStatus like 'I') THEN N'נופק'
				 end as pushStatus, reportNum, O.lastUpdate
	 FROM [PushOrders] as O INNER JOIN [Users] as U1
		  ON U1.[userId] = O.[pUser] INNER JOIN [Departments] 
		  ON O.[depId] = Departments.[depId] 
	 order by O.pushId desc, O.lastUpdate desc
END
