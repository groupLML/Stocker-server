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
ALTER PROCEDURE spInsertMedRequest

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


