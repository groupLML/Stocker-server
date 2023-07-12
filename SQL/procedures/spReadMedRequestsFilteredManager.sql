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
ALTER PROCEDURE spReadMedRequestsFilteredManager
	-- Add the parameters for the stored procedure here
    @depId smallint,
	@month int,
	@status char(1)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF (@status like 'N')
	begin
	SELECT cast(reqDate as date) as 'reqDate', Medicines.mazNum, 
	       genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName',
		   D2.depName as 'cDepName',
		   CASE WHEN (MedRequests.aDep !=0) THEN D1.depName
			    WHEN (MedRequests.aDep =0) THEN ''
				end as aDepName, reqQty,
		   CASE WHEN (reqStatus like 'D') THEN N'נדחתה'
			    WHEN (reqStatus like 'A') THEN N'אושרה'
				WHEN (reqStatus like 'T') THEN N'הועברה'
				WHEN (reqStatus like 'W') THEN N'ממתינה'
				end as reqStatus
	FROM [MedRequests] INNER JOIN [Medicines]
         ON MedRequests.[medId] = Medicines.[medId] left JOIN [Departments] D1
		 ON [MedRequests].[aDep] = D1.[depId] inner JOIN [Departments] D2
		 ON [MedRequests].[cDep] = D2.[depId] 
   where year(reqDate)=year(getDate()) and month(reqDate)=@month and cDep= @depId
   order by [MedRequests].reqDate desc
   end

   ELSE
   begin
   SELECT cast(reqDate as date) as 'reqDate', Medicines.mazNum, 
	       genName+' '+comName+' '+format(eaQty,'')+' '+unit+' '+given as 'medName',
		   D2.depName as 'cDepName',
		   CASE WHEN (MedRequests.aDep !=0) THEN D1.depName
			    WHEN (MedRequests.aDep =0) THEN ''
				end as aDepName, reqQty,
		   CASE WHEN (reqStatus like 'D') THEN N'נדחתה'
			    WHEN (reqStatus like 'A') THEN N'אושרה'
				WHEN (reqStatus like 'T') THEN N'הועברה'
				WHEN (reqStatus like 'W') THEN N'ממתינה'
				end as reqStatus
	FROM [MedRequests] INNER JOIN [Medicines]
         ON MedRequests.[medId] = Medicines.[medId] left JOIN [Departments] D1
		 ON [MedRequests].[aDep] = D1.[depId] inner JOIN [Departments] D2
		 ON [MedRequests].[cDep] = D2.[depId] 
   where year(reqDate)=year(getDate()) and month(reqDate)=@month and cDep= @depId and reqStatus like @status
   order by [MedRequests].reqDate desc
   end

END

