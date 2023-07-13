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
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE spReadDepTokens
	-- Add the parameters for the stored procedure here
	  @depId smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	-- SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT token
	FROM Tokens as T inner join Users as U
	     on T.userId= U.userId 
	where U.depId=@depId and token !='';


END
GO

	--SELECT U.depId, firstName+' '+lastName as 'NurseName', token,
	--       genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName'  
	--FROM Tokens as T inner join Users as U
	--     on T.userId= U.userId INNER JOIN [MedRequests] as MR
	--     ON MR.[aUser]=U.[userId] INNER JOIN [Medicines] as M
	--     ON M.[medId]=MR.[medId]
	--where MR.[aUser]=@aUser


	--SELECT U.userId, token
	--FROM Tokens as T inner join Users as U
	--     on T.userId= U.userId 
	--where U.depId=3 and token !='';