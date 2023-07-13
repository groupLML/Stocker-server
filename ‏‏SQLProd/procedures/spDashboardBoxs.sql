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
ALTER PROCEDURE spDashboardBoxs
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
	declare @countCurrentPO smallint, @countPreviousPO smallint, @countCurrentMR smallint, @countPreviousMR smallint,
	        @countCurrentMRD smallint, @countPreviousMRD smallint

    ----------------------------------------Current data----------------------------------------
    select @countCurrentPO= count(distinct PO.pullId)
    from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
    where medId=@medId and depId=@depId and (month(pullDate)=@month and YEAR(pullDate)= @year)
   
	Select @countCurrentMR=count(distinct MR.reqId)
	from [MedRequests] MR 
	where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and (month(reqDate)=@month and YEAR(reqDate)= @year)

	Select @countCurrentMRD=count(distinct MR.reqId)
	from [MedRequests] MR 
	where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and (month(reqDate)=@month and YEAR(reqDate)= @year)


	----------------------------------------Previous data----------------------------------------
	if(@month=MONTH(GETDATE())and @year=YEAR(GETDATE()))  --מתחילת חודש נוכחי ועד להיום
	    BEGIN
          if(@month!=1)
              BEGIN
                 select @countPreviousPO= count(distinct PO.pullId)
                 from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
                 where medId=@medId and depId=@depId and PO.pullDate>=DATEFROMPARTS(@year, @month-1, 1) and (year(PO.pullDate)=@year and month(PO.pullDate)=@month-1 and day(PO.pullDate)<=Day(GETDATE()))

		        select @countPreviousMR=count(distinct MR.reqId)
	            from [MedRequests] MR 
	            where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and reqDate>=DATEFROMPARTS(@year, @month-1, 1) and (year(reqDate)=@year and month(reqDate)=@month-1 and day(reqDate)<=Day(GETDATE()))

		        select @countPreviousMRD=count(distinct MR.reqId)
	            from [MedRequests] MR 
	            where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and reqDate>=DATEFROMPARTS(@year, @month-1, 1) and (year(reqDate)=@year and month(reqDate)=@month-1 and day(reqDate)<=Day(GETDATE()))
            END
          else
	          BEGIN
                 select @countPreviousPO= count(distinct PO.pullId)
                 from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
                 where medId=@medId and depId=@depId and PO.pullDate>=DATEFROMPARTS(@year-1, 12, 1) and (year(PO.pullDate)=@year-1 and month(PO.pullDate)=12 and day(PO.pullDate)<=Day(GETDATE()))

		         Select @countPreviousMR=count(distinct MR.reqId)
	             from [MedRequests] MR 
	             where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and reqDate>=DATEFROMPARTS(@year-1, 12, 1) and (year(reqDate)=@year-1 and month(reqDate)=12 and day(reqDate)<=Day(GETDATE()))

		        Select @countPreviousMRD=count(distinct MR.reqId)
	            from [MedRequests] MR 
	            where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and reqDate>=DATEFROMPARTS(@year-1, 12, 1) and (year(reqDate)=@year-1 and month(reqDate)=12 and day(reqDate)<=Day(GETDATE()))
             END
	    END
	else  --נתונים פר חודש
	    BEGIN
          if(@month!=1)
              BEGIN
                 select @countPreviousPO= count(distinct PO.pullId)
                 from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
                 where medId=@medId and depId=@depId and (month(pullDate)=@month-1 and YEAR(pullDate)= @year)
			
		         select @countPreviousMR=count(distinct MR.reqId)
	             from [MedRequests] MR 
	             where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and (month(reqDate)=@month-1 and YEAR(reqDate)= @year)

		         select @countPreviousMRD=count(distinct MR.reqId)
	             from [MedRequests] MR 
	             where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and (month(reqDate)=@month-1 and YEAR(reqDate)= @year)
            END
          else
	          BEGIN
                 select @countPreviousPO= count(distinct PO.pullId)
                 from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
                 where medId=@medId and depId=@depId and (month(pullDate)=12 and YEAR(pullDate)= @year-1)

		         Select @countPreviousMR=count(distinct MR.reqId)
	             from [MedRequests] MR 
	             where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and (month(reqDate)=12 and YEAR(reqDate)= @year-1)

		         Select @countPreviousMRD=count(distinct MR.reqId)
	             from [MedRequests] MR 
	             where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and (month(reqDate)=12 and YEAR(reqDate)= @year-1)
           END
	    END


	select @countCurrentPO as CurrentPO, 
	       @countPreviousPO as PrevPO, 
		   @countCurrentMR as CurrentMR,
		   @countPreviousMR as PrevMR,
		   @countCurrentMRD as CurrentMRD,
		   @countPreviousMRD as PrevMRD

