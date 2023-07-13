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
-- Create date: <25/02/2023>
-- Description:	<update MedRequest>
-- =============================================
ALTER PROCEDURE spUpdateMedRequestWaiting

    @reqId smallint,
   	@cUser smallint,
	@aUser smallint,
	@cDep smallint,
	@aDep smallint,
	@medId smallint,
	@reqQty real,
	@reqStatus char(1),
	@reqDate datetime
	--@depList varchar(max)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE MedRequests set cUser=@cUser, aUser=@aUser ,cDep=@cDep, aDep=@aDep,
	        medId=@medId, reqQty=@reqQty, reqStatus=@reqStatus, reqDate=getdate()
	 where reqId = @reqId 

END
GO

--select * from MedRequests

--select * from DepRequests

--UPDATE MedRequests set cUser=3, aUser = 0,cDep = 3, aDep=0,
--	 medId=4, reqQty=6, reqStatus='W', reqDate='2023-02-25 17:52:51.000'
--	 where reqId = 39


	 --DECLARE @depId smallint, @depString varchar(max)
	 --SET @depString= @depList;

  --   WHILE LEN(@depString) <> 0
	 --      BEGIN
	 --            SET @depId =CAST(LEFT(@depString, 1) as smallint)
		--		 INSERT INTO [DepRequests] ([reqId],[reqDep]) VALUES (@reqId, @depId);
		--		 SET @depString=SUBSTRING(@depString,3,LEN(@depString))
		--   END
