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
-- Description:	<update MedRequest>
-- =============================================
Alter PROCEDURE spUpdateMedRequest

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
	 UPDATE MedRequests set cUser=@cUser, aUser=@aUser ,cDep=@cDep, aDep=@aDep,
	 medId=@medId, reqQty=@reqQty, reqStatus=@reqStatus, reqDate=@reqDate
	 where reqId = @reqId 


END
GO

--select * from MedRequests

--select * from DepRequests

--UPDATE MedRequests set cUser=3, aUser = 0,cDep = 3, aDep=0,
--	 medId=4, reqQty=6, reqStatus='W', reqDate='2023-02-25 17:52:51.000'
--	 where reqId = 39