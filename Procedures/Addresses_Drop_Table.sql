USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Addresses_Drop_Table]
AS
BEGIN
    DROP TABLE [dbo].[Addresses]
END

GO

EXECUTE [dbo].[Addresses_Drop_Table]

GO