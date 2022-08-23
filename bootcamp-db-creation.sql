Use master; 

Drop database If Exists Bootcamp;

create database Bootcamp;

Use Bootcamp;

create table Students (
    StudentId int NOT NULL Primary Key IDENTITY (1,1),
    FirstName varchar(30) NOT NULL,
    LastName varchar(60) NOT NULL,
    City varchar(60) NOT NULL,
    StateCode char(2) NOT NULL Default 'OH',
    Phone varchar(60) NOT NULL UNIQUE,
    Email varchar(100) NULL,
    DateOfBirthday DATE NOT NULL
);

create table GraduationRequirements  (
    Id int NOT NULL Primary Key IDENTITY (1,1),
    StudentId int NOT NULL FOREIGN KEY REFERENCES Students(StudentId),
    Topic varchar(60) NOT NULL,
    Score int NULL CHECK (Score >= 0 and Score <= 120),
    DateTaken DATE NULL 
);

Insert Students

    (FirstName, LastName, City, StateCode, Phone, Email, DateOfBirthday)

    VALUES

    ('Jack', 'Lambert', 'Cincinnati', 'OH', '513-999-1234', 'jLambert@gmail.com', '8/23/1995'),
    ('Sam', 'Schultz', 'New Port', 'KY', '513-888-1234', 'sschultz@gmail.com','8/23/1995'),
    ('James', 'Jameson', 'Cincinnati', 'OH', '513-777-1234', 'jjameson@gmail.com', '8/23/1985'),
    ('Ian', 'Smith', 'Loveland', 'OH', '513-666-1234', 'ismith@gmail.com', '05/01/1995'),
    ('Caleb', 'Calebman', 'Dayton', 'OH', '513-555-1234', 'ccalebman@gmail.com', '8/23/1985'),
    ('Karl', 'Banks', 'Dayton', 'OH', '513-444-1234', 'kbanks@gmail.com', '8/23/1992'),
    ('Billy', 'Dotson', 'Columbus', 'OH', '614-333-2134', 'wdotson@gmail.com', '8/23/1992'),
    ('Josh', 'Scott', 'Pitsburg', 'PA', '513-222-2134', 'jscott@gmail.com', '8/23/1985')

Insert GraduationRequirements 
    (StudentId, Topic) VALUES
    ((select StudentId from Students where FirstName = 'Jack'), 'Git/Github'),
    (1, 'SQL'),
    (1, 'C#'),
    (1, 'JaveScript'),
    (1, 'Angular'),
    (1, 'Capstone'),
    (2, 'Git/Github'),
    (2, 'SQL'),
    (2, 'C#'),
    (2, 'JaveScript'),
    (2, 'Angular'),
    (2, 'Capstone'),
    (3, 'Git/Github'),
    (3, 'SQL'),
    (3, 'C#'),
    (3, 'JaveScript'),
    (3, 'Angular'),
    (3, 'Capstone'),
    (4, 'Git/Github'),
    (4, 'SQL'),
    (4, 'C#'),
    (4, 'JaveScript'),
    (4, 'Angular'),
    (4, 'Capstone'),
    (5, 'Git/Github'),
    (5, 'SQL'),
    (5, 'C#'),
    (5, 'JaveScript'),
    (5, 'Angular'),
    (5, 'Capstone'),
    (6, 'Git/Github'),
    (6, 'SQL'),
    (6, 'C#'),
    (6, 'JaveScript'),
    (6, 'Angular'),
    (6, 'Capstone'),
    (7, 'Git/Github'),
    (7, 'SQL'),
    (7, 'C#'),
    (7, 'JaveScript'),
    (7, 'Angular'),
    (7, 'Capstone'),
    (8, 'Git/Github'),
    (8, 'SQL'),
    (8, 'C#'),
    (8, 'JaveScript'),
    (8, 'Angular'),
    (8, 'Capstone');
    
