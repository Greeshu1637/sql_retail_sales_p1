create table retail_Sales(
     transactions_id INT PRIMARY KEY,
	 sale_date DATE,
	 sale_time VARCHAR(20),	
	 customer_id INT,
	 gender	VARCHAR(20),
	 age INT,
	 category VARCHAR(20),	
	 quantiy INT,
	 price_per_unit FLOAT,
	 cogs FLOAT,
	 total_sales FLOAT

);
select * from retail_sales;

select COUNT(*) from retail_sales;


select * from retail_sales
where
 
      transactions_id IS NULL
or  
	sale_date	IS NULL
or  
	sale_time   IS NULL
or  
	gender	IS NULL
or  
	category IS NULL
or  
	quantiy	IS NULL
or  
	price_per_unit IS NULL
or  
	cogs	IS NULL
or  
	total_sales IS NULL;

--data cleaning--
	
DELETE FROM retail_sales
where 
      transactions_id IS NULL
or  
	sale_date	IS NULL
or  
	sale_time   IS NULL

or 
	gender	IS NULL

or  
	category IS NULL
or  
	quantiy	IS NULL
or  
	price_per_unit IS NULL
or  
	cogs	IS NULL
or  
	total_sales IS NULL;

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

--END PROJECT---



