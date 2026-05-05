INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(1, 'Surgery'),
(2, 'Pediatrics'),
(3, 'Radiology'),
(4, 'Cardiology'),
(5, 'Neurology'),
(6, 'Orthopedics'),
(7, 'Pharmacy'),
(8, 'Emergency'),
(9, 'Dermatology'),
(10, 'Laboratory');

INSERT INTO Role (RoleID, RoleName)
VALUES
(1, 'Doctor'),
(2, 'Nurse'),
(3, 'Lab Technician'),
(4, 'Pharmacist'),
(5, 'Surgeon'),
(6, 'Radiologist'),
(7, 'Therapist'),
(8, 'Receptionist'),
(9, 'Administrator'),
(10, 'Cleaner');

INSERT INTO Shifts (ShiftID, ShiftName, StartTime, EndTime)
VALUES
(1, 'Morning A', '06:00', '12:00'),
(2, 'Morning B', '08:00', '14:00'),
(3, 'Afternoon A', '12:00', '18:00'),
(4, 'Afternoon B', '14:00', '20:00'),
(5, 'Night A', '18:00', '00:00'),
(6, 'Night B', '20:00', '02:00'),
(7, 'Night C', '22:00', '06:00'),
(8, 'Weekend Morning', '08:00', '16:00'),
(9, 'Weekend Night', '16:00', '00:00'),
(10, 'Emergency Shift', '00:00', '08:00');

INSERT INTO Qualification (QualificationID, QualificationName, Institution, YearObtained)
VALUES
(1, 'MBChB', 'Makerere University', 2020),
(2, 'Nursing Diploma', 'Mbarara Nursing School', 2019),
(3, 'BSc Laboratory Science', 'Kyambogo University', 2021),
(4, 'Pharmacy Diploma', 'KIU', 2020),
(5, 'MD Surgery', 'UCU', 2022),
(6, 'Radiology Certificate', 'Mulago Institute', 2021),
(7, 'Physiotherapy Degree', 'Makerere University', 2018),
(8, 'Hospital Administration', 'Nkozi University', 2020),
(9, 'Emergency Care Cert', 'Red Cross Uganda', 2023),
(10, 'Dermatology Diploma', 'Case Hospital Institute', 2022);

INSERT INTO Personnel 
(PersonnelID, FirstName, LastName, Gender, Phone, Email, HireDate, DepartmentID, RoleID, ShiftID)
VALUES
(1, 'John', 'Kato', 'Male', '0700000001', 'john1@hospital.com', '2022-01-10', 1, 1, 1),
(2, 'Sarah', 'Nankya', 'Female', '0700000002', 'sarah2@hospital.com', '2021-03-12', 2, 2, 2),
(3, 'David', 'Mugisha', 'Male', '0700000003', 'david3@hospital.com', '2020-07-20', 3, 3, 3),
(4, 'Grace', 'Achieng', 'Female', '0700000004', 'grace4@hospital.com', '2023-02-18', 4, 4, 4),
(5, 'Peter', 'Okello', 'Male', '0700000005', 'peter5@hospital.com', '2022-09-05', 5, 5, 5),
(6, 'Linda', 'Tusiime', 'Female', '0700000006', 'linda6@hospital.com', '2021-11-11', 6, 6, 6),
(7, 'James', 'Byaruhanga', 'Male', '0700000007', 'james7@hospital.com', '2020-06-30', 7, 7, 7),
(8, 'Alice', 'Nakato', 'Female', '0700000008', 'alice8@hospital.com', '2023-01-25', 8, 8, 8),
(9, 'Brian', 'Ssemakula', 'Male', '0700000009', 'brian9@hospital.com', '2019-04-14', 9, 9, 9),
(10, 'Cynthia', 'Namara', 'Female', '0700000010', 'cynthia10@hospital.com', '2022-08-08', 10, 10, 10);

INSERT INTO Attendance (AttendanceID, DateRecorded, ToBeFilled, PersonnelID)
VALUES
(1, '2026-05-01', 'Present', 1),
(2, '2026-05-01', 'Present', 2),
(3, '2026-05-01', 'Absent', 3),
(4, '2026-05-01', 'Present', 4),
(5, '2026-05-01', 'Present', 5),
(6, '2026-05-01', 'Absent', 6),
(7, '2026-05-01', 'Present', 7),
(8, '2026-05-01', 'Present', 8),
(9, '2026-05-01', 'Absent', 9),
(10, '2026-05-01', 'Present', 10);

INSERT INTO PersonnelQualifications (QualificationID, PersonnelID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);