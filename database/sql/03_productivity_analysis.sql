USE peoplepulse_db;

-- Average Performance Score
SELECT ROUND(AVG(performance_score),2) AS Avg_Performance
FROM performance;

-- Average Productivity Score
SELECT ROUND(AVG(productivity_score),2) AS Avg_Productivity
FROM performance;

-- Department-wise Performance
SELECT
e.department,
ROUND(AVG(p.performance_score),2) AS Avg_Performance
FROM employees e
JOIN performance p
ON e.employee_id = p.employee_id
GROUP BY e.department
ORDER BY Avg_Performance DESC;

-- Department-wise Productivity
SELECT
e.department,
ROUND(AVG(p.productivity_score),2) AS Avg_Productivity
FROM employees e
JOIN performance p
ON e.employee_id = p.employee_id
GROUP BY e.department
ORDER BY Avg_Productivity DESC;

-- Average Work Hours
SELECT
ROUND(AVG(work_hours),2) AS Avg_Work_Hours
FROM attendance;

-- Average Overtime
SELECT
ROUND(AVG(overtime_hours),2) AS Avg_Overtime
FROM attendance;

-- Attendance Status Distribution
SELECT
attendance_status,
COUNT(*) AS Total
FROM attendance
GROUP BY attendance_status;