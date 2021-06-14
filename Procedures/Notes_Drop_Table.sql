USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Notes_Drop_Table]
AS
BEGIN
    DROP TABLE [dbo].[Notes]
END

GO

EXECUTE [dbo].[Notes_Drop_Table]

GO