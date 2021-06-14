USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Addresses_Delete]
    @AddressId int
AS
BEGIN
    DELETE FROM [dbo].[Addresses]
    WHERE
        [AddressId] = @AddressId
END

GO

EXECUTE [dbo].[Addresses_Delete] 
    @AddressId=1

GO