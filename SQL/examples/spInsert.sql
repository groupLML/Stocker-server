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

CREATE PROCEDURE spInsertUser_L 
	-- Add the parameters for the stored procedure here
	@userId smallint,
    @username varchar (30),
    @firstName nvarchar (20),
    @lastName nvarchar (20),
	@email nvarchar (50),
	@password char (8),
	@phone char (10),
	@position nvarchar (30),
	@jobType char(1),
	@depId smallint

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 Insert INTO [Users] ([userId],[username],[firstName],[lastName],[password],[phone],[position],[jobType],[depId]) Values (@userId,@username,@firstName,@lastName,@password,@phone,@position,@jobType,@depId)
END
GO

--check procedure
--exec spInsertUser_L 'lina','bm','lin@gmail.com','1234'
--select * from Users_L_2022