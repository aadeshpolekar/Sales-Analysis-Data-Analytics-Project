create database sales_project;
use sales_project;
CREATE TABLE sales_data (
    Row_ID INT,
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code INT,
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(200),
    Sales FLOAT
);
select * from sales_data;
drop table sales;

select sum(sales) from sales_data;

select 'Product Name',sum(sales) as total
from sales_data
group by 'Product Name'
order by total desc
limit 10;

select month('Order Date') as month, sum(sales)
from sales_data
group by month;

select Region, sum(sales)
from sales_data
group by Region;

select Category, sum(sales)
from sales_data
group by Category;

SELECT MONTH('Order Date') AS Month, SUM(Sales) AS total_sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

SELECT 'Customer Name', SUM(Sales) AS total
FROM sales_data
GROUP BY 'Customer Name'
ORDER BY total DESC
LIMIT 10;

SELECT 'Sub Category',sum(sales)
FROM sales_data
GROUP BY 'Sub Category'
ORDER BY SUM(Sales) DESC;





