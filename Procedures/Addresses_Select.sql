USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Addresses_Select]
    @AddressId int
AS
BEGIN
    SELECT * FROM [dbo].[Addresses]
    WHERE
        [AddressId] = @AddressId
END

GO

EXECUTE [dbo].[Addresses_Select] 
    @AddressId=1

GO