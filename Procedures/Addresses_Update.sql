USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Addresses_Update]
    @AddressId int,
    @CustomerId int,
    @AddressLine nvarchar(100),
    @AddressLine2 nvarchar(100),
    @AddressType nvarchar(50),
    @City nvarchar(50),
    @PostalCode nvarchar(6),
    @State nvarchar(20),
    @Country nvarchar(50)
AS
BEGIN
    UPDATE [dbo].[Addresses] 
    SET
        [CustomerId] = @CustomerId,
        [AddressLine] = @AddressLine,
        [AddressLine2] = @AddressLine2,
        [AddressType] = @AddressType,
        [City] = @City,
        [PostalCode] = @PostalCode,
        [State] = @State,
        [Country] = @Country
    WHERE
        [AddressId] = @AddressId
END

GO

EXECUTE [dbo].[Addresses_Update] 
    @AddressId=1,
	@CustomerID=1, 
	@AddressLine='AddressLineTest2',  
	@AddressLine2='AddressLine2Test2', 
	@AddressType='Billing',
	@City='Dallas',
	@PostalCode='123457',
	@State='Texas',
	@Country='United States';

GO