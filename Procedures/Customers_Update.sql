USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Customers_Update]
    @CustomerID int,
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@PhoneNumber nvarchar(15),
	@Email nvarchar(50),
	@TotalPurchasesAmount money
AS
BEGIN
	UPDATE [dbo].[Customers]
	SET
        [FirstName] = @FirstName,
		[LastName] = @LastName,
		[PhoneNumber] = @PhoneNumber,
		[Email] = @Email,
		[TotalPurchasesAmount] = @TotalPurchasesAmount
	WHERE 
        [CustomerID] = @CustomerID;
END

GO

EXECUTE [dbo].[Customers_Update]
    @CustomerID=1,
	@FirstName='TestFirstName2',
	@LastName='TestLastName2',  
	@PhoneNumber='+1231231232', 
	@Email='test2@gmail.com',
	@TotalPurchasesAmount=100.10

GO