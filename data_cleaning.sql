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

# 📊 Exploratory Data Analysis (EDA)

## Overview

After cleaning and validating the dataset, Exploratory Data Analysis (EDA) was performed to understand the overall characteristics of the retail sales data before conducting business analysis.

The objective of this phase was to summarize the dataset, identify sales patterns, and understand customer purchasing behavior using SQL queries in PostgreSQL.

---

## Objectives of EDA

The exploratory analysis aimed to answer the following questions:

- How many sales transactions are present?
- How many unique customers made purchases?
- Which product categories are available?
- What is the overall sales distribution?
- Which time periods generated the highest sales?
- How are customers distributed across different age groups?

---

## SQL Concepts Used

The following SQL concepts were applied during the exploratory analysis:

- SELECT
- DISTINCT
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()
- GROUP BY
- ORDER BY
- Aggregate Functions
- Date Functions

---

## Exploratory Questions

The following SQL queries were used to better understand the dataset before performing business analysis.

### 1. Total Number of Sales Transactions

Purpose:
Determine the total number of transactions available for analysis.

---

### 2. Total Number of Customers

Purpose:
Identify how many unique customers are present in the dataset.

---

### 3. Product Categories

Purpose:
Understand which product categories are available.

---

### 4. Sales Date Range

Purpose:
Identify the earliest and latest transaction dates.

---

### 5. Customer Demographics

Purpose:
Explore customer distribution by gender and age.

---

### 6. Overall Sales Statistics

Purpose:
Calculate total revenue, average sales value, minimum sale, and maximum sale amount.

---

## Outcome of EDA

The exploratory analysis helped develop a better understanding of the dataset before moving into business-focused analysis.

Key observations included:

- The dataset contains complete retail transaction records.
- Multiple product categories contribute to total sales.
- Customers belong to different demographic groups.
- Sales transactions span multiple months and years.
- The cleaned dataset is suitable for business analysis.

EDA provided the foundation for answering business questions using SQL.
