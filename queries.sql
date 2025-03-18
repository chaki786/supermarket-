-- Show first 10 records
SELECT * FROM sales_data LIMIT 10;

-- Calculate total sales and average profit
SELECT SUM(Sales) AS Total_Sales, AVG(Profit) AS Avg_Profit FROM sales_data;
