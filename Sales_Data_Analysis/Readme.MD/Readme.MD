📊Sales Data Analysis Project (Python + SQL + Power BI)

👤 Prepared By
Gude Amarnath  
Aspiring Data Analyst  


📌 Project Overview
This project is an end-to-end **Sales Data Analysis** workflow built using **Python (Pandas)**, **SQL (MySQL)**, and **Power BI**.  
The main goal is to clean raw sales data, perform meaningful analysis, generate KPIs, and build an interactive dashboard to understand business performance.

This project is designed in a real-world style where raw data is transformed into insights for decision-making.


🎯 Business Objectives
The project focuses on the following goals:

-> Analyze overall sales performance
-> Find **Total Revenue**, **Total Orders**, and **Total Customers**
-> Analyze **product-wise** and **region-wise** revenue contribution
-> Study delivery status such as **Delivered / Cancelled / Returned**
-> Identify monthly sales trends and seasonality
-> Understand the impact of discounts on revenue


🛠 Tools & Technologies Used
-> **Python (Pandas)** → Data cleaning & preprocessing  
-> **SQL (MySQL)** → Querying & KPI generation  
-> **Power BI** → Dashboard creation & visualization  


📂 Dataset Details
-> Dataset Type: Sales transaction dataset  
-> Time Period: **2023 – 2025**
-> Contains: orders, customers, products, regions, discounts, delivery status, etc.


✅ Project Workflow
1️⃣ Data Cleaning & Preprocessing (Python)
-> Handled missing values
- >Fixed data types (date, numeric columns)
- >Removed duplicates (if any)
- >Created cleaned dataset for analysis

📌 Output file: 'Sales_DA_Cleaned.csv'

2️⃣ Data Storage (MySQL)
-> Cleaned data loaded into MySQL database
->Created table schema based on dataset structure
-> Verified data consistency after import

3️⃣ SQL Analysis
SQL queries were written to generate insights like:
-> Total Revenue
-> Total Orders
-> Total Customers
-> Category-wise and region-wise revenue
-> Monthly trends
-> Delivery status performance
-> Discount impact on revenue

📌 SQL scripts are available inside: 'SQL_Queries\'

4️⃣ Power BI Dashboard
Power BI is connected to MySQL / cleaned dataset to build an interactive dashboard that includes:

-> KPI Cards  
-> Monthly Revenue Trend  
-> Category-wise Revenue  
-> Region-wise Revenue  
-> Delivery Status Breakdown  
-> Product Performance  

📌 Dashboard file available in: 'PowerBI\'

📌 Key KPIs Created
-> Total Revenue
-> Total Orders
-> Total Customers
-> Average Order Value
-> Monthly Revenue Trend
-> Top Categories & Regions
-> Delivery Status Summary

🔍 Key Insights (Findings)
From the analysis, the following insights were observed:

-> South and West regions** contribute the highest revenue.
-> Electronics** is the top-performing category.
-> Revenue is concentrated among a small number of high-performing products.
-> Monthly trends indicate clear seasonality.
-> High-priced products generate significant revenue even with lower order volume.
