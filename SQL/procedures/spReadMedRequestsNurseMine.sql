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
-- Create date: <27/02/2023>
-- Description:	<read MedRequest Nurse Mine>
-- =============================================
Alter PROCEDURE spReadMedRequestsNurseMine
      @cDep smallint
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
   SELECT reqId, CAST(reqDate AS DATE) AS 'reqDate', CONVERT(varchar(5), reqDate, 108) AS 'reqTime', 
	      MedRequests.medId AS 'medId', genName, MedRequests.cUser AS 'userId', firstName+' '+lastName AS 'nurseName',
		  MedRequests.cDep AS 'depId', depName AS 'depName', reqStatus, reqQty
	FROM [MedRequests] INNER JOIN [Medicines]
         ON MedRequests.[medId] = Medicines.[medId] INNER JOIN [Users] 
		 ON Users.[userId] = MedRequests.[cUser] left JOIN [Departments] 
		 ON [MedRequests].[aDep] = Departments.[depId]
   WHERE Medicines.medStatus=1 and (MedRequests.reqStatus='W' OR MedRequests.reqStatus='A') and MedRequests.cDep=@cDep

END
GO
