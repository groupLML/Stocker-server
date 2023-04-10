USE [igroup136_test1]
GO
/****** Object:  StoredProcedure [dbo].[spInsertMedRequestNew]    Script Date: 10/04/2023 10:13:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<LML>
-- Create date: <25/03/2023>
-- Description:	<insert MedRequest>
-- =============================================
ALTER PROCEDURE [dbo].[spInsertMedRequestOld]

   	@cUser smallint,
	@aUser smallint,
	@cDep smallint,
	@aDep smallint,
	@medId smallint,
	@reqQty real,
	@reqStatus char(1),
	@reqDate datetime,
	@depList varchar(max)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 --Set @reqId=(
	 --Insert INTO [MedRequests] ([cUser],[aUser],[cDep],[aDep],[medId],[reqQty],[reqStatus],[reqDate]) 
	 --Values (@cUser,@aUser,@cDep,@aDep,@medId,@reqQty,'W',GETDATE()); select SCOPE_IDENTITY()
	 --);


	 --INSERT INTO [MedRequests] ([cUser],[aUser],[cDep],[aDep],[medId],[reqQty],[reqStatus],[reqDate]) 
  --   VALUES (@cUser,@aUser,@cDep,@aDep,@medId,@reqQty,'W',GETDATE());

	 --DECLARE @reqId smallint, @counter int = 1

	 
	 --SET @reqId= (SELECT SCOPE_IDENTITY())

	 --select @reqId,COUNT(@depArray)

	 --WHILE COUNT(@depArray) <> 0
	 --      BEGIN
	 --             SET @counter += 1

		--END

		
     INSERT INTO [MedRequests] ([cUser],[aUser],[cDep],[aDep],[medId],[reqQty],[reqStatus],[reqDate]) 
     VALUES (@cUser,@aUser,@cDep,@aDep,@medId,@reqQty,'W',GETDATE());

	 DECLARE @reqId smallint, @depId smallint, @depString varchar(max)
	 
	 SET @reqId= (SELECT SCOPE_IDENTITY());
	 SET @depString= @depList;

     WHILE LEN(@depString) <> 0
	       BEGIN
	             SET @depId =CAST(LEFT(@depString, 1) as smallint)
				 INSERT INTO [DepRequests] ([reqId],[reqDep]) VALUES (@reqId, @depId);
				 SET @depString=SUBSTRING(@depString,3,LEN(@depString))
		   END



END
