--Department Table;
CREATE TABLE Department(
DepartmentID INT PRIMARY KEY,
DepartmentName VARCHAR(50)
);

--Roles Table
CREATE TABLE Role(
RoleID INT PRIMARY KEY,
RoleName VARCHAR(50)
);

-- Shifts Table
DROP TABLE IF EXISTS Shifts;
CREATE TABLE Shifts(
    ShiftID INT PRIMARY KEY,
    ShiftName VARCHAR(15),
    StartTime TIME,
    EndTime TIME
);

--Qualification table
CREATE TABLE Qualification(
    QualificationID INT PRIMARY KEY,
    QualificationName VARCHAR(30),
    Institution VARCHAR(30),
    YearObtained INT
);

--Personnel Table
DROP TABLE IF EXISTS Personnel;
CREATE TABLE Personnel (
PersonnelID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Gender VARCHAR(10),
Phone VARCHAR(20),
Email VARCHAR(100),
HireDate DATE,
DepartmentID INT,
RoleID INT,
ShiftID INT,
FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
FOREIGN KEY (RoleID) REFERENCES Role(RoleID),
FOREIGN KEY (ShiftID) REFERENCES Shifts(ShiftID)
);

--Attendance Table
CREATE TABLE Attendance(
    AttendanceID INT PRIMARY KEY,
    DateRecorded DATE,
    ToBeFilled VARCHAR(20),
    PersonnelID INT,
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID)

);
-- Table
CREATE TABLE PersonnelQualifications(
    QualificationID INT,
    PersonnelID INT,
    PRIMARY KEY(QualificationID,PersonnelID),
    FOREIGN KEY (PersonnelID) REFERENCES Personnel(PersonnelID),
    FOREIGN KEY (QualificationID) REFERENCES Qualification(QualificationID)

);
