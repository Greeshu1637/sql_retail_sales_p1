/*
===============================================================================
Project      : Retail Sales Performance Analysis using SQL
Database     : PostgreSQL
Tool         : pgAdmin 4
Author       : Greeshma Polanki

Description:
This script contains exploratory data analysis (EDA) and business analysis
queries performed on the retail_sales dataset.

The objective is to analyze customer purchasing behavior, product performance,
sales trends, and business metrics using PostgreSQL.

===============================================================================
*/

-- ============================================================================
-- SECTION 1 : EXPLORATORY DATA ANALYSIS (EDA)
-- ============================================================================

-- ----------------------------------------------------------------------------
-- EDA 1: Total Number of Sales Transactions
-- Purpose:
-- Determine the total number of transactions available for analysis.
-- ----------------------------------------------------------------------------

SELECT COUNT(*) AS total_transactions
FROM retail_sales;

-- ----------------------------------------------------------------------------
-- EDA 2: Total Number of Unique Customers
-- Purpose:
-- Determine how many unique customers made purchases.
-- ----------------------------------------------------------------------------

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;

-- ----------------------------------------------------------------------------
-- EDA 3: Total Product Categories
-- Purpose:
-- Identify the number of unique product categories.
-- ----------------------------------------------------------------------------

SELECT COUNT(DISTINCT category) AS total_categories
FROM retail_sales;

-- ----------------------------------------------------------------------------
-- EDA 4: Sales Date Range
-- Purpose:
-- Identify the earliest and latest sales dates.
-- ----------------------------------------------------------------------------

SELECT
    MIN(sale_date) AS first_sale_date,
    MAX(sale_date) AS last_sale_date
FROM retail_sales;

-- ----------------------------------------------------------------------------
-- EDA 5: Overall Sales Statistics
-- Purpose:
-- Summarize total revenue and sales values.
-- ----------------------------------------------------------------------------

SELECT
    ROUND(SUM(total_sale)::NUMERIC,2) AS total_revenue,
    ROUND(AVG(total_sale)::NUMERIC,2) AS average_sale,
    MIN(total_sale) AS minimum_sale,
    MAX(total_sale) AS maximum_sale
FROM retail_sales;

-- ============================================================================
-- SECTION 2 : BUSINESS ANALYSIS
-- ============================================================================
-- ----------------------------------------------------------------------------
-- Business Question 1
-- Retrieve all transactions made on 05-Nov-2022.
-- ----------------------------------------------------------------------------

SELECT *
FROM retail_sales
WHERE sale_date = '2022-11-05';

-- ----------------------------------------------------------------------------
-- Business Question 2
-- Retrieve Clothing transactions with quantity greater than 3 during Nov-2022.
-- ----------------------------------------------------------------------------

SELECT *
FROM retail_sales
WHERE category = 'Clothing'
  AND TO_CHAR(sale_date,'YYYY-MM')='2022-11'
  AND quantity >= 3;

-- ----------------------------------------------------------------------------
-- Business Question 3
-- Calculate total revenue and total orders for each category.
-- ----------------------------------------------------------------------------

SELECT
    category,
    ROUND(SUM(total_sale)::NUMERIC,2) AS total_revenue,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;

-- ----------------------------------------------------------------------------
-- Business Question 4
-- Find the average age of customers purchasing Beauty products.
-- ----------------------------------------------------------------------------

SELECT
    ROUND(AVG(age)::NUMERIC,2) AS average_age
FROM retail_sales
WHERE category='Beauty';

-- ----------------------------------------------------------------------------
-- Business Question 5
-- Find all transactions where total sale exceeds 1000.
-- ----------------------------------------------------------------------------

SELECT *
FROM retail_sales
WHERE total_sale > 1000;

-- ----------------------------------------------------------------------------
-- Business Question 6
-- Count transactions by gender within each product category.
-- ----------------------------------------------------------------------------

SELECT
    category,
    gender,
    COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY category, gender
ORDER BY category;

-- ----------------------------------------------------------------------------
-- Business Question 7
-- Identify the best-selling month (highest average sales) in each year.
-- ----------------------------------------------------------------------------

