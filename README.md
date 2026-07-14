# 🛒 Retail Sales Analysis using SQL (PostgreSQL)

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-16-blue)
![SQL](https://img.shields.io/badge/SQL-Advanced-green)
![Status](https://img.shields.io/badge/Project-Completed-success)
A complete end-to-end SQL data analysis project built using PostgreSQL and pgAdmin 4 to analyze retail sales data, generate business insights, and demonstrate practical SQL skills for Data Analyst roles.
## 📌 Project Overview

Data plays a crucial role in helping businesses understand customer behavior and make informed decisions. In this project, I performed an end-to-end retail sales analysis using **PostgreSQL** in **pgAdmin 4**. The objective was to transform raw sales data into meaningful business insights by designing a database, cleaning the data, writing analytical SQL queries, and interpreting the results.

Instead of simply retrieving records, this project focuses on answering practical business questions such as identifying top-performing product categories, understanding customer purchasing behavior, analyzing monthly sales trends, and evaluating revenue generated across different customer segments.

Throughout this project, I applied SQL concepts commonly used by Data Analysts in real-world business environments, including filtering, aggregation, grouping, sorting, conditional logic, date functions, Common Table Expressions (CTEs), and window functions where appropriate.

---
## 📑 Table of Contents

- Project Overview
- Project Objectives
- Business Problem
- Dataset Information
- Tools & Technologies
- SQL Skills Demonstrated
- Project Workflow
- Database Design
- Data Cleaning
- Exploratory Data Analysis
- Business Analysis
- Key Insights
- Business Recommendations
- Future Improvements
- Project Structure
- How to Run
- Author
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
## 📊 Total Records Imported

The dataset was successfully imported into PostgreSQL and verified before analysis.

![Total Records](images/row_count.png)

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
# 🗄️ Database Design

## Database Overview

A PostgreSQL database was created to store and analyze the retail sales dataset in a structured format. The database was designed to support efficient querying, data validation, and business analysis.

The project consists of a single transactional table named **retail_sales**, where each row represents one completed customer purchase.

Although this project uses a single-table design, the database structure follows standard relational database principles with clearly defined columns and appropriate data types.
## 🖥️ PostgreSQL Database

The project database was created and managed using PostgreSQL using pgAdmin 4.

![PostgreSQL Database](images/pgadmin_dashboard.png)

---

## Database Schema

| Column Name     | Data Type | Description                            |
| --------------- | --------- | -------------------------------------- |
| transactions_id | INTEGER   | Unique identifier for each transaction |
| sale_date       | DATE      | Date on which the purchase was made    |
| sale_time       | TIME      | Time at which the purchase occurred    |
| customer_id     | INTEGER   | Unique identifier for each customer    |
| gender          | VARCHAR   | Gender of the customer                 |
| age             | INTEGER   | Customer age                           |
| category        | VARCHAR   | Product category purchased             |
| quantity        | INTEGER   | Number of products purchased           |
| price_per_unit  | NUMERIC   | Selling price of a single unit         |
| cogs            | NUMERIC   | Cost of goods sold                     |
| total_sales      | NUMERIC   | Total transaction amount               |

## 🗂️ Table Structure

The `retail_sales` table contains 11 columns that store transaction-level information required for retail sales analysis.

![Table Structure](images/table_structure.png.png)
---

## Primary Key

The **transactions_id** column serves as the Primary Key for the table.

This ensures:

* Every transaction is uniquely identified.
* Duplicate transaction records can be detected easily.
* Data integrity is maintained throughout the analysis.

---

## Table Description

The table stores transactional information required for retail sales analysis.

Each record contains:

* Customer information
* Purchase date and time
* Product category
* Quantity purchased
* Pricing information
* Revenue generated

This structure enables business analysis across multiple dimensions, including customer demographics, product performance, sales trends, and revenue distribution.

---

## Why PostgreSQL?

This project was implemented using **PostgreSQL** and managed through **pgAdmin 4**.

PostgreSQL was selected because it offers:

* Strong SQL standards compliance
* Reliable handling of large datasets
* Powerful aggregation and analytical functions
* Excellent support for data integrity
* Advanced querying capabilities used in real-world analytics projects

Working with PostgreSQL also provided practical experience using an enterprise-grade relational database management system commonly adopted across industry.

---

## Database Creation Process

The database setup involved the following steps:

1. Creating a new PostgreSQL database.
2. Creating the `retail_sales` table with appropriate data types.
3. Defining the Primary Key.
4. Importing the CSV dataset into PostgreSQL using pgAdmin 4.
5. Verifying successful data import.
6. Validating the table structure and row count before beginning analysis.

## ⚙️ Database Creation

The following screenshot shows the SQL script used to create the `retail_sales` table in PostgreSQL.

![Database Creation](images/create_table.png)
---

## Data Dictionary

### transactions_id

Unique identifier assigned to each retail transaction.

### sale_date

The calendar date on which the purchase occurred.

### sale_time

The exact time when the transaction was completed.

### customer_id

Unique identifier representing an individual customer.

### gender

Customer gender recorded for demographic analysis.

### age

Customer age used for age-group segmentation.

### category

Product category purchased during the transaction.

### quantity

Number of units purchased in the transaction.

### price_per_unit

Selling price of one unit of the selected product.

### cogs

Cost incurred by the business for the products sold.

### total_sale

Total revenue generated from the transaction.

---

## Database Architecture

The overall data flow of this project is illustrated below.

```text
Retail Sales CSV Dataset
            │
            ▼
      PostgreSQL Database
            │
            ▼
      retail_sales Table
            │
            ▼
   Data Validation & Cleaning
            │
            ▼
 Exploratory SQL Analysis
            │
            ▼
 Business Insights
            │
            ▼
 Actionable Recommendations
```

---

## Skills Demonstrated in this Phase

During the database design phase, the following SQL and database management skills were applied:

* Database creation
* Table creation
* Data type selection
* Primary Key implementation
* CSV data import
* Data validation
* Database documentation
* PostgreSQL administration using pgAdmin 4
---

# 🧹 Data Cleaning

Before beginning the analysis, the dataset was carefully validated to ensure data quality and consistency. Cleaning the data before performing any business analysis helps prevent inaccurate results and improves the reliability of insights.

The following validation steps were performed using PostgreSQL.

---

## Data Cleaning Objectives

The primary goals of the data cleaning process were to:

- Verify successful data import.
- Check the total number of records.
- Identify missing (NULL) values.
- Remove incomplete records.
- Validate the cleaned dataset before analysis.

---

## Data Validation Process

The following SQL operations were performed during the cleaning phase:

### 1. Dataset Verification

The complete dataset was reviewed after importing the CSV file into PostgreSQL to ensure all records were imported correctly.

### 2. Record Count Validation

The total number of records was counted to verify that the import process completed successfully.

### 3. Missing Value Detection

Each important column was checked for NULL values, including:

- Sale Date
- Sale Time
- Customer ID
- Gender
- Age
- Category
- Quantity
- Price Per Unit
- COGS
- Total Sales

### 4. Removing Incomplete Records

Records containing missing values were removed to ensure that only complete transactions were used for analysis.

### 5. Final Validation

After cleaning, the dataset was verified once again to confirm that it was ready for exploratory and business analysis.

---

## SQL Data Cleaning Script

The following screenshot shows the SQL queries used during the data cleaning process.

## Clean Dataset Verification

The final validation confirms that the cleaned dataset contains **1987 complete transaction records**, which were used for the subsequent analysis.

![Clean Dataset](images/clean_dataset.png)

---

## Outcome

After completing the cleaning process:

- The dataset contained only complete transaction records.
- No missing values remained in the analytical dataset.
- The cleaned data was ready for exploratory analysis and business reporting.

## Sample EDA Queries

### Total Transactions

![Total Transactions](images/eda_total_transactions.png.png)

---

### Unique Customers

![Customers](images/eda_customers.png.png)

---

### Product Categories

![Categories](images/eda_categories.png.png)

---

### Dataset Time Period

![Date Range](images/eda_date_range.png.png)

![Data Cleaning](images/data_cleaning.png.png)

# 📈 Business Analysis

## Overview

After understanding the dataset through Exploratory Data Analysis (EDA), the next step was to answer business-oriented questions using SQL.

The objective of this phase was to identify meaningful patterns in customer purchasing behavior, product performance, and sales trends that could support business decision-making.

The analysis focuses on revenue generation, customer segmentation, product demand, sales performance, and purchasing patterns.

---

## Business Questions

The following business questions were explored using PostgreSQL.
## 1️⃣ Which Product Category Generates the Highest Revenue?

### Business Objective

Understanding which product category generates the highest revenue helps businesses identify their most profitable products and prioritize inventory, promotions, and marketing efforts.

### SQL Query

See `analysis_queries.sql`

### Result
![Highest Revenue Category](images/business_q1.png.png)



## 2️⃣ Which Age Group Contributes the Highest Revenue?

### Business Objective

Customer segmentation based on age helps businesses understand which demographic contributes the highest revenue.

### SQL Query

See `analysis_queries.sql`

### Result

![Age Group Revenue](images/business_q2.png.png)

## 3️⃣ Which Hour Records the Highest Number of Sales?

### Business Objective

Knowing peak sales hours helps businesses optimize staffing, inventory availability, and promotional timing.
### Result
![Peak Sales Hour](images/business_q3.png.png)
### Business Insight

Peak shopping hours indicate when customer demand is highest, allowing businesses to improve operational planning.


## 4️⃣ What is the Average Order Value for Each Product Category?

### Business Objective

Average order value measures customer spending behavior across product categories.
### Result
![Average Order Value](images/business_q4.png.png)
### Business Insight

Categories with higher average order values contribute more revenue per transaction and may offer better profit opportunities.


## 5️⃣ Which Customers Spend the Most?

### Business Objective

Identifying high-value customers helps businesses improve customer retention and loyalty programs.
### Result
![Top Customers](images/business_q5.png.png)
### Business Insight

The highest-spending customers contribute significantly to total revenue and represent important long-term business relationships.


## 6️⃣ Which Product Category Sells the Highest Quantity?

### Business Objective

Understanding product demand helps businesses improve inventory management.
### Result
![Highest Quantity Sold](images/business_q6.png.png)
### Business Insight

High-demand categories require efficient stock planning to prevent shortages.


## 7️⃣ How Much Revenue Does Each Category Contribute?

### Business Objective

Revenue contribution analysis identifies the importance of each product category.
### Result
![Revenue Contribution](images/business_q7.png.png)
### Business Insight

Categories contributing the largest percentage of revenue should receive greater business attention.

## 8️⃣ Monthly Revenue Trend

### Business Objective

Analyzing monthly revenue helps identify seasonal sales patterns.
### Result
![Monthly Revenue Trend](images/business_q8.png.png)
### Business Insight

Understanding monthly trends enables better forecasting and business planning.




## Summary

The business analysis phase transformed raw retail transaction data into meaningful insights that can support strategic decision-making.

Using PostgreSQL, multiple business questions were answered related to customer behavior, product performance, sales trends, and revenue generation.

The results demonstrate how SQL can be used not only for querying data but also for solving real-world business problems.


# 📌 Key Insights

The SQL analysis revealed several meaningful business insights from the retail sales dataset.

## Key Findings

### 📈 Product Performance

- Revenue is not evenly distributed across product categories.
- Certain categories consistently contribute a larger share of total sales.
- High-performing product categories should receive greater inventory and marketing focus.

---

### 👥 Customer Behavior

- Customer spending patterns differ across age groups.
- A small group of customers contributes significantly more revenue than others.
- Identifying high-value customers can support loyalty and retention strategies.

---

### 🛒 Sales Trends

- Sales activity varies across different hours of the day.
- Identifying peak shopping hours helps optimize staffing and operational planning.
- Monthly revenue trends can reveal seasonal purchasing behavior.

---

### 💰 Revenue Analysis

- Average order values differ across product categories.
- Revenue contribution analysis helps identify the products driving business growth.
- SQL aggregation functions provide quick insights into overall business performance.

---

### 📊 Overall Conclusion

The analysis demonstrates how SQL can transform raw transactional data into meaningful business insights. By combining data cleaning, exploratory analysis, and business-focused SQL queries, valuable information about customer behavior, product performance, and sales trends can be extracted to support data-driven decision-making.

# 💡 Business Recommendations

Based on the analysis, the following recommendations can help improve business performance.
## Inventory Management

- Maintain higher inventory levels for top-performing product categories.
- Monitor low-performing categories and optimize stock levels to reduce carrying costs.
## Marketing Strategy

- Develop targeted promotional campaigns for the highest revenue-generating customer segments.
- Offer personalized discounts and loyalty rewards to high-value customers.

---

## Sales Optimization

- Schedule additional staff during peak shopping hours to improve customer service.
- Use monthly sales trends to plan seasonal promotions and inventory replenishment.

---

## Customer Engagement

- Build customer loyalty programs for repeat purchasers.
- Analyze purchasing behavior regularly to improve customer retention.

---

## Future Business Growth

- Integrate SQL analysis with Power BI dashboards for real-time business reporting.
- Automate monthly sales reports using PostgreSQL queries.
- Expand customer segmentation using additional demographic and behavioral data.

# 🚀 Future Improvements

This project can be extended further by implementing additional analytics and visualization features.

Possible future enhancements include:

- Develop an interactive Power BI dashboard connected to PostgreSQL.
- Perform sales forecasting using Python and Machine Learning.
- Create stored procedures and SQL views for automated reporting.
- Build a complete ETL pipeline for automated data updates.
- Analyze customer lifetime value and retention metrics.
- Perform advanced sales trend forecasting using time-series analysis.

  # 📂 Project Structure

```
sql_retail_sales_p1
│
├── README.md
├── database_setup.sql
├── data_cleaning.sql
├── eda_queries.sql
├── analysis_queries.sql
├── insights.md
├── SQL - Retail Sales Analysis_utf.csv
└── images
    ├── row_count.png
    ├── pgadmin_dashboard.png
    ├── table_structure.png
    ├── create_table.png
    ├── data_cleaning.png
    ├── clean_dataset.png
    ├── eda_total_transactions.png
    ├── eda_customers.png
    ├── eda_categories.png
    ├── eda_date_range.png
    ├── business_q1.png
    ├── business_q2.png
    ├── business_q3.png
    ├── business_q4.png
    ├── business_q5.png
    ├── business_q6.png
    ├── business_q7.png
    └── business_q8.png
```

---

# ▶️ How to Run This Project

1. Install PostgreSQL and pgAdmin 4.
2. Create a new PostgreSQL database.
3. Execute `database_setup.sql` to create the required table.
4. Import the retail sales CSV dataset into PostgreSQL.
5. Run `data_cleaning.sql` to validate and clean the data.
6. Execute `eda_queries.sql` to explore the dataset.
7. Run `analysis_queries.sql` to answer business questions and generate insights.

## 🎓 What I Learned

Working on this project helped me strengthen my understanding of SQL beyond basic queries. I gained hands-on experience in creating databases, cleaning datasets, analyzing business problems, and communicating insights through structured SQL analysis.

The project also improved my ability to think from a business perspective by converting raw transactional data into meaningful information that can support decision-making.

This project represents an important step in building my portfolio for Data Analyst roles and reflects my practical experience with PostgreSQL and data analysis.
---



# 👩‍💻 Author

**Greeshma**

Aspiring Data Analyst with a strong interest in SQL, PostgreSQL, Python, Power BI, and data-driven decision-making.

### Connect with Me

- GitHub: https://github.com/Greeshu1637
- LinkedIn: https://www.linkedin.com/in/greeshma-polanki-7931a8373/
  ## 📊 Project Statistics

- Database: PostgreSQL
- Tool: pgAdmin 4
- Records Analyzed: 1987
- SQL Queries Written: 25+
- Business Questions Answered: 8
- Database Tables: 1
