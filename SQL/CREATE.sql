-- Active: 1672333344023@@127.0.0.1@3306
DROP DATABASE IF EXISTS DrivingSchool;
CREATE DATABASE DrivingSchool;
USE DrivingSchool;
CREATE TABLE Student
(
  Student_ID INT NOT NULL,
  First_Name VARCHAR(20) NOT NULL,
  Last_Name VARCHAR(20) NOT NULL,
  Phone VARCHAR(10) NOT NULL,
  Email VARCHAR(30) NOT NULL,
  PRIMARY KEY (Student_ID),
  UNIQUE (Phone),
  UNIQUE (Email)
);

CREATE TABLE Instructors
(
  Instructor_ID INT NOT NULL,
  First_Name VARCHAR(20) NOT NULL,
  Last_Name VARCHAR(20) NOT NULL,
  Phone VARCHAR(10) NOT NULL,
  Email VARCHAR(30) NOT NULL,
  Address VARCHAR(50) NOT NULL,
  PRIMARY KEY (Instructor_ID),
  UNIQUE (Phone),
  UNIQUE (Email)
);

CREATE TABLE Vehicles
(
  Vehicle_ID INT NOT NULL,
  Brand VARCHAR(20) NOT NULL,
  Model VARCHAR(20) NOT NULL,
  Year YEAR NOT NULL,
  PRIMARY KEY (Vehicle_ID)
);

CREATE TABLE Lessons
(
  Lesson_ID INT NOT NULL,
  Student_ID INT NOT NULL,
  Instructor_ID INT NOT NULL,
  Vehicle_ID INT NOT NULL,
  Date DATE NOT NULL,
  Time TIME NOT NULL,
  Duration INT NOT NULL,
  PRIMARY KEY (Lesson_ID),
  FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID),
  FOREIGN KEY (Instructor_ID) REFERENCES Instructors(Instructor_ID),
  FOREIGN KEY (Vehicle_ID) REFERENCES Vehicles(Vehicle_ID)
);

CREATE TABLE Payment
(
  PaymentID INT NOT NULL,
  Student_ID INT NOT NULL,
  Amount FLOAT NOT NULL,
  Date DATE NOT NULL,
  Type VARCHAR(20) NOT NULL,
  PRIMARY KEY (PaymentID),
  FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);