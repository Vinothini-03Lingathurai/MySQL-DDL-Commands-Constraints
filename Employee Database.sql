-- employee database creation
create database employee ;
use employee ;
-- Department Table
CREATE TABLE Department (
Department_ID int ,
Department_Name varchar(100) 
);
-- Locations Table
CREATE TABLE Locations (
Location_ID int ,
Location varchar(30)  
);
-- Employeess Table
CREATE TABLE Employeess (
Employee_ID int primary key ,
Employee_Name varchar(50) not null ,
Gender enum('M','F'),
Age int ,
Hire_Date date  ,
Designation varchar(100) ,
Department_ID int ,
Location_ID int ,
Salary decimal(10.2) 
);
-- Table Alteration
ALTER TABLE Employeess
ADD email varchar(150);
ALTER TABLE Employeess
MODIFY Designation varchar(200);
ALTER TABLE Employeess
DROP COLUMN Age;
ALTER TABLE Employeess
CHANGE  Hire_Date Date_of_Joining DATE;
-- Table Renaming
RENAME TABLE Department TO Departments_Info;
RENAME TABLE Locations TO Location_Details;
-- Table Truncation
TRUNCATE TABLE Employeess;
-- Database & Table Dropping
DROP TABLE Employeess;
DROP DATABASE employee;
-- Database Recreation
CREATE DATABASE Employee ;
USE Employee ;
-- Department Table
CREATE TABLE Department (
Department_ID INT PRIMARY KEY ,
Department_Name VARCHAR(100) NOT NULL UNIQUE 
);
-- Location Table
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100) NOT NULL UNIQUE
);
-- Employees Table
CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY,
    Employee_Name VARCHAR(100) NOT NULL,
    Gender CHAR(1) CHECK (gender IN ('M', 'F')),
    Age INT CHECK (age >= 18),
    Designation VARCHAR(100),
    Hire_Date DATE DEFAULT CURRENT_TIMESTAMP,
    Department_ID INT,
    location_id INT,
    FOREIGN KEY (Department_ID) REFERENCES Department(Department_ID),
    FOREIGN KEY (location_id) REFERENCES Location(location_id)
);








