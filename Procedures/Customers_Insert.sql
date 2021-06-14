USE [CustomerLib_Maslov]

GO

CREATE PROCEDURE [dbo].[Customers_Insert]
	@FirstName nvarchar(50),
	@LastName nvarchar(50),
	@PhoneNumber nvarchar(15),
	@Email nvarchar(50),
	@TotalPurchasesAmount money
AS
BEGIN
	INSERT INTO [dbo].[Customers]
    (
		[FirstName],
		[LastName],
		[PhoneNumber],
		[Email],
		[TotalPurchasesAmount]
	) 
    VALUES 
    (
		@FirstName,
		@LastName,
		@PhoneNumber,
		@Email,
		@TotalPurchasesAmount
	)
END

GO

EXECUTE [dbo].[Customers_Insert]
	@FirstName='TestFirstName',
	@LastName='TestLastName',  
	@PhoneNumber='+123123123', 
	@Email='test@gmail.com',
	@TotalPurchasesAmount=100.50

GO