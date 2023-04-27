--Создание таблиц
DROP TABLE IF EXISTS Regions;
CREATE TABLE Regions (
    Id serial PRIMARY KEY,
    Name varchar
);

DROP TABLE IF EXISTS Managers;
CREATE TABLE Managers (
    Id serial PRIMARY KEY,
    Name varchar,
    Last_name varchar
);

DROP TABLE IF EXISTS Locations;
CREATE TABLE Locations (
    Id serial PRIMARY KEY,
    Address varchar,
    Region_id int REFERENCES Regions (Id)
);

DROP TABLE IF EXISTS Departaments;
CREATE TABLE Departaments (
    Id serial PRIMARY KEY,
    Name varchar,
    Location_id int REFERENCES Locations (Id),
    Manager_id int REFERENCES Managers (Id)
);

DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees (
    Id serial PRIMARY KEY,
    Name varchar,
    Last_name varchar,
    Hire_date date,
    Sallary int,
    Email varchar,
    Manager_id int REFERENCES Managers (Id),
    Departament_id int REFERENCES Departaments (Id)
);
