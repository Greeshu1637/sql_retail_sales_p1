/*
===============================================================================
Project      : Retail Sales Performance Analysis using SQL
Database     : PostgreSQL
Author       : Greeshma Polanki
Description  :
This script creates the database schema required for the Retail Sales Analysis
project. It defines the retail_sales table used to store transactional sales
records for further data cleaning, exploratory data analysis, and business
reporting.

Tools Used   : PostgreSQL, pgAdmin 4
===============================================================================
*/

-- ============================================================================
-- Create Database
-- ============================================================================
-- Run this command only if the database has not already been created.

CREATE DATABASE p1_retail_db;

-- ============================================================================
-- Note:
-- Connect to the 'p1_retail_db' database in pgAdmin 4 before executing the
-- CREATE TABLE statement below.
-- ============================================================================

-- ============================================================================
-- Drop Existing Table (Optional)
-- ============================================================================
-- Uncomment the statement below if you want to recreate the table.

-- DROP TABLE IF EXISTS retail_sales;

-- ============================================================================
-- Create Table : retail_sales
-- ============================================================================

CREATE TABLE retail_sales (

    transaction_id INTEGER PRIMARY KEY,

    sale_date DATE,

    sale_time TIME,

    customer_id INTEGER,

    gender VARCHAR(10),

    age INTEGER,

    category VARCHAR(35),

    quantity INTEGER,

    price_per_unit NUMERIC(10,2),

    cogs NUMERIC(10,2),

    total_sale NUMERIC(10,2)

);

-- ============================================================================
-- End of Database Setup Script
-- ============================================================================
