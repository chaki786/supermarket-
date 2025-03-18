import mysql.connector
import pandas as pd

# 📌 MySQL Connection
conn = mysql.connector.connect(
    host="bz0z3aamw7bganvyuzam-mysql.services.clever-cloud.com",
    user="uqu1w4kiq5sfpjml",
    password="Zd7Ydqz2yu00psANOYxh",
    database="bz0z3aamw7bganvyuzam"
)
cursor = conn.cursor()

# 📌 Query 1: Fetch first 10 rows
query1 = "SELECT * FROM sales_data LIMIT 10;"
df1 = pd.read_sql(query1, conn)
df1.to_csv("sales_data_output.csv", index=False)  # ✅ Output ko CSV me save karo

# 📌 Query 2: Calculate Total Sales & Average Profit
query2 = "SELECT SUM(Sales) AS Total_Sales, AVG(Profit) AS Avg_Profit FROM sales_data;"
df2 = pd.read_sql(query2, conn)
df2.to_csv("sales_summary_output.csv", index=False)

cursor.close()
conn.close()
print("✅ Data Exported Successfully!")
