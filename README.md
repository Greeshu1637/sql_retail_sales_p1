# 📊 Retail Sales Performance Analysis using SQL (PostgreSQL)

## 📌 Project Summary

| Feature | Details |
|---------|----------|
| Database | PostgreSQL |
| Tool | pgAdmin 4 |
| Dataset | Retail Sales Transactions |
| Project Type | End-to-End SQL Data Analysis |
| SQL Queries | 15+ |
| Business Questions Solved | 15 |
| Data Cleaning Steps | 3 |

## 📌 Project Overview

Data plays a crucial role in helping businesses understand customer behavior and make informed decisions. In this project, I performed an end-to-end retail sales analysis using **PostgreSQL** in **pgAdmin 4**. The objective was to transform raw sales data into meaningful business insights by designing a database, cleaning the data, writing analytical SQL queries, and interpreting the results.

Instead of simply retrieving records, this project focuses on answering practical business questions such as identifying top-performing product categories, understanding customer purchasing behavior, analyzing monthly sales trends, and evaluating revenue generated across different customer segments.

Throughout this project, I applied SQL concepts commonly used by Data Analysts in real-world business environments, including filtering, aggregation, grouping, sorting, conditional logic, date functions, Common Table Expressions (CTEs), and window functions where appropriate.

---

## 🎯 Project Objectives

The primary objectives of this project were:

* Design and create a PostgreSQL database for retail sales data.
* Import and organize raw sales records into a structured database.
* Perform data quality checks to identify missing or inconsistent values.
* Clean and prepare the dataset for analysis.
* Explore sales trends using SQL.
* Analyze customer purchasing behavior.
* Evaluate category-wise sales performance.
* Generate business insights that support data-driven decision making.
* Strengthen practical SQL skills through a complete analytics workflow.

---

## 💼 Business Problem

Retail businesses generate thousands of transactions every day, but raw transactional data alone provides limited value unless it is analyzed effectively.

The goal of this project is to convert retail sales data into actionable insights that can help answer questions such as:

* Which product categories generate the highest revenue?
* Which months contribute the most sales?
* Which customer segments spend the most?
* How do purchasing patterns change over time?
* Which business areas require improvement?

By answering these questions, businesses can improve marketing strategies, inventory planning, customer engagement, and overall profitability.

---

## 📂 Dataset Information

The dataset used in this project contains retail sales transaction records, with each row representing a customer purchase.

The dataset includes attributes such as:

* Transaction ID
* Sale Date
* Sale Time
* Customer ID
* Gender
* Age
* Product Category
* Quantity Purchased
* Price Per Unit
* Cost of Goods Sold (COGS)
* Total Sale Amount

The dataset was imported into PostgreSQL and analyzed using SQL queries executed in pgAdmin 4.

---

## 🛠️ Tools & Technologies

* PostgreSQL
* pgAdmin 4
* SQL
* Git
* GitHub

---

## 🧠 SQL Skills Demonstrated

This project demonstrates practical SQL skills required for Data Analyst roles, including:

* Database creation
* Table creation
* Data import
* Data cleaning
* Data validation
* Filtering data using WHERE
* Sorting using ORDER BY
* Aggregation using SUM(), AVG(), COUNT(), MIN(), and MAX()
* GROUP BY and HAVING clauses
* CASE statements
* Date and time functions
* Common Table Expressions (CTEs)
* Window functions (where applicable)
* Business-oriented data analysis

---

## 📈 Project Workflow

The project follows a structured data analysis workflow:

Raw CSV Dataset

⬇

PostgreSQL Database

⬇

Database Design

⬇

Data Cleaning & Validation

⬇

Exploratory Data Analysis (EDA)

⬇

Business Analysis

⬇

Key Insights

⬇

Business Recommendations

---

## 📁 Repository Structure
---
sql_retail_sales_p1/

├── README.md
├── database_setup.sql
├── data_cleaning.sql
├── analysis_queries.sql
├── insights.md
├── SQL - Retail Sales Analysis_utf.csv
└── images/

---
## 🗄️ Database Design

The project uses a PostgreSQL table named **retail_sales** to store transactional sales data.

Each record represents a single customer purchase and contains customer demographics, product information, pricing details, and sales metrics.

---
### Table Schema

## 🖼️ Database Schema

> *(Database schema image will be added here.)*

<!-- Example:
![Database Schema](images/database_schema.png)
-->

| Column | Description |
|---------|-------------|
| transaction_id | Unique transaction identifier |
| sale_date | Date of purchase |
| sale_time | Time of purchase |
| customer_id | Customer identifier |
| gender | Customer gender |
| age | Customer age |
| category | Product category |
| quantity | Quantity purchased |
| price_per_unit | Selling price per unit |
| cogs | Cost of goods sold |
| total_sale | Total sales amount |

---
## 🎓 Key Learnings

Through this project, I strengthened my ability to:

- Design relational databases using PostgreSQL.
- Clean and validate transactional datasets.
- Write optimized SQL queries for business analysis.
- Perform exploratory data analysis (EDA).
- Translate business questions into analytical SQL queries.
- Derive actionable business insights from sales data.
- Organize and document a complete analytics project using GitHub.

---
## 🚀 Future Enhancements

Future improvements planned for this project include:

- Develop an interactive Power BI dashboard for sales visualization.
- Perform customer segmentation using SQL and Python.
- Implement sales forecasting using machine learning techniques.
- Optimize SQL queries for large-scale datasets.
- Automate reporting workflows using Python.

---
## 💡 Business Recommendations

Based on the analysis:

- Increase inventory levels for consistently high-performing product categories.
- Design targeted marketing campaigns for high-value customer segments.
- Optimize stock planning before seasonal peak sales periods.
- Introduce loyalty programs to improve customer retention.
- Investigate underperforming product categories to identify opportunities for growth.

## 📌 Conclusion

This project demonstrates how SQL can be used to transform raw retail transaction data into meaningful business insights. By following a structured workflow—from database creation and data cleaning to exploratory analysis and business reporting—I gained practical experience in solving real-world business problems using PostgreSQL.

The project strengthened my analytical thinking, SQL proficiency, and ability to communicate data-driven insights, providing a solid foundation for future Data Analytics and Business Intelligence projects.
