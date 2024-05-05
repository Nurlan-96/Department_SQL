create database Employees
ALTER DATABASE Employees MODIFY NAME = Department;
CREATE TABLE Employees (
    ID int IDENTITY(1,1) PRIMARY KEY,
    FullName nvarchar(255) NOT NULL,
    Age int NOT NULL CHECK (Age >= 0),
    Email nvarchar(255) NOT NULL UNIQUE,
    Salary INT NOT NULL CHECK (Salary BETWEEN 300 AND 2000)
);
insert into Employees
values ('John Doe', 22, 'jd@gmail.com', 450)
insert into Employees
values ('Nelson Bigetti', 24, 'nbigetti@gmail.com', 2000)
insert into Employees
values ('Richard Hendricks', 25, 'richie@gmail.com', 1200)
select * from Employees
update Employees set Salary=500 where ID=1
select * from Employees where Salary between 500 and 1500
select FullName, Email, Salary from Employees order by Salary desc