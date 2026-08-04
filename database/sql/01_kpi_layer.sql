USE peoplepulse_db;

-- =====================================================
-- PEOPLEPULSE KPI LAYER
-- =====================================================

-- 1. Total Headcount
SELECT COUNT(*) AS Total_Headcount
FROM employees;

-- 2. Active Employees
SELECT COUNT(*) AS Active_Employees
FROM employees
WHERE status = 'Active';

-- 3. Exited Employees
SELECT COUNT(*) AS Exited_Employees
FROM employees
WHERE status = 'Exited';

-- 4. Attrition Rate
SELECT
ROUND(
(COUNT(CASE WHEN status='Exited' THEN 1 END)*100.0)
/COUNT(*),2
) AS Attrition_Rate
FROM employees;

-- 5. Average Employee Age
SELECT
ROUND(AVG(age),2) AS Average_Age
FROM employees;

-- 6. Average Experience
SELECT
ROUND(AVG(experience_years),2) AS Average_Experience
FROM employees;

-- 7. Average Tenure
SELECT
ROUND(AVG(tenure_years),2) AS Average_Tenure
FROM employees;

-- 8. Department-wise Headcount
SELECT
department,
COUNT(*) AS Headcount
FROM employees
GROUP BY department
ORDER BY Headcount DESC;

-- 9. Location-wise Headcount
SELECT
location,
COUNT(*) AS Headcount
FROM employees
GROUP BY location
ORDER BY Headcount DESC;

-- 10. Grade-wise Headcount
SELECT
grade,
COUNT(*) AS Headcount
FROM employees
GROUP BY grade
ORDER BY grade;

-- 11. Employment Type Distribution
SELECT
employment_type,
COUNT(*) AS Employees
FROM employees
GROUP BY employment_type;

-- 12. Gender Distribution
SELECT
gender,
COUNT(*) AS Employees
FROM employees
GROUP BY gender;