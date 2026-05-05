-- Retrieves all departments in the hospital
SELECT * FROM Department;

-- Retrieves all roles available in the hospital
SELECT * FROM Role;

-- Displays each personnel's name along with their department and role
SELECT P.FirstName, D.DepartmentName, R.RoleName 
FROM Personnel P JOIN Department D ON 
P.DepartmentID=D.DepartmentID 
JOIN Role R ON P.RoleID=R.RoleID;

-- Shows attendance status of each personnel with the recorded date
SELECT P.FirstName,A.DateRecorded, A.ToBeFilled FROM Attendance 
A JOIN Personnel P ON A.PersonnelID=P.PersonnelID;

-- Displays the relationship between personnel and their qualifications
SELECT * FROM PersonnelQualifications;

-- Counts the number of personnel in each department
SELECT D.DepartmentName, COUNT(P.PersonnelID) AS TotalStaff
FROM Department D
LEFT JOIN Personnel P ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName;

-- Displays personnel full name, role, department, and assigned shift
SELECT 
    P.FirstName + ' ' + P.LastName AS FullName,
    R.RoleName,
    D.DepartmentName,
    S.ShiftName
FROM Personnel P
JOIN Role R ON P.RoleID = R.RoleID
JOIN Department D ON P.DepartmentID = D.DepartmentID
JOIN Shifts S ON P.ShiftID = S.ShiftID;

-- Retrieves all personnel who were marked absent
SELECT 
    P.FirstName,
    P.LastName,
    A.DateRecorded
FROM Attendance A
JOIN Personnel P ON A.PersonnelID = P.PersonnelID
WHERE A.ToBeFilled = 'Absent';