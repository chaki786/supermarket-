-- Show first 10 records
SELECT * FROM sales_data LIMIT 10;

-- Calculate total sales and average profit
SELECT SUM(Sales) AS Total_Sales, AVG(Profit) AS Avg_Profit FROM sales_data;

Top 5 Selling Products
SELECT `Sub_Category`, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY `Sub_Category`
ORDER BY Total_Sales DESC
LIMIT 5;


Total Sales & Profit per Month

SELECT DATE_FORMAT(`Order_Date`, '%Y-%m') AS Month_Year, 
       SUM(Sales) AS Total_Sales, 
       SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY Month_Year
ORDER BY Month_Year
LIMIT 25;


Best Performing Category

  SELECT Category, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC
LIMIT 1;

Customer-wise Sales Analysis
SELECT `Customer_Name`, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM sales_data
GROUP BY `Customer_Name`
ORDER BY Total_Sales DESC
LIMIT 25;


Which city has the highest sales?

SELECT City, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 1;