SELECT
    year,
    month,
    average_sale
FROM
(
    SELECT
        EXTRACT(YEAR FROM sale_date) AS year,
        EXTRACT(MONTH FROM sale_date) AS month,
        AVG(total_sale) AS average_sale,
        RANK() OVER
        (
            PARTITION BY EXTRACT(YEAR FROM sale_date)
            ORDER BY AVG(total_sale) DESC
        ) AS sales_rank
    FROM retail_sales
    GROUP BY 1,2
) ranked_sales
WHERE sales_rank = 1;
-- ----------------------------------------------------------------------------
-- Business Question 8
-- Top 5 customers based on total spending.
-- ----------------------------------------------------------------------------

SELECT
    customer_id,
    ROUND(SUM(total_sale)::NUMERIC,2) AS total_purchase
FROM retail_sales
GROUP BY customer_id
ORDER BY total_purchase DESC
LIMIT 5;

-- ----------------------------------------------------------------------------
-- Business Question 9
-- Number of unique customers purchasing from each category.
-- ----------------------------------------------------------------------------

SELECT
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category
ORDER BY unique_customers DESC;

-- ----------------------------------------------------------------------------
-- Business Question 10
-- Number of orders placed during different time shifts.
-- ----------------------------------------------------------------------------

SELECT
    CASE
        WHEN EXTRACT(HOUR FROM sale_time) <= 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 13 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY shift
ORDER BY total_orders DESC;

-- ----------------------------------------------------------------------------
-- Business Question 11
-- Highest Revenue by Product Category.
-- ----------------------------------------------------------------------------

SELECT
    category,
    ROUND(SUM(total_sale)::NUMERIC,2) AS total_revenue
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;

-- ----------------------------------------------------------------------------
-- Business Question 12
-- Revenue Generated by Customer Age Group.
-- ----------------------------------------------------------------------------

SELECT
    CASE
        WHEN age < 20 THEN 'Below 20'
        WHEN age BETWEEN 20 AND 29 THEN '20-29'
        WHEN age BETWEEN 30 AND 39 THEN '30-39'
        WHEN age BETWEEN 40 AND 49 THEN '40-49'
        ELSE '50+'
    END AS age_group,
    ROUND(SUM(total_sale)::NUMERIC,2) AS total_revenue
FROM retail_sales
GROUP BY age_group
ORDER BY total_revenue DESC;

-- ----------------------------------------------------------------------------
-- Business Question 13
-- Peak Shopping Hours.
-- ----------------------------------------------------------------------------

SELECT
    EXTRACT(HOUR FROM sale_time) AS sales_hour,
    COUNT(*) AS total_transactions
FROM retail_sales
GROUP BY sales_hour
ORDER BY total_transactions DESC;

-- ----------------------------------------------------------------------------
-- Business Question 14
-- Average Order Value by Category.
-- ----------------------------------------------------------------------------

SELECT
    category,
    ROUND(AVG(total_sale)::NUMERIC,2) AS average_order_value
FROM retail_sales
GROUP BY category
ORDER BY average_order_value DESC;

-- ----------------------------------------------------------------------------
-- Business Question 15
-- Revenue Contribution by Category.
-- ----------------------------------------------------------------------------

SELECT
    category,
    ROUND(SUM(total_sale)::NUMERIC,2) AS total_revenue,
    ROUND(
        (
            SUM(total_sale) * 100.0 /
            SUM(SUM(total_sale)) OVER ()
        )::NUMERIC,
        2
    ) AS revenue_percentage
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;

-- ----------------------------------------------------------------------------
-- Business Question 16
-- Monthly Revenue Trend.
-- ----------------------------------------------------------------------------

SELECT
    TO_CHAR(sale_date,'YYYY-MM') AS sales_month,
    ROUND(SUM(total_sale)::NUMERIC,2) AS total_revenue
FROM retail_sales
GROUP BY sales_month
ORDER BY sales_month;

-- ============================================================================
-- END OF BUSINESS ANALYSIS SCRIPT
-- ============================================================================
