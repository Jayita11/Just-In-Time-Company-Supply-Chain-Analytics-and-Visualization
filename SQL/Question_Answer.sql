/*
Problem Statement : In a competitive business environment, the company faces significant challenges related to inventory management, 
shipment delays, and balancing supply with demand. These operational inefficiencies lead to increased storage costs, inconsistent delivery 
performance, and missed sales opportunities, which ultimately impact customer satisfaction and profitability.

This project aims to address these inefficiencies by leveraging advanced analytics and data-driven insights to streamline inventory management, 
improve shipment performance, and ensure optimal supply-demand balance. The goal is to enhance operational efficiency, reduce costs, and provide 
a better customer experience.

Key Findings:
1.Field & Stream Sportsman 16 Gun Fire Safe and Perfect Fitness Perfect Rip Deck are consistently high performers, generating significant revenue 
and profit across multiple months. These products are key revenue drivers for the business.

2.Products like Lawn Mower and Web Camera exhibit strong sales in specific months, highlighting seasonal demand patterns. Niche products such as 
Team Golf Tennessee Volunteers Putter Grip have high profit margins despite lower overall sales.

3.Perfect Fitness Perfect Rip Deck has both the highest number of delayed orders (1,904) and a large number of early shipments (1,518), suggesting 
potential inconsistencies in shipping and logistics for this popular product.

4.Products like Perfect Fitness Perfect Rip Deck and Field & Stream Sportsman 16 Gun Fire Safe incur significant storage costs, making them expensive 
to manage despite their high sales.

5.Strength Training and Sporting Goods categories suffer from extremely long average delays (395 and 203 days, respectively), indicating major issues 
in their fulfillment processes.

6.Other categories, such as Music and Cardio Equipment, also experience considerable delays.

7.Products like Nike Men’s Comfort 2 Slide and Perfect Fitness Perfect Rip Deck offer high profit margins, making them top contributors to overall 
profitability.

*/


-- 1. Which are the top 2 products by total sales value (Net_Sales) for each month?
WITH TotalSalesPerProduct AS (
    SELECT 
        o.Product_Name,
        o.Order_YearMonth,
        SUM(o.Net_Sales) AS Total_Sales
    FROM 
        Supply_Chain_Management.Orders_and_Shipments o
    GROUP BY 
        o.Product_Name, o.Order_YearMonth
),
RankedProducts AS (
    SELECT 
        Product_Name,
        Order_YearMonth,
        Total_Sales,
        RANK() OVER (PARTITION BY Order_YearMonth ORDER BY Total_Sales DESC) AS SalesRank
    FROM 
        TotalSalesPerProduct
)
SELECT 
    Product_Name, 
    Order_YearMonth, 
    round(Total_Sales,2) as Total_Sales
FROM 
    RankedProducts
WHERE 
    SalesRank <= 2
ORDER BY 
    Order_YearMonth DESC, SalesRank;

-- 2.Which are the top 20 product categories that have the highest number of delayed shipments, and what are their total shipments, delayed shipments, and average delay percentage?
WITH DelayedShipments AS (
    SELECT
        o.Product_Category,
        CASE 
            WHEN o.Shipment_Delay_Days > 0 THEN 1 
            ELSE 0 
        END AS IsDelayed
    FROM
        Supply_Chain_Management.Orders_and_Shipments o
)
SELECT 
    d.Product_Category,
    COUNT(*) AS Total_Shipments,
    SUM(d.IsDelayed) AS Delayed_Shipments,
    ROUND(AVG(d.IsDelayed), 2) AS Avg_Delay_Percentage
FROM 
    DelayedShipments d
GROUP BY 
    d.Product_Category
ORDER BY 
    Delayed_Shipments DESC
LIMIT 20;

-- 3.How do discounts impact profit margins for each product, and which products have the highest negative impact due to high discounts?

WITH DiscountImpact AS (
    SELECT 
        o.Product_Name,
        SUM(o.Profit) AS Total_Profit,
        SUM(o.Discount_Percent) AS Total_Discount
    FROM 
        Supply_Chain_Management.Orders_and_Shipments o
    GROUP BY 
        o.Product_Name
)
SELECT 
    Product_Name, 
    Total_Profit, 
    round(Total_Discount,2) as Total_discount, 
   round( (Total_Profit / Total_Discount),2) AS Profit_Per_Discount
FROM 
    DiscountImpact
ORDER BY 
    Total_Discount DESC
LIMIT 10;


-- 4.Which are the top 20 products by total storage cost (calculated as the product of Warehouse_Inventory and Inventory_Cost_Per_Unit) across different months?

SELECT 
    i.Product_Name, 
    i.Year_Month, 
    round(SUM(i.Warehouse_Inventory * i.Inventory_Cost_Per_Unit),2) AS Total_Storage_Cost
