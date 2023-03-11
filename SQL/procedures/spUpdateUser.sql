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
-- Author:		<Lital>
-- Create date: <25-02-2023>
-- Description:	<Update User >
-- =============================================
CREATE PROCEDURE spUpdateUser 

	@userId smallint,
	@username varchar(30),
	@firstName nvarchar (20),
    @lastName nvarchar (20),
    @email nvarchar (50),
    @password char(3),
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
	 UPDATE Users set username=@username, firstName = @firstName ,lastName = @lastName, [email]=@email,
	 [password] = @password, [phone]=@phone, position=@position, jobType=@jobType, depId=@depId, isActive=@isActive
	 where userId = @userId
END
GO


