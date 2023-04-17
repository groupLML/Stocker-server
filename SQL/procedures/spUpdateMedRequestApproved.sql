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
-- Description:	<update MedRequest>
-- =============================================
ALTER PROCEDURE spUpdateMedRequestApproved

    @reqId smallint,
	@aUser smallint,
	@aDep smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @rQty smallint, @sQty smallint
	
	BEGIN
	set @rQty=(select reqQty from MedRequests
	           where reqId = @reqId);

	set @sQty=(select sum(stcQty)
               from Stocks  
               where depId=@aDep and medId=(select medId
                                            from MedRequests
                                            where reqId = @reqId));

	 if(@sQty >= @rQty)
         UPDATE MedRequests set aUser=@aUser, aDep=@aDep,reqStatus='A' where reqId = @reqId 
     END

END
GO





