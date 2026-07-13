/*
====================================================
Retail Sales Analysis
Data Cleaning Script
Database : PostgreSQL
Tool     : pgAdmin 4
====================================================
*/

----------------------------------------------------
-- 1. View Complete Dataset
----------------------------------------------------

SELECT *
FROM retail_sales;

----------------------------------------------------
-- 2. Count Total Records
----------------------------------------------------

SELECT COUNT(*)
FROM retail_sales;

----------------------------------------------------
-- 3. Check for Missing (NULL) Values
----------------------------------------------------

SELECT *
FROM retail_sales
WHERE
    sale_date IS NULL
    OR sale_time IS NULL
    OR customer_id IS NULL
    OR gender IS NULL
    OR age IS NULL
    OR category IS NULL
    OR quantity IS NULL
    OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sales IS NULL;

----------------------------------------------------
-- 4. Remove Incomplete Records
----------------------------------------------------

DELETE
FROM retail_sales
WHERE
    sale_date IS NULL
    OR sale_time IS NULL
    OR customer_id IS NULL
    OR gender IS NULL
    OR age IS NULL
    OR category IS NULL
    OR quantity IS NULL
    OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sales IS NULL;

----------------------------------------------------
-- 5. Verify Clean Dataset
----------------------------------------------------

SELECT COUNT(*)
FROM retail_sales;
