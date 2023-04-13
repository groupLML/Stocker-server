USE [igroup136_test1]
GO
/****** Object:  StoredProcedure [dbo].[spReadMedRequestsNurseMine]    Script Date: 15/03/2023 10:42:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<LML>
-- Create date: <27/02/2023>
-- Description:	<read Details MedRequest Nurse Mine>
-- =============================================
ALTER PROCEDURE [dbo].[spReadDetailsRequestNurseMine]
      @reqId smallint,
	  @cDep smallint
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT MR.reqId, MR.cUser AS 'cUserId', firstName+' '+lastName AS 'cNurseName', 
		   MR.medId AS 'medId', genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName',
		   reqQty, reqStatus, reqDate, depType 
	FROM [MedRequests] as MR INNER JOIN [Medicines] as M
         ON MR.[medId] = M.[medId] INNER JOIN [Users] as U
		 ON U.[userId] = MR.[cUser] INNER JOIN (select distinct depType, reqId
                                                from [DepRequests] as DR INNER JOIN [Departments] as D
	                                                 ON DR.[reqDep] = D.[depId]
                                                WHERE reqId=@reqId) as TypeDeps
        ON TypeDeps.[reqId] = MR.[reqId]
   WHERE MR.cDep=@cDep and MR.reqId=@reqId

END


--select distinct depType, reqId
--from [DepRequests] as DR INNER JOIN [Departments] as D
--	 ON DR.[reqDep] = D.[depId]
--WHERE reqId=46

