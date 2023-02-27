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
-- Create date: <27/02/2023>
-- Description:	<update depRequest>
-- =============================================
CREATE PROCEDURE spUpdateDepRequest
	
	@reqId smallint,
	@cDep smallint,
	@reqDep smallint,
	@reqStatus char(1)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [DepRequests] set [reqStatus]=@reqStatus where [reqId]=@reqId and [cDep]=@cDep and [reqDep]=@reqDep
END
GO
