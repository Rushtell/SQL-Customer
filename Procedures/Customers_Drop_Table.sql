USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Customers_Drop_Table]
AS
BEGIN
    DROP TABLE [dbo].[Customers]
END

GO

EXECUTE [dbo].[Customers_Drop_Table]

GO