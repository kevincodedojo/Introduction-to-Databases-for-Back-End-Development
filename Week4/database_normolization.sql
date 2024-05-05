-- First mormal form 1NF

CREATE TABLE Courses
(
    CourseID VARCHAR(5),
    CourseName VARCHAR(50),
    DepartmentID VARCHAR(10),
    PRIMARY KEY (CourseID),
    FOREIGN KEY (DepartmentID)
    REFERENCES Departments (DepartmentID)
);

-- Second mormal form 2NF

-- Third mormal form 3NF

create database SportsClub;

create table Players
(
    PlayerID VARCHAR(5),
    PlayerName VARCHAR(50),
    DateOfBirth DATE,
    PRIMARY KEY (PlayerID)
);

insert into Players values ('P001', 'John', '1990-01-01');
insert into Players values ('P002', 'Mary', '1991-01-01');
insert into Players values ('P003', 'Tom', '1992-01-01');

FOREIGN KEY (PlayerID) REFERENCES Players (PlayerID)

-----------------------
create database SportsClub;

table

values

Karl

select PlayerName from Players;

update Players set age = 22 where playerID = 3;

delete from Players where playerID = 4;

select PlayerID % 2 from Players;

select * from Players where age > 25;

foreign key DepartmentID references Department DepartmentID