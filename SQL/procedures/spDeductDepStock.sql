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
ALTER PROCEDURE spDeductDepStock
	-- Add the parameters for the stored procedure here
	@depid smallint,
	@medid smallint,
	@qty smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @stcId smallint, @stcQty smallint

    DECLARE stock_Cursor CURSOR FOR 
            select stcId, stcQty
            from Stocks 
            where medId = @medid and depId=@depid
            order by entryDate

    OPEN stock_Cursor 

    FETCH NEXT FROM stock_Cursor INTO @stcId, @stcQty

    WHILE @@FETCH_STATUS = 0
    BEGIN
    
	      if(@stcQty > @qty)
	      BEGIN
	           update Stocks set stcQty= stcQty-@qty where stcId=@stcId and stcQty= @stcQty;
	           break;
	      END

	      delete Stocks where stcId=@stcId;
	      set @qty= @qty-@stcQty;

	      if(@qty=0)
	          break;

          FETCH NEXT FROM stock_Cursor INTO @stcId, @stcQty
    END

    CLOSE stock_Cursor
    DEALLOCATE stock_Cursor

END
GO

   --         select *
   --         from Stocks 
   --         where medId = 1 and depId=3
   --         order by entryDate

			--select *
   --         from Stocks 
   --         where medId = 1 and depId=11
   --         order by entryDate

			--UPDATE MedRequests set reqStatus='A' where reqId = 4
			--Select * from [MedRequests]


--	BEGIN

--	DECLARE @stcId smallint, @stcQty smallint, @qty smallint

--	set @qty= 55;
--    DECLARE stock_Cursor CURSOR FOR 
--            select stcId, stcQty
--            from Stocks 
--            where medId = 1 and depId=4
--            order by entryDate

--    OPEN stock_Cursor 

--    FETCH NEXT FROM stock_Cursor INTO @stcId, @stcQty

--    WHILE @@FETCH_STATUS = 0
--    BEGIN
    
--	      if(@stcQty > @qty)
--	      BEGIN
--	           update Stocks set stcQty= stcQty-@qty where stcId=@stcId and stcQty= @stcQty;
--	           break;
--	      END

--	      delete Stocks where stcId=@stcId;
--	      set @qty= @qty-@stcQty;
--	      if(@qty=0)
--	          break;

--          FETCH NEXT FROM stock_Cursor INTO @stcId, @stcQty
--    END

--    CLOSE stock_Cursor
--    DEALLOCATE stock_Cursor

--END


