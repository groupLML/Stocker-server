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
-- Description:	<update Medicine>
-- =============================================
ALTER PROCEDURE spUpdateMedicine
	-- Add the parameters for the stored procedure here
	@medId smallint,
    @genName nvarchar(100),
    @comName nvarchar(100),
	@mazNum varchar(10),
	@eaQty smallint,
	@unit varchar(3),
	@method varchar(3),
	@given varchar(20),
	@medStatus bit,
	@lastUpdate datetime
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
     UPDATE Medicines set genName=@genName, comName=@comName , mazNum=@mazNum, eaQty = @eaQty, unit=@unit,
	 method=@method,given=@given, medStatus=@medStatus,lastUpdate=getdate()
	 where medId=@medId 
END
GO
