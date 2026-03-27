CREATE DATABASE E_Commerce;

USE E_Commerce;

-- 1] Total number of customer

SELECT COUNT(*) 
AS Total_customer 
FROM Customer_table;

-- 2]Total Revenue 

SELECT SUM(Total_Amount) 
AS Total_revenue 
FROM order_table1;

-- 3]Total orders

SELECT COUNT(*)
AS Total_orders 
FROM order_table1;

-- Before we going to cahnge any name,dtype,etc... of column , so ensure that we in out of safe mode ........

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE order_items_table
CHANGE COLUMN ï»¿Order_Item_id order_items_id INT;

-- 4] Top 5 customer by spending 

SELECT Customer_Name, SUM(B.Total_Amount) AS Total_spend
FROM customer_table A
JOIN order_table1 B
ON A.customer_id = B.customerID
GROUP BY A.Customer_Name
ORDER BY Total_spend DESC
LIMIT 5;

-- 5] Monthly sales trends

SELECT 
DATE_FORMAT(Order_Date, '%Y-%m') AS month , SUM(Total_Amount) AS Revenue 
FROM order_table1
GROUP BY month
ORDER BY month;

-- 6] Revenue by category

SELECT p.Category, SUM(oi.Quantity * oi.Price) AS Revenue
FROM product_table p
JOIN order_items_table oi
ON p.product_id = oi.ProductID
GROUP BY p.Category;
																																																							
-- 7] Repeat Vs New Customer
SELECT Customer_type, COUNT(*) AS Total_customer
FROM (
    SELECT CustomerID,
      CASE
      WHEN COUNT(order_id) > 1 THEN 'Repeat'
      ELSE 'New'
    END AS Customer_type
    FROM order_table1
    GROUP BY CustomerID
)t
GROUP BY Customer_type;

-- 8] Rank top product by revenue

SELECT p.Product_Name, 
       SUM(oi.Quantity * oi.Price) AS Revenue,
       RANK() OVER (ORDER BY SUM(oi.Quantity * oi.Price) DESC) AS rnk
FROM order_items_table oi
JOIN product_table p
ON oi.ProductID = p.product_id
GROUP BY p.Product_Name;

SELECT VERSION();

-- 8] CLV (Customer Lifetime Value)

SELECT CustomerID,
	   SUM(Total_Amount) AS Lifetime_value
FROM order_table1
GROUP BY CustomerID
ORDER BY Lifetime_value DESC;

-- 9] Identify churnd customer ( no order in last 3 month )

SELECT CustomerID
FROM order_table1
GROUP BY CustomerID
HAVING MAX(Order_Date) < CURRENT_DATE - INTERVAL 90 DAY;

-- 10] Running total of sales 

SELECT Order_Date,
       SUM(Total_Amount) AS Dailt_sales,
       SUM(SUM(Total_Amount)) OVER (ORDER BY Order_Date) AS Running_total
FROM order_table1
GROUP BY Order_Date;







