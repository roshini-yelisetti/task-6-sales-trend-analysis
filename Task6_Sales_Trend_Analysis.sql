-- Monthly Revenue Analysis

SELECT
    YEAR(`Order Date`) AS Year,
    MONTH(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM `sample_ superstore`
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Year, Month;

-- Monthly Order Volume

SELECT
    YEAR(`Order Date`) AS Year,
    MONTH(`Order Date`) AS Month,
    COUNT(DISTINCT `Order ID`) AS Order_Volume
FROM `sample_ superstore`
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Year, Month;

-- Monthly Revenue and Order Volume

SELECT
    YEAR(`Order Date`) AS Year,
    MONTH(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Total_Revenue,
    COUNT(DISTINCT `Order ID`) AS Order_Volume
FROM `sample_ superstore`
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Year, Month;

-- Top 3 Months by Sales

SELECT
    YEAR(`Order Date`) AS Year,
    MONTH(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM `sample_ superstore`
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Total_Revenue DESC
LIMIT 3;

-- Revenue Analysis for 2017

SELECT
    MONTH(`Order Date`) AS Month,
    ROUND(SUM(Sales),2) AS Revenue
FROM `sample_ superstore`
WHERE YEAR(`Order Date`) = 2017
GROUP BY MONTH(`Order Date`)
ORDER BY Month;