END
GO

	--if(@month=MONTH(GETDATE())and @year=YEAR(GETDATE()))
	--    BEGIN
 --         select @countCurrentPO= count(distinct PO.pullId)
	--      from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --         where medId=1 and depId=3 and PO.pullDate>=DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1) and PO.pullDate<=DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), Day(GETDATE()))
	--    END
	--else
	--	BEGIN
 --         select @countCurrentPO= count(distinct PO.pullId)
	--      from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --         where medId=1 and depId=3 and (month(PO.pullDate)=@month and YEAR(PO.pullDate)= @year)
	--    END



	       --select * 
        --   from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
        --   where medId=1 and depId=3 and PO.pullDate>=DATEFROMPARTS(2023, 7-1, 1) and 
		      --   (year(PO.pullDate)=2023 and month(PO.pullDate)=7-1 and day(PO.pullDate)<=Day(GETDATE()))


			  --Select *
	    --      from [MedRequests] MR 
	    --      where MR.reqStatus like 'D' and medId=1 and cDep=3 and (month(reqDate)=5 and YEAR(reqDate)= 2023)


	--select * --count(distinct PO.pullId)
 --   from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --   where medId=1 and depId=3 and (month(pullDate)=4 and YEAR(pullDate)= '2023')



 --declare @countCurrentPO smallint, @countPreviousPO smallint, @countCurrentMR smallint, @countPreviousMR smallint,
	--        @countCurrentMRD smallint, @countPreviousMRD smallint,

 --   @depId smallint,
	--@medId smallint,
	--@month smallint,
	--@year char(4)


	--set @depId=3; set @medId=1; set @month= 6; set @year='2023';

	-- ----------------------------------------Current data----------------------------------------
 --   select @countCurrentPO= count(distinct PO.pullId)
 --   from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --   where medId=@medId and depId=@depId and (month(pullDate)=@month and YEAR(pullDate)= @year)
   
	--Select @countCurrentMR=count(distinct MR.reqId)
	--from [MedRequests] MR 
	--where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and (month(reqDate)=@month and YEAR(reqDate)= @year)

	--Select @countCurrentMRD=count(distinct MR.reqId)
	--from [MedRequests] MR 
	--where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and (month(reqDate)=@month and YEAR(reqDate)= @year)

	------------------------------------------Previous data----------------------------------------
	--if(@month=MONTH(GETDATE())and @year=YEAR(GETDATE()))  --מתחילת חודש נוכחי ועד להיום
	--    BEGIN
 --         if(@month!=1)
 --             BEGIN
 --                select @countPreviousPO= count(distinct PO.pullId)
 --                from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --                where medId=@medId and depId=@depId and PO.pullDate>=DATEFROMPARTS(@year, @month-1, 1) and (year(PO.pullDate)=@year and month(PO.pullDate)=@month-1 and day(PO.pullDate)<=Day(GETDATE()))

	--	        select @countPreviousMR=count(distinct MR.reqId)
	--            from [MedRequests] MR 
	--            where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and reqDate>=DATEFROMPARTS(@year, @month-1, 1) and (year(reqDate)=@year and month(reqDate)=@month-1 and day(reqDate)<=Day(GETDATE()))

	--	        select @countPreviousMRD=count(distinct MR.reqId)
	--            from [MedRequests] MR 
	--            where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and reqDate>=DATEFROMPARTS(@year, @month-1, 1) and (year(reqDate)=@year and month(reqDate)=@month-1 and day(reqDate)<=Day(GETDATE()))
 --           END
 --         else
	--          BEGIN
 --                select @countPreviousPO= count(distinct PO.pullId)
 --                from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --                where medId=@medId and depId=@depId and PO.pullDate>=DATEFROMPARTS(@year-1, 12, 1) and (year(PO.pullDate)=@year-1 and month(PO.pullDate)=12 and day(PO.pullDate)<=Day(GETDATE()))

	--	         Select @countPreviousMR=count(distinct MR.reqId)
	--             from [MedRequests] MR 
	--             where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and reqDate>=DATEFROMPARTS(@year-1, 12, 1) and (year(reqDate)=@year-1 and month(reqDate)=12 and day(reqDate)<=Day(GETDATE()))

	--	        Select @countPreviousMRD=count(distinct MR.reqId)
	--            from [MedRequests] MR 
	--            where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and reqDate>=DATEFROMPARTS(@year-1, 12, 1) and (year(reqDate)=@year-1 and month(reqDate)=12 and day(reqDate)<=Day(GETDATE()))
 --            END
	--    END
	--else  --נתונים פר חודש
	--    BEGIN
 --         if(@month!=1)
 --             BEGIN
 --                select @countPreviousPO= count(distinct PO.pullId)
 --                from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --                where medId=@medId and depId=@depId and (month(pullDate)=@month-1 and YEAR(pullDate)= @year)
			
	--	         select @countPreviousMR=count(distinct MR.reqId)
	--             from [MedRequests] MR 
	--             where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and (month(reqDate)=@month-1 and YEAR(reqDate)= @year)

	--	         select @countPreviousMRD=count(distinct MR.reqId)
	--             from [MedRequests] MR 
	--             where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and (month(reqDate)=@month-1 and YEAR(reqDate)= @year)
 --           END
 --         else
	--          BEGIN
 --                select @countPreviousPO= count(distinct PO.pullId)
 --                from [PullOrders] as PO inner join PullMedOrders as MPO on PO.pullId=MPO.orderId
 --                where medId=@medId and depId=@depId and (month(pullDate)=12 and YEAR(pullDate)= @year-1)

	--	         Select @countPreviousMR=count(distinct MR.reqId)
	--             from [MedRequests] MR 
	--             where MR.reqStatus like 'T' and medId=@medId and cDep=@depId and (month(reqDate)=12 and YEAR(reqDate)= @year-1)

	--	         Select @countPreviousMRD=count(distinct MR.reqId)
	--             from [MedRequests] MR 
	--             where MR.reqStatus like 'D' and medId=@medId and cDep=@depId and (month(reqDate)=12 and YEAR(reqDate)= @year-1)
 --          END
	--    END


	
	--select @countCurrentPO as CurrentPO, 
	--       @countPreviousPO as PrevPO, 
	--	   @countCurrentMR as CurrentMR,
	--	   @countPreviousMR as PrevMR,
	--	   @countCurrentMRD as CurrentMRD,
	--	   @countPreviousMRD as PrevMRD

