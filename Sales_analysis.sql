 USE sakila;
 SHOW TABLES;
 SELECT * FROM sales_data LIMIT 10;
 SELECT SUM(Sales) AS Total_Sales FROM sales_data;
 SELECT COUNT(DISTINCT 'Order ID') AS Total_Orders
 FROM sales_data;
 SELECT sum(Sales) AS Total_Sales FROM
 sales_data;
 SELECT count(DISTINCT'Customer ID') AS Total_Customer
 FROM sales_data;
 SELECT 'Product Name', SUM(Sales) AS Total_sales
 From sales_data
 GROUP BY 'Product Name'
 ORDER BY Total_Sales DESC
 LIMIT 10;
 SELECT State, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY State
ORDER BY Total_Sales DESC;
SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category;
SELECT `Ship Mode`, 
AVG(DATEDIFF(`Ship Date`, `Order Date`)) AS Avg_Delivery_Days
FROM sales_data
GROUP BY `Ship Mode`;