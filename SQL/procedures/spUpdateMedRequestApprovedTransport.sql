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
-- Description:	<update MedRequestApprovedTransport>
-- =============================================
ALTER PROCEDURE spUpdateMedRequestApprovedTransport

    @reqId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @qty smallint, @sQty smallint, @depId smallint, @medId smallint,  @cDep smallint, @date datetime
	
	set @depId =(select aDep from MedRequests
	             where reqId = @reqId);

	set @cDep =(select cDep from MedRequests
	             where reqId = @reqId);

    set @medId =(select medId from MedRequests
	             where reqId = @reqId);
				 
	set @date =(select min(entryDate)
                 from Stocks 
                 where medId = 1 and depId=3);
	
	set @qty=(select reqQty from MedRequests
	           where reqId = @reqId);

	set @sQty=(select sum(stcQty)
	           from Stocks as S inner join MedRequests as MR
	                 on S.depId=MR.aDep and S.medId=MR.medId
	           where reqId = @reqId);

	 if(@sQty >= @qty)
	 BEGIN
	        UPDATE MedRequests set reqStatus='T' where reqId = @reqId and reqStatus='A'
			Exec spDeductDepStock  @depId, @medId, @qty
			INSERT INTO [Stocks] ([medId], [depId], [stcQty], [entryDate]) values (@medId, @cDep, @qty, @date);
	 END

END
GO

