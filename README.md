# E_Commerce_project.sql
- [Project Overview](https://github.com/Jk1201-web/E_Commerce_project.sql#project-overview)
- [Objective](https://github.com/Jk1201-web/E_Commerce_project.sql#objective)
- [Dataset](https://github.com/Jk1201-web/E_Commerce_project.sql#dataset)
  - [Tables used](https://github.com/Jk1201-web/E_Commerce_project.sql#tables-used)
- [Business Problem Solved](https://github.com/Jk1201-web/E_Commerce_project.sql#business-problems-solved)
- [Tools & Technologies](https://github.com/Jk1201-web/E_Commerce_project.sql#tools--technologies)
- [SQL Techniques Used](https://github.com/Jk1201-web/E_Commerce_project.sql#sql-techniques-used)
- [Key Metrics](https://github.com/Jk1201-web/E_Commerce_project.sql#key-metrics)
- [Key Insights](https://github.com/Jk1201-web/E_Commerce_project.sql#key-insights)
- [Business Recommendation](https://github.com/Jk1201-web/E_Commerce_project.sql#business-recommendations)
- [How to Run the Project](https://github.com/Jk1201-web/E_Commerce_project.sql#how-to-run-the-project)
- [Project Workflow](https://github.com/Jk1201-web/E_Commerce_project.sql#project-workflow)
- [Sample SQL Query](https://github.com/Jk1201-web/E_Commerce_project.sql#sample-sql-query)
- [Project Structure](https://github.com/Jk1201-web/E_Commerce_project.sql#project-structure)
- [Connect to me](https://github.com/Jk1201-web/E_Commerce_project.sql#connect-with-me)
    - [LinkedIn](www.linkedin.com/in/jijau-khandale)
    - [GitHub](https://github.com/Jk1201-web)
    - [Kaggle](https://www.kaggle.com/jijaumohankhandale)
## Project Overview
This project focuses on analyzing an E-commerce dataset using SQL to extract meaningful business insights. The analysis covers customer behavior, sales performance, product trends, and revenue generation to support data-driven decision-making.
## Objective
- Analyze overall business performance using SQL queries
- Identify top customers and high-performing products
- Understand sales trends and customer purchasing behavior
- Detect churned customers and calculate customer lifetime value
## Dataset
- [https://www.kaggle.com/datasets/jijaumohankhandale/e-commerce-dataset](https://www.kaggle.com/datasets/jijaumohankhandale/e-commerce-dataset)
- Database Name: E_Commerce 
### Tables Used:
- customer_table
- order_table1
- order_items_table
- product_table
## Business Problems Solved
1. What is the total revenue generated?
2. How many total orders were placed?
3. Who are the top customers by spending?
4. Which products generate the most revenue?
5. What is the customer retention rate?
6. How does revenue grow over time?
## Tools & Technologies
- SQL (MySQL)
- Data Analysis
- Window Functions
- Aggregate Functions
- Joins & Subqueries
## SQL Techniques Used
- Data Retrieval: `SELECT`, `WHERE`
- Joins: `INNER JOIN`
- Aggregations: `SUM`, `COUNT`, `AVG`
- Grouping: `GROUP BY`, `HAVING`
- Window Functions: `RANK()`, `SUM()` `OVER()`
- Subqueries
  
## Key Metrics
| Metric | Value |
| Total Revenue |	₹92,300 |
| Total Orders |	7 |
| Average Order Value	| ₹13,186 |
| Total Customers |	5 |
| Repeat Customers | 2 |
| New Customers	| 3 |
## Key Insights
1. Customer Insights
  - Top customer contributes ~61% of total revenue, indicating high dependency on a single customer
  - Top 2 customers generate the majority of revenue
  - Significant variation in Customer Lifetime Value (CLV)
2. Product Insights
  - Laptop contributes ~87% of total revenue, making it the dominant product
  - Other products contribute significantly less revenue
  - Indicates lack of product diversification
3. Customer Retention Insights
  - Majority of customers are new (3 out of 5)
  - Low repeat customer count indicates weak retention
4. Revenue Insights
  - Revenue is driven by a few high-value transactions
  - Sales trend is irregular and not evenly distributed
  - Running total shows step-wise growth pattern
## Business Recommendations
- Retain high-value customers through loyalty programs and personalized offers
- Reduce dependency on a single product by promoting other categories
- Increase order frequency through discounts and bundle offers
- Improve customer retention with targeted marketing campaigns
- Optimize inventory planning based on product demand
  
## How to Run the Project

1- Open MySQL / SQL Workbenc
 
2- Import your dataset into tables

3- Run the SQL script file:
- [E_Commerce_project.sql](E_Commerce_project.sql)
  
4- Execute queries step-by-step to view insights
## Project Workflow
- Data Collection
- Data Cleaning
- Data Understanding
- Data Analysis (SQL)
- Insight Generation
- Business Recommendations
## Sample SQL Query
Top Customers by Revenue
```
SELECT 
    c.customer_name,
    SUM(oi.quantity * p.price) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

```
## Project Structure
Ecommerce-Sales-Analytics/
 ┣ 📁 Dataset  
 
 ┃ ┗ ecommerce_data.csv
 
 ┣ 📁 SQL
 ┃ ┗ analysis_queries.sql
 
 ┣ 📁 Docs
 ┃ ┗ insights.md
 
 ┗ README.md
 
## Connect with Me
- [LinkedIn](www.linkedin.com/in/jijau-khandale)
- [GitHub](https://github.com/Jk1201-web)
- [Kaggle](https://www.kaggle.com/jijaumohankhandale)
  
*If you found this project useful, consider giving it a star!*




