/*
===============================================================================
Project      : Retail Sales Performance Analysis using SQL
Database     : PostgreSQL
Author       : Greeshma Polanki
Description  :
This script performs initial data validation and cleaning on the
retail_sales table before exploratory and business analysis.

The objective is to identify missing values, remove incomplete
records, and verify the dataset is ready for analysis.

Tools Used   : PostgreSQL, pgAdmin 4
===============================================================================
*/

-- ============================================================================
-- STEP 1: Preview Dataset
-- Purpose:
-- Verify that the dataset has been imported successfully.
-- ============================================================================

SELECT *
FROM retail_sales;

-- ============================================================================
-- STEP 2: Count Total Records
-- Purpose:
-- Determine the total number of transactions before cleaning.
-- ============================================================================

SELECT COUNT(*) AS total_records
FROM retail_sales;

-- ============================================================================
-- STEP 3: Identify Missing Values
-- Purpose:
-- Detect incomplete records containing NULL values.
-- ============================================================================

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
    OR total_sale IS NULL;

-- ============================================================================
-- STEP 4: Remove Incomplete Records
-- Purpose:
-- Delete records containing missing values to improve data quality.
-- ============================================================================

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
    OR total_sale IS NULL;

-- ============================================================================
-- STEP 5: Verify Clean Dataset
-- Purpose:
-- Confirm the remaining number of valid records after cleaning.
-- ============================================================================

SELECT COUNT(*) AS cleaned_records
FROM retail_sales;

-- ============================================================================
-- End of Data Cleaning Script
-- ============================================================================
