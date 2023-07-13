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
-- Create date: <21-02-2023>
-- Description:	<Description>
-- =============================================

ALTER PROCEDURE spReadUsersPharm

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT U.*, D.depName,
			CASE WHEN (jobType like 'N') THEN N'אח/ות'
				 WHEN (jobType like 'P') THEN N'רוקח/ת'
				 WHEN (jobType like 'M') THEN N'מנהל/ת בית מרקחת'
				 WHEN (jobType like 'A') THEN N'אדמין'
				 end as jobTypeName
	 FROM [Users] as U INNER JOIN [Departments] as D
		  ON D.[depId] = U.[depId] 
	where userId !=0
	order by jobType, D.depid, userId, isActive
END
GO
