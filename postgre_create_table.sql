--Создание таблиц
DROP TABLE IF EXISTS Regions CASCADE;
CREATE TABLE Regions (
    Id serial PRIMARY KEY,
    Name varchar
);

DROP TABLE IF EXISTS Locations CASCADE;
CREATE TABLE Locations (
    Id serial PRIMARY KEY,
    Address varchar,
    Region_id int REFERENCES Regions (Id)
);

DROP TABLE IF EXISTS Departaments CASCADE;
CREATE TABLE Departaments (
    Id serial PRIMARY KEY,
    Name varchar,
    Location_id int REFERENCES Locations (Id)
);

DROP TABLE IF EXISTS Employees CASCADE;
CREATE TABLE Employees (
    Id serial PRIMARY KEY,
    Name varchar,
    Last_name varchar,
    Hire_date date,
    Sallary int,
    Email varchar,
    Manager_id int REFERENCES Employees (Id),
    Departament_id int REFERENCES Departaments (Id)
);

ALTER TABLE Departaments ADD Manager_id int REFERENCES Employees (Id);