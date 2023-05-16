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
-- Create date: <14/05/2023>
-- Description:	<Read Norm Requests>
-- =============================================
create PROCEDURE spReadNormRequests

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;
	select NR.reqId as 'ReqId',N.normId as 'NormId', D.depId as 'depId' ,D.depName as 'depName'
	       ,U.userId, U.firstName ,U.lastName,U.jobType, reqDate, reqStatus, MNR.medId as 'MedId', 
	       genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'MedName',reqQty
	 from [Departments] as D 
	 inner join [Norms] as N on D.depId= N.depId
	 inner join [NormRequests] as NR on N.normId= NR.normId
	 inner join [MedNormRequests] as MNR on NR.reqId= MNR.reqId
	 inner join [Medicines] as M on MNR.medId=M.medId
	 inner join [Users] as U on U.userId = NR.userId
	 order by NR.reqId desc, reqDate desc
	 
END
GO



	--select NR.reqId as 'ReqId',N.normId as 'NormId', depId,userId, reqDate, reqStatus, MNR.medId as 'MedId', 
	--       genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'MedName',reqQty
	-- from [Norms] as N 
	-- inner join [NormRequests] as NR on N.normId= NR.normId
	-- inner join [MedNormRequests] as MNR on NR.reqId= MNR.reqId
	-- inner join [Medicines] as M on MNR.medId=M.medId
	-- order by NR.reqId desc, reqDate desc

