use salesDA;

select * from sales;

select * from sales
limit 10;

#Total Records 
select count(*) as total_customers from sales;
#Check Null Values
SELECT
    COUNT(*) AS total_rows,
    COUNT(Order_id) AS order_id_not_null,
    COUNT(Order_date) AS order_date_not_null,
    COUNT(Product) AS product_not_null,
    COUNT(Category) AS category_not_null,
    COUNT(Quantity) AS quantity_not_null,
    COUNT(Price) AS price_not_null,
    COUNT(Region) AS region_not_null,
    COUNT(Revenue) AS revenue_not_null
FROM sales;

# Check Duplicates Orders
select Order_id, count(*) as Duplicate_count
from sales
group by Order_id
having count(*) > 1;


#KPI Metrics
#1.Total Revenue
SELECT SUM(Revenue) AS TOTAL_REVENUE
FROM SALES;

#2.TOTAL ORDERS
SELECT COUNT(DISTINCT (Order_id)) AS TOTAL_ORDERS
FROM SALES;

#3.AVERAGE REVENUE PER ORDER
SELECT ROUND(AVG(Revenue),2) AS Average_Revenue
FROM SALES;

#SALES PERFORMANCE ANALYSIS
#4.REVENUE BY CATEGORY
SELECT Category,SUM(Revenue) AS TOTAL_REVENUE
FROM sales
GROUP BY Category
ORDER BY TOTAL_REVENUE;

#5.REVENUE BY REGION 
SELECT Region,SUM(Revenue) AS TOTAL_REVENUE
FROM sales
GROUP BY Region
ORDER BY TOTAL_REVENUE;

#TIME BASED ANALYSIS
#6.MONTHLY REVENUE TREND
SELECT Date_format(Order_date, '%Y-%m') as YearMonth,SUM(Revenue) AS MONTHLY_REVENUE
FROM sales
group by Date_format(Order_date, '%Y-%m')  
order by YearMonth;

#7.YEARLY REVENUE
select Year(Order_date) as Year, sum(Revenue) as Total_Revenue
from sales
group by Year(Order_date)
order by Year;

#8.Top Products by Revenue
select Product,sum(Revenue) as Total_Revenue
from sales
group by product
order by Total_Revenue Desc
limit 3;

#9.Top Products by Quantity sold
select Product,sum(Quantity) as Total_Quantity
from sales
group by product
order by Total_Quantity
limit 3;

#10.Category share(%)
SELECT 
    Category,
    SUM(revenue) AS category_revenue,
    ROUND(
        SUM(revenue) / (SELECT SUM(revenue) FROM sales) * 100, 2
    ) AS revenue_percentage
FROM sales
GROUP BY category
ORDER BY revenue_percentage DESC;

#11. REGION + CATEGORY ANALYSIS (STACKED CHART)
select region,category,sum(Revenue) as Total_Revenue
from sales
group by category,region
order by category,region;

#12.Average Price by Category
SELECT 
    category,
    ROUND(AVG(price), 2) AS avg_price
FROM sales
GROUP BY category;


