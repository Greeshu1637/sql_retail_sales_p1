--data exploration--
--how may sales we have?--
SELECT COUNT(*) AS  total_sales FROM retail_sales;

--how many  unique customers do we have?--
SELECT COUNT( distinct customer_id) as total_customers from retail_sales;

--how many  unique category do we have?--
SELECT COUNT( distinct category) as total_category from retail_sales;

--data analytics & bussiness key points

-- My Analysis & Findings

-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'

Select * 
from retail_sales
where sale_date ='2022-11-05'
	
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 3 in the month of Nov-2022
Select*
from retail_sales
where category='Clothing'
AND 
  to_char(sale_date,'YYYY-MM')='2022-11'
AND 
  quantiy >=3

-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.

select 
category,
sum(total_sales) as net_sale,
count(*) as total_orders
from retail_sales
group by 1

-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.

select 
 round(avg(age),2) as avg_age
from retail_sales
where category ='Beauty'

-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.

select * from retail_sales
where total_Sales >1000
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.

select 
category,
gender,
count(*) as total_trans
from retail_sales
group by 
category,
gender
order by 1
 
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year.
SELECT 
   year,month,
   avg_sale
FROM
(
SELECT
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    AVG(total_sales) AS avg_sale,
	RANK() OVER (PARTITION BY EXTRACT (YEAR FROM sale_date) ORDER BY AVG(total_sales) DESC) as rank
FROM retail_sales
GROUP BY 1, 2
) as t1
where rank =1
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales.

SELECT
    customer_id,
    SUM(total_sales) AS total_purchase
FROM retail_sales
GROUP BY customer_id
ORDER BY total_purchase DESC
LIMIT 5;

-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.

SELECT
    category,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales
GROUP BY category
ORDER BY unique_customers DESC;

-- Q.10 Write a SQL query to create each shift and number of orders
   (Example: Morning <=12, Afternoon Between 12 & 17, Evening >17)

SELECT
    CASE
        WHEN EXTRACT(HOUR FROM sale_time::time) <= 12
            THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sale_time::time) > 12
             AND EXTRACT(HOUR FROM sale_time::time) <= 17
            THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY shift
ORDER BY total_orders DESC;

/*
==========================================================
Retail Sales Analysis
Business Analysis Queries
Database : PostgreSQL
Tool     : pgAdmin 4
==========================================================
-- Business Question 1
-- Highest Revenue Category
----------------------------------------------------

SELECT
    category,
    SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;

ALTER TABLE retail_sales
RENAME COLUMN quantiy TO quantity;
ALTER TABLE retail_sales
ALTER COLUMN sale_time TYPE TIME
USING sale_time::TIME;
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'retail_sales';
--END PROJECT---


/*
==========================================================
Retail Sales Analysis
Business Analysis Queries
Database : PostgreSQL
Tool     : pgAdmin 4
Author   : Greeshma
==========================================================
*/

----------------------------------------------------------
-- Business Question 1
-- Which Product Category Generates the Highest Revenue?
----------------------------------------------------------

SELECT
    category,
    ROUND(SUM(total_sales),2) AS total_revenue
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;

----------------------------------------------------------
-- Business Question 2
-- Which Age Group Generates the Highest Revenue?
----------------------------------------------------------

SELECT
CASE
    WHEN age < 20 THEN 'Below 20'
    WHEN age BETWEEN 20 AND 29 THEN '20-29'
    WHEN age BETWEEN 30 AND 39 THEN '30-39'
    WHEN age BETWEEN 40 AND 49 THEN '40-49'
    ELSE '50+'
END AS age_group,

ROUND(SUM(total_sales),2) AS total_revenue

FROM retail_sales

GROUP BY age_group

ORDER BY total_revenue DESC;

----------------------------------------------------------
-- Business Question 3
-- Which Hour Has the Highest Number of Transactions?
----------------------------------------------------------

SELECT

EXTRACT(HOUR FROM sale_time) AS sales_hour,

COUNT(*) AS total_transactions

FROM retail_sales

GROUP BY sales_hour

ORDER BY total_transactions DESC;

----------------------------------------------------------
-- Business Question 4
-- Average Order Value by Category
----------------------------------------------------------

SELECT
    category,
    ROUND(AVG(total_sales)::numeric, 2) AS average_order_value
FROM retail_sales
GROUP BY category
ORDER BY average_order_value DESC;
----------------------------------------------------------
-- Business Question 5
-- Top 10 Highest Spending Customers
----------------------------------------------------------
SELECT
    customer_id,
    ROUND(SUM(total_sales)::numeric,2) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;


----------------------------------------------------------
-- Business Question 6
-- Which Product Category Sold the Highest Quantity?
----------------------------------------------------------

SELECT

category,

SUM(quantity) AS total_quantity_sold

FROM retail_sales

GROUP BY category

ORDER BY total_quantity_sold DESC;

----------------------------------------------------------
-- Business Question 7
-- Revenue Contribution by Category
----------------------------------------------------------
SELECT
    category,

    ROUND(SUM(total_sales)::numeric,2) AS total_revenue,

    ROUND(
        (
            SUM(total_sales) * 100.0 /
            SUM(SUM(total_sales)) OVER ()
        )::numeric,
        2
    ) AS revenue_percentage

FROM retail_sales

GROUP BY category

ORDER BY total_revenue DESC;

----------------------------------------------------------
-- Business Question 8
-- Monthly Revenue Trend
----------------------------------------------------------

SELECT
    TO_CHAR(sale_date,'YYYY-MM') AS sales_month,

    ROUND(SUM(total_sales)::numeric,2) AS total_revenue

FROM retail_sales

GROUP BY sales_month

ORDER BY sales_month;
