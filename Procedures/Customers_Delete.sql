USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Customers_Delete]
    @CustomerID int
AS
BEGIN
    DELETE FROM [dbo].[Customers]
    WHERE
        [CustomerID] = @CustomerID
END

GO

EXECUTE [dbo].[Customers_Delete] 
    @CustomerID=1

GO