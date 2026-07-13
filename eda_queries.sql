/*
====================================================
Exploratory Data Analysis
Retail Sales Analysis
PostgreSQL
====================================================
*/

----------------------------------------------------
-- Total Transactions
----------------------------------------------------

SELECT COUNT(*) AS total_transactions
FROM retail_sales;

----------------------------------------------------
-- Unique Customers
----------------------------------------------------

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;

----------------------------------------------------
-- Product Categories
----------------------------------------------------

SELECT DISTINCT category
FROM retail_sales;

----------------------------------------------------
-- Date Range
----------------------------------------------------

SELECT
MIN(sale_date) AS first_sale,
MAX(sale_date) AS last_sale
FROM retail_sales;

----------------------------------------------------
-- Customer Distribution
----------------------------------------------------

SELECT
gender,
COUNT(*) AS customers
FROM retail_sales
GROUP BY gender;

----------------------------------------------------
-- Average Customer Age
----------------------------------------------------

SELECT
ROUND(AVG(age),2) AS average_age
FROM retail_sales;

----------------------------------------------------
-- Sales Statistics
----------------------------------------------------

SELECT
SUM(total_sales) AS total_revenue,
AVG(total_sales) AS average_sale,
MIN(total_sales) AS minimum_sale,
MAX(total_sales) AS maximum_sale
FROM retail_sales;
