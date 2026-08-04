USE peoplepulse_db;

-- ==========================================
-- PEOPLEPULSE ATTRITION ANALYSIS
-- ==========================================

-- 1. Overall Attrition
SELECT
    status,
    COUNT(*) AS Employees
FROM employees
GROUP BY status;

-- 2. Department-wise Attrition
SELECT
    department,
    status,
    COUNT(*) AS Employees
FROM employees
GROUP BY department, status
ORDER BY department;

-- 3. Location-wise Attrition
SELECT
    location,
    status,
    COUNT(*) AS Employees
FROM employees
GROUP BY location, status
ORDER BY location;

-- 4. Grade-wise Attrition
SELECT
    grade,
    status,
    COUNT(*) AS Employees
FROM employees
GROUP BY grade, status
ORDER BY grade;

-- 5. Employment Type vs Attrition
SELECT
    employment_type,
    status,
    COUNT(*) AS Employees
FROM employees
GROUP BY employment_type, status;

-- 6. Gender vs Attrition
SELECT
    gender,
    status,
    COUNT(*) AS Employees
FROM employees
GROUP BY gender, status;

-- 7. Average Tenure of Exited Employees
SELECT
    ROUND(AVG(tenure_years),2) AS Avg_Tenure_Exited
FROM employees
WHERE status='Exited';

-- 8. Average Salary of Exited Employees
SELECT
    ROUND(AVG(salary),2) AS Avg_Salary_Exited
FROM employees
WHERE status='Exited';

-- 9. Top Departments by Attrition
SELECT
    department,
    COUNT(*) AS Exits
FROM employees
WHERE status='Exited'
GROUP BY department
ORDER BY Exits DESC;