USE [igroup136_test1]
GO
/****** Object:  StoredProcedure [dbo].[spReadDepRequestsNurseOthers]    Script Date: 15/03/2023 10:21:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<LML>
-- Create date: <09/03/2023>
-- Description:	<Read DepRequests Nurse Others>
-- =============================================
ALTER PROCEDURE [dbo].[spReadDepRequestsNurseOthers]
	@cDep smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
select depName , firstName+' '+lastName AS 'cNurseName',reqDate, 
	   genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName', 
	   reqQty, reqDep.stcQty
from [Medicines] inner join
               (Select Medicines.[medId],  MedRequests.[cUser], depName,reqDate, reqQty, sum(stcQty) as 'stcQty'
	            FROM [DepRequests] INNER JOIN [MedRequests] 
	                 ON MedRequests.[reqId] = DepRequests.[reqId] INNER JOIN [Departments] 
                     ON DepRequests.[cDep] = Departments.[depId] INNER JOIN [Medicines]
                     ON MedRequests.[medId] = Medicines.[medId] INNER JOIN [Stocks] 
		             ON MedRequests.[medId] = Stocks.[medId] INNER JOIN [Users] 
		             ON Users.[userId] = MedRequests.[cUser]
	            WHERE DepRequests.reqDep=@cDep and Stocks.depId=@cDep
	                  and (MedRequests.reqStatus='W' OR MedRequests.reqStatus='A')
	            group by Medicines.[medId], MedRequests.[cUser], depName,reqDate, reqQty) as reqDep
         ON reqDep.[medId] = Medicines.[medId] INNER JOIN [Users] 
		 ON Users.[userId] = reqDep.[cUser]


END


