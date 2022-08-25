Use master; 

Drop database If Exists PRS;

create database PRS;
go

Use PRS;

create TABLE Users (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Username varchar(30) NOT NULL UNIQUE,
    Password varchar(30) NOT NULL,
    Firstname varchar(30) NOT NULL,
    Lastname varchar(30) NOT NULL,
    Phone varchar(12) NULL,
    Email varchar(255) NULL,
    IsReviewer bit NOT NULL DEFAULT 0,
    IsAdmin bit NOT NULL DEFAULT 0
);

create TABLE Vendors (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Code varchar(30) NOT NULL UNIQUE,
    Name varchar(30) NOT NULL,
    Address varchar(30) NOT NULL,
    City varchar(30) NOT NULL,
    State char(2) NOT NULL,
    Zip char(5) NOT NULL,
    Phone varchar (12) NULL,
    Email varchar(255) NULL,
);

create TABLE Products (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    PartNbr varchar(30) NOT NULL UNIQUE,
    Name varchar(30) NOT NULL,
    Price DECIMAL (11, 2) NOT NULL,
    Unit varchar(30) NOT NULL DEFAULT 'EACH',
    PhotoPath varchar(255)  NULL,
    VendorId INT NOT NULL FOREIGN KEY REFERENCES Vendors(Id)
);

create TABLE Requests (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Description varchar(80) NOT NULL,
    Justification varchar(80) NOT NULL,
    RejectionReason varchar(80) NULL,
    DeliveryMode varchar(20) NOT NULL DEFAULT 'Pickup',
    Status varchar(10) NOT NULL DEFAULT 'NEW',
    Total DECIMAL (11,2) NOT NULL DEFAULT 0,
    UserId INT NOT NULL FOREIGN KEY REFERENCES Users(Id)
);

create TABLE RequestLines (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    RequestId INT NOT NULL FOREIGN KEY REFERENCES Requests(Id),
    ProductId INT NOT NULL FOREIGN KEY REFERENCES Products(Id),
    Quantity INT NOT NULL DEFAULT 1
);

GO

-- Add Users
Insert Users (Username, Password, Firstname, Lastname, IsReviewer, IsAdmin) VALUES
    ('sa', 'sa', 'Systems', 'Admin', 1, 1),
    ('rv', 'rv', 'Systems', 'Reviewer', 1, Default),
    ('us', 'us', 'Systems', 'User', 0, Default);
    
-- Add Vendors  
INSERT Vendors (Code, Name, Address, City, State, Zip) VALUES
    ('AMAZ', 'Amazon', '1 Amazon Way', 'Seatle', 'WA', '98765'),
    ('MSFT', 'Microsoft', '1 Microsoft', 'Redmond', 'WA', '98765'),
    ('BBUY', 'BestBuy', '1 Best Buy', 'Atlanta', 'GA', '12345');

-- Add Products
INSERT Products (PartNbr, Name, Price, VendorId) VALUES
    ('Echo', 'Echo Std', 100, (SELECT Id from Vendors Where Code = 'AMAZ')),
    ('EchoDot', 'Echo Dot', 50, (SELECT Id from Vendors Where Code = 'AMAZ')),
    ('EchoShow5', 'Echo Show 5', 150, (SELECT Id from Vendors Where Code = 'AMAZ')),
    ('EchoShow8', 'Echo Show 8', 200, (SELECT Id from Vendors Where Code = 'AMAZ'));