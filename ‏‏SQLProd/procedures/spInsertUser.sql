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
-- Create date: <25-02-2023>
-- Description:	<insert user>
-- =============================================

ALTER PROCEDURE spInsertUser 

    @userId smallint, 
	@username varchar(30),
	@firstName nvarchar (20),
    @lastName nvarchar (20),
    @email nvarchar (50),
	@emailP nvarchar (50),
    @password char(6),
	@phone char(10) ,
	@position nvarchar(30),
	@jobType char(1), 
	@depId smallint, 
	@isActive bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 Insert INTO [Users] ([username],[firstName],[lastName],[email],[emailP],[password],[phone],[position],[jobType],[depId],[isActive]) Values (@username,@firstName,@lastName,@email,@emailP, @password,@phone,@position,@jobType,@depId,@isActive)
END
GO
