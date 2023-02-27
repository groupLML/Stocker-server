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
-- Description:	<Read DepRequests Nurse Others>
-- =============================================
CREATE PROCEDURE spReadDepRequestsNurseOthers

	@cDep smallint
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT depName, CAST(reqDate AS DATE) AS 'reqDate', CONVERT(varchar(5), reqDate, 108) AS 'reqTime', 
	       genName,reqQty, sum(stcQty) as 'stcQty'
    FROM [DepRequests] INNER JOIN [MedRequests] 
	     ON MedRequests.[reqId] = DepRequests.[reqId] INNER JOIN [Departments] 
         ON DepRequests.[cDep] = Departments.[depId] INNER JOIN [Medicines]
         ON MedRequests.[medId] = Medicines.[medId] INNER JOIN [Stocks] ON MedRequests.[medId] = Stocks.[medId]
	WHERE Medicines.medStatus=1 and DepRequests.reqDep=@cDep and Stocks.depId=@cDep 
	      and (MedRequests.reqStatus='W' OR MedRequests.reqStatus='A')
	group by Medicines.[medId], depName, reqDate ,genName,reqQty

END
GO







	


 --   SELECT depName, CAST(reqDate AS DATE) AS 'reqDate', CONVERT(varchar(5), reqDate, 108) AS 'reqTime', 
	--       genName,reqQty, Medicines.[medId]
 --   FROM [DepRequests] INNER JOIN [MedRequests] 
	--     ON MedRequests.[reqId] = DepRequests.[reqId] INNER JOIN [Departments] 
 --        ON DepRequests.[cDep] = Departments.[depId] INNER JOIN [Medicines]
 --        ON MedRequests.[medId] = Medicines.[medId]
	--WHERE Medicines.medStatus=1 and (MedRequests.reqStatus='W' OR MedRequests.reqStatus='A') and DepRequests.reqDep=3
   
	-- [Stocks] ON MedRequests.[medId] = Stocks.[medId]
	
	--SELECT medId, sum(stcQty) as 'stcQty'
	--FROM [Stocks]
	--where depId=3
	--group by medId

