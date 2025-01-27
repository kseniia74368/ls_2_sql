CREATE DATABASE [Academy]
GO
USE [Academy]
GO
CREATE TABLE Teachers (
	Id INT IDENTITY (1, 1) NOT NULL  PRIMARY KEY,
	[EmploymentDate] DATE NOT NULL CHECK (EmploymentDate >=  '01.01.1990'),
	[Name] NVARCHAR(MAX) NOT NULL CHECK (LEN(Name) > 0),
	[Premium] MONEY NOT NULL CHECK (Premium >= 0),
	[Salary] MONEY NOT NULL CHECK (Salary > 0),
	[Surname] NVARCHAR(MAX) NOT NULL CHECK (LEN(Surname) > 0)
);

CREATE TABLE Groups (
	Id INT IDENTITY (1, 1) NOT NULL  PRIMARY KEY,
	[Name] NVARCHAR(10) NOT NULL CHECK (LEN(Name) > 0) UNIQUE,
	[Rating] INT NOT NULL CHECK (Rating >= 0 AND Rating <= 5),
	[Year] INT NOT NULL CHECK (Year >= 1 AND Year <= 5)
);

CREATE TABLE Departments (
	Id INT IDENTITY (1, 1) NOT NULL  PRIMARY KEY,
	[Financing] MONEY NOT NULL CHECK (Financing > 0),
	[Name] NVARCHAR(100) NOT NULL CHECK (LEN(Name) > 0) UNIQUE,
);

CREATE TABLE Faculties (
	Id INT IDENTITY (1, 1) NOT NULL  PRIMARY KEY,
	[Name] NVARCHAR(100) NOT NULL CHECK (LEN(Name) > 0) UNIQUE
);