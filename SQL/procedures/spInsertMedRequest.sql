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
-- Author:		<Lital>
-- Create date: <25/02/2023>
-- Description:	<insert MedRequest>
-- =============================================
CREATE PROCEDURE spInsertMedRequest

    @reqId smallint,
   	@cUser smallint,
	@aUser smallint,
	@cDep smallint,
	@aDep smallint,
	@medId smallint,
	@reqQty real,
	@reqStatus char(1),
	@reqDate datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 Insert INTO [MedRequests] ([cUser],[aUser],[cDep],[aDep],[medId],[reqQty],[reqStatus],[reqDate]) Values (@cUser,null,@cDep,null,@medId,@reqQty,'W',GETDATE())
END
GO

