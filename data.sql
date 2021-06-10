-- Valid Cases

USE CustomerLib_Maslov

GO

INSERT INTO dbo.Customers VALUES 
(
	'Vladislav',
	'Maslov',
	'+79048078568',
	'ultematum091@gmail.com',
	100
)

GO

INSERT INTO dbo.Addresses VALUES 
(
	1,
	'st. Pushkina',
	'house Kolotushkina',
	'Billing',
	'Chelyabinsk',
	'123456',
	'Texas',
	'United States'
)

GO

INSERT INTO dbo.Notes VALUES 
(
	1,
	'Hello'
)

GO

INSERT INTO dbo.Notes VALUES 
(
	1,
	'World'
)

GO

-- Invalid Cases

INSERT INTO dbo.Customers VALUES 
(
	'Vladislavvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv',
	'Maslov',
	'+79048078568',
	'ultematum091@gmail.com',
	100
)

GO

INSERT INTO dbo.Addresses VALUES 
(
	null,
	'st. Pushkina',
	'house Kolotushkina',
	'Billing',
	'Chelyabinsk',
	'123456',
	'Texas',
	'United States'
)

GO

INSERT INTO dbo.Addresses VALUES 
(
	1,
	'st. Pushkina',
	'house Kolotushkina',
	'Billin',
	'Chelyabinsk',
	'123456',
	'Texas',
	'United States'
)

GO

INSERT INTO dbo.Notes VALUES 
(
	null,
	'st. Pushkina'
)

GO