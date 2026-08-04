USE peoplepulse_db;

-- Total Hiring
SELECT COUNT(*) AS Total_Hiring
FROM hiring;

-- Hiring Source
SELECT
source,
COUNT(*) AS Total
FROM hiring
GROUP BY source
ORDER BY Total DESC;

-- Average Lead Time
SELECT
ROUND(AVG(lead_time_days),2) AS Avg_Lead_Time
FROM hiring;

-- Hiring Status
SELECT
status,
COUNT(*) AS Total
FROM hiring
GROUP BY status;

-- Monthly Hiring Trend
SELECT
MONTH(joining_date) AS Joining_Month,
COUNT(*) AS Total
FROM hiring
GROUP BY MONTH(joining_date)
ORDER BY Joining_Month;