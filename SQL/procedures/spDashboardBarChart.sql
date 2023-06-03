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
CREATE PROCEDURE spDashboardBarChart
	-- Add the parameters for the stored procedure here
	@depId smallint,
	@medId smallint,
	@year smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
declare @countCurrentPO smallint, @countPreviousPO smallint, @countCurrentMR smallint, @countPreviousMR smallint,
	        @countCurrentMRD smallint, @countPreviousMRD smallint

	Select @countCurrentPO= count(*), @countPreviousPO= (select count(*)
	                                                     from [PullOrders] as PO
	                                                     where PO.pullDate<=(getdate()-@interval) and PO.pullDate>=getdate()-@interval*2)
	from [PullOrders] as PO
	where datediff(day,PO.pullDate,getdate())<=


	Select @countCurrentMR=count(*), @countPreviousMR=(select count(*)
	                                                   from [MedRequests] MR
	                                                   where MR.reqDate<=(getdate()-@interval) and MR.reqDate>=getdate()-@interval*2)
	from [MedRequests] MR
	where MR.reqStatus like 'T' and datediff(day,MR.reqDate,getdate())<=@interval


	Select @countCurrentMRD=count(*), @countPreviousMRD=(select count(*)
	                                                     from [MedRequests] MR
	                                                     where MR.reqStatus like 'D' and 
													          (MR.reqDate<=(getdate()-@interval) and MR.reqDate>=getdate()-@interval*2))
	from [MedRequests] MR
	where MR.reqStatus like 'D' and datediff(day,MR.reqDate,getdate())<=@interval


	select @countCurrentPO as CurrentPO, 
	       @countPreviousPO as PrevPO, 
		   @countCurrentMR as CurrentMR,
		   @countPreviousMR as PrevMR,
		   @countCurrentMRD as CurrentMRD,
		   @countPreviousMRD as PrevMRD


END
GO


select *
from PullOrders as PO inner join PullMedOrders as PMO
on PO.pullId=PMO.orderId
where medId=1 and depId=4 and pullStatus like 'I'

select *
from PushOrders as PO inner join PushMedOrders as PMO
on PO.pushId=PMO.orderId
where medId=1 and depId=4 