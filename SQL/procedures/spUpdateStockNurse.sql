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
-- Create date: <27/02/2023>
-- Description:	<update  Stock>
-- =============================================
ALTER PROCEDURE spUpdateStockNurse
	-- Add the parameters for the stored procedure here
	@stcId smallint,
	@medId smallint,
	@depId smallint,
	@stcQty real, 
	@entryDate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @OldQty real, @numeffected smallint

	SET @OldQty= (select sum(stcQty) 
	              from Stocks
	              where medId=@medId and depId=@depId);

	if(@OldQty is Null) --אם התרופה לא קיימת במלאי
	    BEGIN
		    Insert INTO [Stocks] ([medId],[depId],[stcQty],[entryDate]) Values (@medId,@depId,@stcQty,getdate())
		    set @numeffected= @@rowcount;
		END
	
	if(@stcQty = @OldQty) --אם הכמות לא השתנתה
        set @numeffected= 1;
	
	if(@stcQty > @OldQty) --אם הכמות הרצויה גדולה מהכמות במלאי, נוסיף את ההפרש
	    BEGIN
	        SET @OldQty= @stcQty- @OldQty;
		    Insert INTO [Stocks] ([medId],[depId],[stcQty],[entryDate]) Values (@medId,@depId,@OldQty,getdate())
		    set @numeffected= @@rowcount;
		END
	
	if(@stcQty < @OldQty) --אם הכמות הרצויה קטנה מהכמות במלאי, נחסיר את ההפרש
	    BEGIN
	       SET @OldQty= @OldQty- @stcQty
	       Exec spDeductDepStock @depId, @medId, @OldQty;
           set @numeffected= 1;
	    END 
  
  select @numeffected
 
END
GO


--Exec spUpdateStockNurse 0, 1, 3, 110, getdate();
  

 -- DECLARE @OldQty real

	--SET @OldQty= (select sum(stcQty) 
	--              from Stocks
	--              where medId=@medId and depId=@depId);
	--if(@OldQty is Null)
	--    BEGIN
	--	Insert INTO [Stocks] ([medId],[depId],[stcQty],[entryDate]) Values (@medId,@depId,@stcQty,@entryDate)
	--	END
	--if(@stcQty > @OldQty)
	--    BEGIN
	--    SET @OldQty= @stcQty- @OldQty;
	--	Insert INTO [Stocks] ([medId],[depId],[stcQty],[entryDate]) Values (@medId,@depId,@OldQty,@entryDate)
	--	END
	--if(@stcQty < @OldQty)
	-- BEGIN
	--    SET @OldQty= @OldQty- @stcQty
	--	Exec spDeductDepStock @depId, @medId, @OldQty;
	--	END    
	
	--	DECLARE @OldQty real, @numeffected smallint

	--SET @OldQty= (select sum(stcQty) 
	--              from Stocks
	--              where medId=1 and depId=3);

	--if(@OldQty is Null) --אם התרופה לא קיימת במלאי
	--    BEGIN
	--	    Insert INTO [Stocks] ([medId],[depId],[stcQty],[entryDate]) Values (1,3,110,getdate())
	--	    set @numeffected= @@rowcount;
	--	END
	--if(110 = @OldQty) --אם הכמות לא השתנתה
 --       set @numeffected= 1;
	--if(110 > @OldQty) --אם הכמות הרצויה גדולה מהכמות במלאי, נוסיף את ההפרש
	--    BEGIN
	--        SET @OldQty= 0;
	--	    Insert INTO [Stocks] ([medId],[depId],[stcQty],[entryDate]) Values (1,3,110,getdate())
	--	    set @numeffected= @@rowcount;
	--	END
	--if(110 < @OldQty) --אם הכמות הרצויה קטנה מהכמות במלאי, נחסיר את ההפרש
	--    BEGIN
	--       SET @OldQty= 0
	--       Exec spDeductDepStock 3, 1, @OldQty;
 --          set @numeffected= 1;
	--    END 
 -- select @numeffected
 
 
	--select medId, sum(stcQty) 
	-- from Stocks
	--where depId=3
	--group by medId


	--select *
	--	 from Stocks
	--where depId=3
	--Delete from Stocks where stcId = 107