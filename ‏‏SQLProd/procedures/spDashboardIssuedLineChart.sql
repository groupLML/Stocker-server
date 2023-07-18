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
ALTER PROCEDURE spDashboardIssuedLineChart
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
	DECLARE @TotalPO smallint, @monthPO smallint, @counter smallint
    DECLARE @res TABLE (qty smallint);

    DECLARE po_Cursor CURSOR FOR 
         select case when (t1.TotalPO IS NULL) then 0+t2.TotalPO
			         when (t2.TotalPO IS NULL) then 0+t1.TotalPO
			         when (t2.TotalPO IS NULL and t1.TotalPO IS NULL) then 0
			         else t1.TotalPO + t2.TotalPO
			         end as totalPO,
		        case when (t1.monthPO IS NULL) then t2.monthPO
			         else t1.monthPO
			    end as monthPO
        from
            (select sum(supQty) as TotalPO, month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
             from PushOrders as PO inner join PushMedOrders as PMO on PO.pushId=PMO.orderId
             where medId=@medId and depId=@depId and pushStatus like 'I' and Year(lastUpdate)like @year
             group by medId, depId, month(lastUpdate), Year(lastUpdate)) as t1
         FULL OUTER JOIN
            (select sum(supQty) as TotalPO, month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
             from PullOrders as PO inner join PullMedOrders as PMO on PO.pullId=PMO.orderId
             where medId=@medId and depId=@depId and pullStatus like 'I' and Year(lastUpdate) like @year 
             group by medId, depId, month(lastUpdate), Year(lastUpdate)) as t2
	     on t1.monthPO=t2.monthPO and t1.yearPO=t2.yearPO
         order by monthPO

    OPEN po_Cursor

    FETCH NEXT FROM po_Cursor INTO @TotalPO, @monthPO

    SET @counter = 1

	WHILE @counter <= 12
    BEGIN
    
	      if(@monthPO = @counter)
	        BEGIN
	           INSERT INTO @res(qty) VALUES (@TotalPO);
			   FETCH NEXT FROM po_Cursor INTO @TotalPO, @monthPO
            END
		  else
	         BEGIN
	           INSERT INTO @res(qty) VALUES (0);
             END

		  set @counter =@counter +1; 

          --FETCH NEXT FROM po_Cursor INTO @TotalPO, @monthPO
    END

    CLOSE po_Cursor
    DEALLOCATE po_Cursor

	select *
	from @res

END
GO



--	select case when (t1.TotalPO IS NULL) then 0+t2.TotalPO
--			when (t2.TotalPO IS NULL) then 0+t1.TotalPO
--			when (t2.TotalPO IS NULL and t1.TotalPO IS NULL) then 0
--			else t1.TotalPO + t2.TotalPO
--			end as totalPO,
--		case when (t1.monthPO IS NULL) then t2.monthPO
--			else t1.monthPO
--			end as monthPO
--from
--    (select sum(supQty) as TotalPO, 
--            month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
--     from PushOrders as PO inner join PushMedOrders as PMO
--          on PO.pushId=PMO.orderId
--     where medId=@medId and depId=@depId and pushStatus like 'I' and Year(lastUpdate)=@year 
--     group by medId, depId, month(lastUpdate), Year(lastUpdate)) as t1
--FULL OUTER JOIN
--   (select sum(supQty) as TotalPO, 
--           month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
--    from PullOrders as PO inner join PullMedOrders as PMO
--         on PO.pullId=PMO.orderId
--    where medId=@medId and depId=@depId and pullStatus like 'I' and Year(lastUpdate)=@year 
--    group by medId, depId, month(lastUpdate), Year(lastUpdate)) as t2
--on t1.monthPO=t2.monthPO and t1.yearPO=t2.yearPO
--order by monthPO




--DECLARE @TotalPO smallint, @monthPO smallint, @counter smallint,
--@depId smallint,
--	@medId smallint,
--	@month smallint,
--	@year char(4);
--    DECLARE @res TABLE (qty smallint);

--	set @depId=3;
--	set @medId= 4;
--	set @year= '2023';

