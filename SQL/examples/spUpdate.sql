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
CREATE PROCEDURE spUpdateUser_L 
	-- Add the parameters for the stored procedure here
	@firstName nvarchar (30),
    @lastName nvarchar (30),
    @email nvarchar (30),
    @password nvarchar (30)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE Users_L_2022 set firstName = @firstName ,lastName = @lastName, [password] = @password where email = @email
END
GO

--check procedure
--exec spUpdateUser_L 'nel','bm','linbm@gmail.com','1111'
--select * from Users_L_2022