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
ALTER PROCEDURE spDeleteFromStock
	-- Add the parameters for the stored procedure here
	@depId smallint,
	@medId smallint,
    @qty real

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
    DECLARE @res smallint

	SET @res= 0;
	
	if(@qty <= (select sum(stcQty)
	            from Stocks
	            where medId=@medId and depId=@depId))
      BEGIN
	      Exec spDeductDepStock @depId, @medId, @qty;
	      SET @res= 1;
	  END

    select @res

END
GO


--BEGIN
 --DECLARE @res smallint

	--SET @res= 0;
	
	--if(100 <= (select sum(stcQty)
	--               from Stocks
	--               where medId=8 and depId=3))
 --     BEGIN
	--      Exec spDeductDepStock 3,8,100;
	--      SET @res= 2;
	--  END

	-- select @res
--END