FROM 
    Supply_Chain_Management.Inventory i
GROUP BY 
    i.Product_Name, i.Year_Month
ORDER BY 
    Total_Storage_Cost DESC
LIMIT 20;

-- 5.Identify orders that exceeded their scheduled shipment time (Shipment_Days_Actual > Shipment_Days_Scheduled) and calculate how often this happens.
SELECT 
    o.Product_Name,
    COUNT(*) AS Total_Orders,
    SUM(CASE 
        WHEN o.Shipment_Days_Actual > o.Shipment_Days_Scheduled THEN 1 
        ELSE 0 
    END) AS Delayed_Orders
FROM 
    Supply_Chain_Management.Orders_and_Shipments o
GROUP BY 
    o.Product_Name
ORDER BY 
    Delayed_Orders DESC;

-- 6.Which are the top 10 most profitable products based on total Profit and how do they compare across different months?
WITH TotalProfitPerProduct AS (
    SELECT 
        o.Product_Name,
        o.Order_YearMonth,
        SUM(o.Profit) AS Total_Profit
    FROM 
        Supply_Chain_Management.Orders_and_Shipments o
    GROUP BY 
        o.Product_Name, o.Order_YearMonth
),
RankedProducts AS (
    SELECT 
        Product_Name,
        Order_YearMonth,
        Total_Profit,
        RANK() OVER (ORDER BY Total_Profit DESC) AS ProfitRank
    FROM 
        TotalProfitPerProduct
)
SELECT 
    Product_Name, 
    Order_YearMonth, 
    Total_Profit
FROM 
    RankedProducts
WHERE 
    ProfitRank <= 10
ORDER BY 
    ProfitRank;


-- 7.Which products had the highest total sales value (Net_Sales) and their corresponding inventory cost for the year 2017?
SELECT 
    o.Product_Name,
    ROUND(SUM(o.Net_Sales),2) AS Total_Sales,
    ROUND(SUM(i.Warehouse_Inventory * i.Inventory_Cost_Per_Unit),2) AS Total_Inventory_Cost
FROM 
    Supply_Chain_Management.Orders_and_Shipments o
JOIN 
    Supply_Chain_Management.Inventory i
    ON o.Product_Name = i.Product_Name
WHERE 
    o.Order_YearMonth LIKE '2017%'  -- Filter for 2017
GROUP BY 
    o.Product_Name
ORDER BY 
    Total_Sales DESC 
    LIMIT 10;


-- 8.Which products had the highest number of shipments that arrived earlier than scheduled, and how many of these early shipments were recorded?
SELECT 
    o.Product_Name,
    COUNT(*) AS Total_Shipments,
    SUM(CASE 
        WHEN o.Shipment_Days_Actual < o.Shipment_Days_Scheduled THEN 1 
        ELSE 0 
    END) AS Early_Shipments
FROM 
    Supply_Chain_Management.Orders_and_Shipments o
GROUP BY 
    o.Product_Name
ORDER BY 
    Early_Shipments DESC
LIMIT 10;

-- 9.What is the average profit margin (Profit / Net_Sales) for each product, and which products have the highest average profit margin?
WITH ProductProfitMargin AS (
    SELECT 
        o.Product_Name,
        SUM(o.Profit) AS Total_Profit,
        SUM(o.Net_Sales) AS Total_Sales,
        CASE 
            WHEN SUM(o.Net_Sales) = 0 THEN 0
            ELSE ROUND(SUM(o.Profit) / SUM(o.Net_Sales), 2)
        END AS Profit_Margin
    FROM 
        Supply_Chain_Management.Orders_and_Shipments o
    GROUP BY 
        o.Product_Name
)
SELECT 
    Product_Name, 
    Total_Profit, 
    Total_Sales, 
    Profit_Margin
FROM 
    ProductProfitMargin
ORDER BY 
    Profit_Margin DESC
LIMIT 10;


-- 10.Which product categories have the longest average shipment delays, and what is the average delay (in days) for each category?

WITH CategoryShipmentDelays AS (
    SELECT 
        o.Product_Category,
        AVG(o.Shipment_Delay_Days) AS Avg_Delay_Days
    FROM 
        Supply_Chain_Management.Orders_and_Shipments o
    WHERE 
        o.Shipment_Delay_Days > 0  -- Only consider orders with delays
    GROUP BY 
        o.Product_Category
)
SELECT 
    Product_Category, 
    ROUND(Avg_Delay_Days, 2) AS Avg_Delay_Days
FROM 
    CategoryShipmentDelays
ORDER BY 
    Avg_Delay_Days DESC
LIMIT 10;

