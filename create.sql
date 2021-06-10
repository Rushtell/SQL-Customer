CREATE DATABASE CustomerLib_Maslov

GO

USE CustomerLib_Maslov

GO

CREATE TABLE Customers

(
	CustomerId int NOT NULL IDENTITY(1, 1),
	CONSTRAINT PK_CustomerId PRIMARY KEY CLUSTERED (CustomerId),
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	PhoneNumber NVARCHAR(50) NOT NULL,
	Email NVARCHAR(50) NOT NULL,
	TotalPurchasesAmount decimal NOT NULL
)

GO

CREATE TABLE Addresses

(
	AddressId int NOT NULL IDENTITY(1, 1),
	CONSTRAINT PK_AddressId PRIMARY KEY CLUSTERED (AddressId),
	CustomerId int NOT NULL,
	CONSTRAINT FK_Addresses_Customers FOREIGN KEY (CustomerId) REFERENCES dbo.Customers(CustomerId),
	AddressLine NVARCHAR(100) NOT NULL,
	AddressLine2 NVARCHAR(100) NOT NULL,
	AddressType NVARCHAR(50) NOT NULL,
	CONSTRAINT CK_Addresses_AddressType CHECK(AddressType in ('Billing', 'Shipping')),
	City NVARCHAR(50) NOT NULL,
	PostalCode NVARCHAR(6) NOT NULL,
	[State] NVARCHAR(20) NOT NULL,
	Country NVARCHAR(50) NOT NULL,
	CONSTRAINT CK_Addresses_Country CHECK(Country in ('United States', 'Canada'))
)

GO

CREATE TABLE Notes	

(
	NoteId int NOT NULL IDENTITY(1, 1),
	CONSTRAINT PK_NoteId PRIMARY KEY CLUSTERED (NoteId),
	CustomerId int NOT NULL,
	CONSTRAINT FK_Notes_Customers FOREIGN KEY (CustomerId) REFERENCES dbo.Customers(CustomerId),
	Note TEXT NOT NULL,
)

GO