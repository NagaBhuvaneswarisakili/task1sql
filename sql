1. Convert employee names to UPPERCASE
SELECT EmpID, UPPER(Name) AS Name_Upper
FROM Emp;

2. Convert department names to lowercase
SELECT EmpID, LOWER(Department) AS Dept_Lower
FROM Emp;

3. Get length of employee names
SELECT Name, LENGTH(Name) AS Name_Length
FROM Emp;

🔹 CONCATENATION OPERATIONS
4. Combine Name and Department
SELECT CONCAT(Name, ' - ', Department) AS Employee_Details
FROM Emp;

5. Full description string
SELECT CONCAT(Name, ' works in ', Department, ' department') AS Info
FROM Emp;

🔹 SUBSTRING OPERATIONS
6. First 3 characters of employee name
SELECT Name, SUBSTRING(Name, 1, 3) AS First_3_Chars
FROM Emp;

7. Last 2 characters of city
SELECT City, SUBSTRING(City, LENGTH(City)-1, 2) AS Last_2_Chars
FROM Emp;

🔹 SEARCH & MATCH STRING OPERATIONS
8. Employees whose name starts with 'S'
SELECT * FROM Emp
WHERE Name LIKE 'S%';

9. Employees whose city contains 'ba'
SELECT * FROM Emp
WHERE City LIKE '%ba%';

10. Employees whose department ends with 'es'
SELECT * FROM Emp
WHERE Department LIKE '%es';

🔹 REPLACE & TRIM OPERATIONS
11. Replace 'IT' with 'Technology'
SELECT Name, REPLACE(Department, 'IT', 'Technology') AS New_Department
FROM Emp;

12. Remove spaces from names (example)
SELECT TRIM(Name) AS Clean_Name
FROM Emp;

🔹 POSITION & STRING EXTRACTION
13. Find position of letter 'a' in name
SELECT Name, INSTR(Name, 'a') AS Position_A
FROM Emp;

14. Extract first word from city
SELECT City, SUBSTRING_INDEX(City, ' ', 1) AS City_First_Word
FROM Emp;

🔹 CASE & FORMATTING
15. Display name with city in brackets
SELECT CONCAT(Name, ' (', City, ')') AS Name_With_City
FROM Emp;

16. Mask employee name (first letter only)
SELECT Name,
       CONCAT(LEFT(Name,1), REPEAT('*', LENGTH(Name)-1)) AS Masked_Name
FROM Emp;

🔹 CONDITIONAL STRING OPERATIONS
17. Show category based on name length
SELECT Name,
CASE
    WHEN LENGTH(Name) > 5 THEN 'Long Name'
    ELSE 'Short Name'
END AS Name_Type
FROM Emp;