--    DECLARE po_Cursor CURSOR FOR 
--         select case when (t1.TotalPO IS NULL) then 0+t2.TotalPO
--			         when (t2.TotalPO IS NULL) then 0+t1.TotalPO
--			         when (t2.TotalPO IS NULL and t1.TotalPO IS NULL) then 0
--			         else t1.TotalPO + t2.TotalPO
--			         end as totalPO,
--				case when (t1.monthPO IS NULL) then t2.monthPO
--			         else t1.monthPO
--			    end as monthPO
--        from
--            (select sum(supQty) as TotalPO, month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
--             from PushOrders as PO inner join PushMedOrders as PMO on PO.pushId=PMO.orderId
--             where medId=@medId and depId=@depId and pushStatus like 'I' and Year(lastUpdate)like @year
--             group by medId, depId, month(lastUpdate), Year(lastUpdate)) as t1
--         FULL OUTER JOIN
--            (select sum(supQty) as TotalPO, month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
--             from PullOrders as PO inner join PullMedOrders as PMO on PO.pullId=PMO.orderId
--             where medId=@medId and depId=@depId and pullStatus like 'I' and Year(lastUpdate) like @year 
--             group by medId, depId, month(lastUpdate), Year(lastUpdate)) as t2
--	     on t1.monthPO=t2.monthPO and t1.yearPO=t2.yearPO
--         order by monthPO

--    OPEN po_Cursor

--    FETCH NEXT FROM po_Cursor INTO @TotalPO, @monthPO

--    SET @counter = 1

--	WHILE @counter <= 12
--    BEGIN
    
--	      if(@monthPO = @counter)
--		  BEGIN
--	           INSERT INTO @res(qty) VALUES (@TotalPO);
--			   FETCH NEXT FROM po_Cursor INTO @TotalPO, @monthPO
--          END
--		  else
--		  BEGIN
--	           INSERT INTO @res(qty) VALUES (0);
--          END
		 
--		 set @counter =@counter +1; 

--         --FETCH NEXT FROM po_Cursor INTO @TotalPO, @monthPO
--    END

--    CLOSE po_Cursor
--    DEALLOCATE po_Cursor

--	select *
--	from @res

	
	--select medId, depId, month(lastUpdate), sum(supQty) as TotalPO
	--from PushOrders as P inner join PushMedOrders PO
	--on P.pushId=PO.orderId
 --   where medId=4 and depId=3 and pushStatus like 'I' and Year(lastUpdate)like 2023
	--   group by medId, depId, month(lastUpdate), Year(lastUpdate)

	--select sum(supQty) as TotalPO, month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
 --            from PullOrders as PO inner join PullMedOrders as PMO on PO.pullId=PMO.orderId
 --            where medId=4 and depId=3 and pullStatus like 'I' and Year(lastUpdate) like 2023 
 --            group by medId, depId, month(lastUpdate), Year(lastUpdate)




		 --  select case when (t1.TotalPO IS NULL) then 0+t2.TotalPO
			--         when (t2.TotalPO IS NULL) then 0+t1.TotalPO
			--         when (t2.TotalPO IS NULL and t1.TotalPO IS NULL) then 0
			--         else t1.TotalPO + t2.TotalPO
			--         end as totalPO,
		 --       case when (t1.monthPO IS NULL) then t2.monthPO
			--         else t1.monthPO
			--    end as monthPO
		 --from
   --         (select sum(supQty) as TotalPO, month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
   --          from PushOrders as PO inner join PushMedOrders as PMO on PO.pushId=PMO.orderId
   --           where medId=4 and depId=3 and pushStatus like 'I' and Year(lastUpdate)like 2023 
   --          group by medId, depId, month(lastUpdate), Year(lastUpdate)) as t1
   --      FULL OUTER JOIN
   --         (select sum(supQty) as TotalPO, month(lastUpdate) as monthPO, Year(lastUpdate) as yearPO
   --          from PullOrders as PO inner join PullMedOrders as PMO on PO.pullId=PMO.orderId
   --          where medId=4 and depId=3 and pullStatus like 'I' and Year(lastUpdate) like 2023 
   --          group by medId, depId, month(lastUpdate), Year(lastUpdate)) as t2
	  --   on t1.monthPO=t2.monthPO and t1.yearPO=t2.yearPO
		 -- order by monthPO
   
