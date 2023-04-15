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
-- Create date: <25/03/2023>
-- Description:	<update MedRequestDeleteTransport>
-- =============================================
ALTER PROCEDURE spUpdateMedRequestDeleteTransport

    @reqId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE MedRequests set reqStatus='W', aUser=0, aDep=''
	 where reqId = @reqId and reqStatus='A'


END
GO


