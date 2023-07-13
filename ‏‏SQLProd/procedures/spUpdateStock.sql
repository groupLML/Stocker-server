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
ALTER PROCEDURE spUpdateStock
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
	DECLARE @OldQty real

	SET @OldQty= (select sum(stcQty)
	              from Stocks
	              where medId=@medId and depId=@depId);
	
	if(@stcQty > @OldQty)
	    BEGIN
	    SET @OldQty= @stcQty- @OldQty;
		Insert INTO [Stocks] ([medId],[depId],[stcQty],[entryDate]) Values (@medId,@depId,@OldQty,@entryDate)
		END
	if(@stcQty < @OldQty)
	 BEGIN
	    SET @OldQty= @OldQty- @stcQty
		Exec spDeductDepStock @depId, @medId, @OldQty;
		END      
 
END
GO

