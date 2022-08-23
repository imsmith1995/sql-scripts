Use master; 

Drop database If Exists PRS;

create database PRS;

Use PRS;

create TABLE Users (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Username varchar(30) NOT NULL UNIQUE,
    Password varchar(30) NOT NULL,
    Firstname varchar(30) NOT NULL,
    Lastname varchar(30) NOT NULL,
    Phone varchar(12) NULL,
    Email varchar(255) NOT NULL,
    IsReviewer bit NOT NULL,
    IsAdmin bit NOT NULL
);

create TABLE Vendors (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Code varchar(30) NOT NULL UNIQUE,
    Name varchar(30) NOT NULL,
    Address varchar(30) NOT NULL,
    City varchar(30) NOT NULL,
    State char(2) NOT NULL,
    Zip varchar(5) NOT NULL,
    Phone varchar (12) NOT NULL,
    Email varchar(255) NOT NULL,
);

create TABLE Products (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    PartNbr varchar(30) NOT NULL UNIQUE,
    Name varchar(30) NOT NULL,
    Price DECIMAL (11, 2) NOT NULL,
    Unit varchar(30) NOT NULL,
    PhotoPath varchar(255)  NULL,
    VendorId INT NOT NULL FOREIGN KEY REFERENCES Vendors(Id)
);

create TABLE Requests (
    Id INT NOT NULL PRIMARY KEY IDENTITY (1, 1),
    Description varchar(80) NOT NULL,
    Justification varchar(80) NOT NULL,
    RejectionReason varchar(80) NULL,
    Delivery varchar(20) NOT NULL DEFAULT 'Pickup',
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

