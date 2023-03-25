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
-- Description:	<insert MedRequest>
-- =============================================
ALTER PROCEDURE spInsertMedRequestNew

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
GO



  --   INSERT INTO [MedRequests] ([cUser],[aUser],[cDep],[aDep],[medId],[reqQty],[reqStatus],[reqDate]) 
  --   VALUES (4,4,4,4,4,4,'W',GETDATE());

	 --DECLARE @reqId smallint, @depId smallint, @string varchar(max)
	 
	 --SET @reqId= (SELECT SCOPE_IDENTITY())
	 --SET @string= '7,8,9'

  --   WHILE LEN(@string) <> 0
	 --      BEGIN
	 --            SET @depId =CAST(LEFT(@string, 1) as smallint)
		--		 INSERT INTO [DepRequests] ([reqId],[reqDep]) VALUES (@reqId, @depId);
		--		 SET @string= (SELECT SUBSTRING(@string,3,LEN(@string)))
		--   END


		select * from [MedRequests]
		select * from [DepRequests]

		--drop table [DepRequests]
		--drop table [MedRequests]

			--     select @reqId
		 --select * from [MedRequests]
		 --SELECT CAST(LEFT('3,4,5', 1) as smallint), LEN('3,4,5'), SUBSTRING('3,4,5',3,LEN('3,4,5'))


  --   DECLARE @string varchar(max)
	 --SET @string = '3,4,5,6';
	 --SET @string= (SELECT SUBSTRING(@string,3,LEN(@string)))
	 --select @string
