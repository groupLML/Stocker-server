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
ALTER PROCEDURE spDashboardBarChart
	-- Add the parameters for the stored procedure here
	@depId smallint,
	@medId smallint,
	@month smallint,
	@year char(4)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @SupPullPO smallint, @NotSupPullPO smallint, @SupPushPO smallint, @NotSupPushPO smallint,
	        @SupMR smallint, @usageQty smallint--, @WaitMR smallint

    --כמות שסופקה מהזמנות משיכה
    select @SupPullPO= sum(supQty)
    from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
    where medId=@medId and depId=@depId and (month(pullDate)=@month and YEAR(pullDate)= @year)
   
    -- כמות שלא סופקה מהזמנות משיכה שסופקו
	select @NotSupPullPO= sum(poQty-supQty)
    from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
    where medId=@medId and depId=@depId and (month(pullDate)=@month and YEAR(pullDate)= @year) and pullStatus='I'
   

    --כמות שסופקה מהזמנות דחיפה
    select @SupPushPO= sum(supQty)
    from [PushOrders] as PO inner join PushMedOrders as MPO on PO.pushId=MPO.orderId
    where medId=@medId and depId=@depId and (month(pushDate)=@month and YEAR(pushDate)= @year)
   
    -- כמות שלא סופקה מהזמנות דחיפה שסופקו
	select @NotSupPushPO= sum(poQty-supQty)
    from [PushOrders] as PO inner join PushMedOrders as MPO on PO.pushId=MPO.orderId
    where medId=@medId and depId=@depId and (month(pushDate)=@month and YEAR(pushDate)= @year) and pushStatus='I'


	 --כמות שסופקה מבקשות המחלקה
	Select @SupMR=sum(reqQty)
	from [MedRequests] MR 
	where (MR.reqStatus like 'T' or MR.reqStatus like 'A') and medId=@medId and cDep=@depId and (month(reqDate)=@month and YEAR(reqDate)= @year)


	-- --כמות תרופות מבקשות שנמצאות בהמתנה
	--Select @WaitMR=sum(reqQty)
	--from [MedRequests] MR 
	--where MR.reqStatus like 'W' and medId=@medId and cDep=@depId and (month(reqDate)=@month and YEAR(reqDate)= @year)


	--תיעוד שימוש בקמיליון
	select @usageQty=sum(useQty)
	from Usages U inner Join MedUsages MU on U.usageId=MU.usageId
	where medId=@medId and depId=@depId and (month(lastUpdate)=@month and YEAR(lastUpdate)= @year)



	select @SupPullPO as SupPullPO, 
	       @NotSupPullPO as NotSupPullPO, 
		   @SupPushPO as SupPushPO, 
	       @NotSupPushPO as NotSupPushPO, 
		   @SupMR as SupMR, 
		   --@WaitMR as WaitMR, 
		   @usageQty as usageQty

END
GO


    --select sum(poQty-supQty)
    --from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
    --where medId=1 and depId=3 and (month(pullDate)=6 and YEAR(pullDate)= 2023) and pullStatus='I'

	 
	--UPDATE [PullOrders] set reportNum = ''  where pullId = 1047

	--Select sum(reqQty)
	--from [MedRequests] MR 
	--where (MR.reqStatus like 'W' or MR.reqStatus like 'A') and medId=1 and cDep=3 and (month(reqDate)=4 and YEAR(reqDate)= 2023)




	--declare @SupPullPO smallint, @NotSupPullPO smallint, @SupPushPO smallint, @NotSupPushPO smallint,
	--        @SupMR smallint, @WaitMR smallint, @usageQty smallint,
	--@depId smallint,
	--@medId smallint,
	--@month smallint,
	--@year char(4)


	--set @depId=3; set @medId=1; set @month= 4; set @year='2023';

	-- --כמות שסופקה מהזמנות משיכה
 --   select @SupPullPO= sum(supQty)
 --   from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --   where medId=@medId and depId=@depId and (month(pullDate)=@month and YEAR(pullDate)= @year)
   
 --   -- כמות שלא סופקה מהזמנות משיכה שסופקו
	--select @NotSupPullPO= sum(poQty-supQty)
 --   from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --   where medId=@medId and depId=@depId and (month(pullDate)=@month and YEAR(pullDate)= @year) and pullStatus='I'
   

 --   --כמות שסופקה מהזמנות דחיפה
 --   select @SupPushPO= sum(supQty)
 --   from [PushOrders] as PO inner join PushMedOrders as MPO on PO.pushId=MPO.orderId
 --   where medId=@medId and depId=@depId and (month(pushDate)=@month and YEAR(pushDate)= @year)
   
 --   -- כמות שלא סופקה מהזמנות דחיפה שסופקו
	--select @NotSupPushPO= sum(poQty-supQty)
 --   from [PushOrders] as PO inner join PushMedOrders as MPO on PO.pushId=MPO.orderId
 --   where medId=@medId and depId=@depId and (month(pushDate)=@month and YEAR(pushDate)= @year) and pushStatus='I'


	-- --כמות שסופקה מבקשות המחלקה
	--Select @SupMR=sum(reqQty)
	--from [MedRequests] MR 
	--where (MR.reqStatus like 'T' or MR.reqStatus like 'A') and medId=@medId and cDep=@depId and (month(reqDate)=@month and YEAR(reqDate)= @year)


	-- --כמות תרופות מבקשות שנמצאות בהמתנה
	--Select @WaitMR=sum(reqQty)
	--from [MedRequests] MR 
	--where MR.reqStatus like 'W' and medId=@medId and cDep=@depId and (month(reqDate)=@month and YEAR(reqDate)= @year)


	----תיעוד שימוש בקמיליון
	--select @usageQty=sum(useQty)
	--from Usages U inner Join MedUsages MU on U.usageId=MU.usageId
	--where medId=@medId and depId=@depId and (month(lastUpdate)=@month and YEAR(lastUpdate)= @year)



	--select @SupPullPO as SupPullPO, 
	--       @NotSupPullPO as NotSupPullPO, 
	--	   @SupPushPO as SupPushPO, 
	--       @NotSupPushPO as NotSupPushPO, 
	--	   @SupMR as SupMR, 
	--	   @WaitMR as WaitMR, 
	--	   @usageQty as usageQty


	-- select  sum(supQty)
 --   from [PushOrders] as PO inner join PushMedOrders as MPO on PO.pushId=MPO.orderId
 --   where medId=1 and depId=3 and (month(pushDate)=4 and YEAR(pushDate)= 2023)

	--select *--sum(poQty-supQty)
 --   from [PushOrders] as PO inner join PushMedOrders as MPO on PO.pushId=MPO.orderId
 --   where medId=1 and depId=3 and (month(pushDate)=4 and YEAR(pushDate)= 2023) and pushStatus='I'

	--update PushMedOrders set supQty=2 where orderId=14 and medId=1


	--Select*--sum(reqQty)
	--from [MedRequests] MR 
	--where MR.reqStatus like 'W' and medId=1 and cDep=3 and (month(reqDate)=4 and YEAR(reqDate)= 2023)