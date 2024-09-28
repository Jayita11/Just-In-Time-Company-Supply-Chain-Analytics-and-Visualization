# Just In Time Company Supply Chain Analytics

## Project Background

In today's competitive business environment, maintaining operational efficiency within the supply chain is crucial for long-term success.Just In Time, a leading company in the global logistics and supply chain industry, is facing several challenges that hinder its ability to meet customer demands and optimize profitability. Key issues such as shipment delays, inconsistent inventory management, and difficulties in balancing supply with demand are negatively impacting business operations. The company provides tailored solutions for managing shipments and inventory, using data from 2015 to 2017, and serves diverse markets with a wide array of products across different regions. Addressing these challenges through data-driven insights is critical to ensuring improved performance and maintaining a competitive edge. The overarching goal for Just In Time Company is to streamline operations, enhance inventory management, and minimize delays in product deliveries to better meet customer expectations.

![DALL·E 2024-09-28 00 20 12 - A flat design icon representing supply chain analytics using blue shades  The icon should include elements like a factory, a delivery truck, a warehou](https://github.com/user-attachments/assets/13ad2d07-3975-4d56-8100-2b2e0967ab11)


## Business Problems

1. **Shipment Delays**:  
   Delays in delivering products to customers are leading to dissatisfaction and lost revenue. These delays are most prominent in key regions such as Latin America and Africa, where logistical inefficiencies are more pronounced. The inability to meet on-time delivery expectations is straining customer relationships and reducing overall business efficiency.

2. **Inventory Management Issues**:  
   Overstocking and stockouts are frequent due to poor demand forecasting and uneven inventory distribution. Overstocking leads to higher storage costs, while stockouts result in missed sales opportunities and frustrated customers. The challenge lies in finding the right balance between ensuring product availability and minimizing excess inventory costs.

3. **Supply and Demand Imbalances**:  
   Certain product categories experience significant supply-demand mismatches. While some products face consistent demand, others struggle with high delays or low turnover rates, leading to either overstock or stockouts. This misalignment impacts both revenue and operational efficiency.

4. **Lack of Customer Segmentation Insights**:  
   The company lacks a detailed understanding of customer purchasing behaviors across different regions and product categories. Without these insights, it's difficult to make informed decisions about product promotion, inventory allocation, and targeted marketing strategies.

## Goals of the Analysis

1. **Reduce Shipment Delays**:  
   Analyze and identify the root causes of delivery delays, particularly in underperforming regions, and implement logistical improvements to ensure faster and more reliable deliveries.

2. **Optimize Inventory Levels**:  
   Implement strategies to better manage inventory by aligning stock levels with actual demand, reducing storage costs, and preventing stockouts.

3. **Balance Supply and Demand**:  
   Improve supply chain processes to address mismatches in supply and demand, ensuring that high-demand products are available in the right regions at the right time.

4. **Enhance Customer Insights**:  
   Use data analytics to gain deeper insights into customer behavior and purchasing trends. This will enable more targeted marketing efforts, better inventory planning, and a more personalized customer experience.


An interactive Tableau dashboard accompanies this project to provide a dynamic and visual exploration of the findings **here**: [Tableau Dashboard](https://github.com/Jayita11/Just-In-Time-Company-Supply-Chain-Analytics-and-Visualization/tree/main/Tableau_Dashboard).


Python was utilized for **data cleaning**, **data wrangling**, **feature engineering**, and **data manipulation**. The detailed Python script used for these processes can be found **here**: [Python Script](https://github.com/Jayita11/Just-In-Time-Company-Supply-Chain-Analytics-and-Visualization/tree/main/Python). 


The **SQL queries** addressing various **business questions** are available and can be found **here**: [SQL Queries](https://github.com/Jayita11/Just-In-Time-Company-Supply-Chain-Analytics-and-Visualization/tree/main/SQL). 


By harnessing this data, **businesses can address key operational challenges**, optimize performance, and improve overall profitability. The insights gained from this project offer actionable recommendations to enhance supply chain efficiency, streamline inventory management, and reduce shipment delays.

---
## Dataset

This project utilizes a dataset consisting of three CSV files: **fulfillment.csv**, **inventory.csv**, and **orders_and_shipments.csv**. These files offer a comprehensive view of the supply chain process at **Just In Time Company**, covering shipment details, inventory levels, and order transactions. Together, these datasets enable a detailed analysis of key metrics such as order fulfillment times, storage costs, shipment delays, and overall inventory management.
---
## Executive Summary
Here the Tableau dashboard is explained in detail, and the SQL business question answers are thoroughly covered.

### Business Overview Dashboard

![Business Overview](https://github.com/user-attachments/assets/75977b92-ea26-431d-a0e2-96a81b5afda8)


- **Profit by Warehouse Country (Pie Chart):** The USA contributes the most to profit generation, accounting for **61.49%**, while **Puerto Rico** generates **38.51%**. This suggests that although Puerto Rico is performing well, the USA remains the dominant contributor to profit margins, likely due to larger order volumes or higher efficiency in the supply chain.

- **Product Category by Highest Inventory Cost (Bar Chart):** **Cleats** lead in inventory cost at **$18.52K**, followed by **Women's Apparel** at **$14.41K**. This suggests that the Cleats and Women's Apparel categories require significant investment in inventory, and careful management of stock levels in these categories is critical to minimize holding costs and optimize profit margins.

- **Most Profitable Goods (Bubble Chart):** Products such as **O’Brien Men's** and **Pelican Sunstream** are the most profitable, with several other goods closely following. This emphasizes that a few key products drive profitability, and focusing on these top-selling items can help maintain overall profitability while possibly expanding the marketing of similar products.

- **Most Profitable Product Category (Horizontal Bar Chart):** **Fishing** is the most profitable category at **$1.15M**, followed by **Cleats** and **Camping & Hiking**. This highlights the significance of outdoor sports-related goods in driving profits. Increasing inventory and marketing efforts in these high-profit categories could further boost overall profitability.

- **Net Sales vs Profit Margin Trend (Line and Bar Chart):** The chart shows a stable upward trend in net sales from **2015 to 2017**, peaking in mid-2017, followed by a decline in **2018**. Profit margins, however, have remained fairly stable, with small fluctuations. This indicates a need to investigate why sales dropped in 2018, even though profit margins stayed relatively steady, to adjust business strategies accordingly.

- **Profit by Product Department (Treemap):** The **Fun Shop** department dominates in profit generation, with **$3.64M**, followed by **Apparel** and **Golf**. This suggests that departments related to sports and leisure are performing best. A deeper analysis of why these departments are excelling could help replicate their success across other departments like Footwear, which generates comparatively lower profits.

---

### Shipment Management Dashboard


![Screenshot 2024-09-27 at 11 13 37 PM](https://github.com/user-attachments/assets/a0deaf10-5417-4b74-a2e2-94c2bed0ba9e)



- **Shipment Status by Customer Market (Stacked Bar Chart):** **LATAM (Latin America)** and **Europe** have the highest number of shipments, with LATAM reaching **2,923 delayed** and **2,712 on-time deliveries**, followed by Europe with **2,507 delayed** and **2,712 on-time**. North America shows fewer shipments but a balanced distribution between delayed and on-time deliveries. This suggests focusing on improving shipment efficiency, particularly in high-volume regions like LATAM and Europe, where delays are prominent.

- **Highest Shipment Delay by Product Category (Bubble Chart):** **Cardio Equipment** has the highest average shipment delay at **5.014 days**, followed by **Indoor/Outdoor Games (3.630 days)**. Addressing these product categories to reduce delays will significantly impact overall delivery performance, as delays in high-demand items can harm customer satisfaction and business performance.

- **Shipment Delay by Product Name (Bar Chart):** **Nike Men’s Free 5.0 Run** has the highest shipment delay of **5.014 days**, followed by **O’Brien Men's Neoprene** with a delay of **3.630 days**. In contrast, some products, such as **Diamondback Women’s Series**, have negative delay values, indicating faster-than-expected delivery. This highlights the need to focus on improving logistics for specific products that consistently experience longer shipment delays.

- **Shipment Delay Trends Over Time (Line Chart):** Shipment delays show a declining trend from **2015 to 2018**. The average shipment delay has decreased from **50 days in 2015** to around **0 days by 2018**. This positive trend indicates improvements in the overall shipment process, though there may still be occasional spikes that need addressing. Ensuring that this downward trend continues will be crucial for maintaining customer satisfaction.

- **Shipment Mode by Distribution (Pie Chart):** **Standard Class** accounts for the majority of shipments at **58.46%**, followed by **Second Class** at **19.46%**, and **First Class** at **15.70%**. Same-day delivery only constitutes **6.39%** of total shipments. Increasing the use of faster shipment modes like **First Class** and **Same Day** could help reduce shipment delays, especially for high-priority or time-sensitive products.

- **Shipment Delay by Country (Map Visualization):** The map shows that certain countries, particularly in **Latin America** and **Africa**, experience higher shipment delays. The USA also has significant shipment delays, although to a lesser extent. Addressing logistical challenges in countries with higher delays through localized strategies or improved carrier partnerships could lead to a reduction in overall delays.

---

### Inventory Dashboard


![Inventory Dashboard](https://github.com/user-attachments/assets/c989ccce-9677-4e24-b99e-bdb7f3fa0f71)



- **Top 10 Product Name by Inventory Cost per Unit (Bar Chart):** The product with the highest inventory cost per unit is **Nike Men’s Dri-FIT Victory** at **$49.40**, followed by **Perfect Fitness Rip Deck** at **$47.93**. These products require significant financial investment to stock, so managing their inventory efficiently to avoid overstocking is crucial for minimizing holding costs.

- **Supply & Demand by Product Department (Bar Chart):** There is a slight imbalance in supply and demand across product departments. For instance, the **Fan Shop** department shows more demand (**19.67K**) than supply (**18.60K**), suggesting potential understock issues. On the other hand, the **Golf** department shows more supply than demand. This discrepancy calls for adjustments in supply chain strategies to balance demand and supply, preventing stockouts or overstock situations.

- **Product Category by Stock (Bar Chart):** **Cleats** have the highest stock (**1,529 units**), while **Cardio Equipment** has the lowest (**55 units**). This indicates that Cleats are well-stocked, but low inventory levels in categories like Cardio Equipment and Men's Footwear (**264 units**) may result in understock situations if demand increases unexpectedly. Monitoring these low-stock categories is essential to avoid potential fulfillment issues.

- **Understock Product Fulfillment Days (Bar Chart):** The chart highlights that products like **Nike Men's Free 5.0 Run** and **Under Armour Toddler Shoes** experience significant understock fulfillment delays of **4.90** and **5.50 days**, respectively. Some categories, such as **Indoor/Outdoor Games**, show extreme delays of **45.58 days**. Addressing the understock issues for these items will significantly reduce delivery delays and improve customer satisfaction.

- **Top 10 Product Name by Storage Cost (Treemap):** The **Perfect Fitness Rip Deck** has the highest storage cost at **$18,517.72**, followed by **O'Brien Men's Neoprene Life Vest** at **$11,989.78**. High storage costs indicate that these items may occupy significant warehouse space or incur higher holding costs. These products should be closely monitored to ensure their turnover is high, reducing the financial burden of storing them.

- **Inventory to Sales Delta (Bar Chart with Delta):** **Women's Apparel** and **Fishing** categories are experiencing the most severe understock issues, with significant negative deltas (**-180** and **-248**, respectively). On the other hand, **Cleats** show a positive delta of **169.6**, indicating overstock. Ensuring an optimal balance between inventory and sales for these categories will help maintain stock levels and minimize overstock or understock costs.

---

### Key Performance Indicators (KPIs)

![Screenshot 2024-09-27 at 11 08 54 PM](https://github.com/user-attachments/assets/9b7efff4-07b8-4843-8e2b-75398d235228)

![Screenshot 2024-09-27 at 11 09 13 PM](https://github.com/user-attachments/assets/d1a10f4c-9168-419a-89d5-b686f8c99f2f)

![Screenshot 2024-09-27 at 11 09 35 PM](https://github.com/user-attachments/assets/8b2b78e7-a16b-4683-8ad0-33e158925cba)


- **Total Orders**: Represents the total number of orders processed within the reporting period, indicating the volume of business and demand for products.
- **Total Profit**: Reflects the total profit earned from all sales after deducting costs, measuring the financial health and profitability.
- **Total Revenue**: Indicates the total income generated from sales before expenses, a key indicator of business growth.
- **Total Customer**: Represents the total number of unique customers served, assessing the customer base and growth.
- **On-Schedule Delivery Rate**: Measures the percentage of orders delivered on or before the promised date, indicating supply chain efficiency.
- **Delayed Delivery Rate**: Represents the percentage of orders delayed beyond the expected delivery date, highlighting delivery or shipping issues.
- **Average Shipment Delay Day**: Shows the average delay in days for late shipments, with lower values indicating timeliness.
- **Storage Cost**: The total cost of storing inventory, reflecting efficiency in inventory management.
- **Average Order Fulfillment Days**: Reflects the average time taken to fulfill orders, with lower values indicating faster fulfillment.
- **Average Inventory Cost per Unit**: Shows the average cost of holding one unit of inventory, aiming for low costs to reduce operating expenses.
- **Total Warehouse Inventory**: The total quantity of inventory in stock, important for balancing supply and demand.

---

### Filters

![Screenshot 2024-09-27 at 11 09 59 PM](https://github.com/user-attachments/assets/c5f4e78b-ee43-4ddb-bd46-a62682a19829)

This shows filters that allow users to narrow down the data in the dashboard based on specific criteria:

- **Year of Shipment Date**: Users can filter data by selecting a specific year or view all shipment dates.
- **Product Department**: Filters data based on product categories or departments, allowing users to focus on specific product groups.
- **Warehouse Country**: Allows users to filter data by the country where the warehouse is located, useful for regional performance analysis.

These filters provide flexibility for users to customize the dashboard view based on the selected criteria.

### SQL Analysis

**1. Which are the top 2 products by total sales value (Net_Sales) for each month?**

![SCM_1](https://github.com/user-attachments/assets/4179a345-2ed8-43f9-9832-9f7f7f627b01)

![Screenshot 2024-09-27 at 11 28 36 PM](https://github.com/user-attachments/assets/e3d46af3-15d9-44bc-a844-2f49dda65bd0)


**Insights**:
- Field & Stream Sportsman 16 Gun Fire Safe and Perfect Fitness Perfect Rip Deck consistently rank in the top 2 across multiple months, indicating strong and sustained demand.
- Lawn Mower and Summer Dresses perform well during their respective seasonal peaks (summer and holiday months), suggesting demand spikes during specific periods.
- Products like Web Cameras and Porcelain Crafts show high sales during specific months, revealing diverse revenue streams outside of the consistently top-performing products.

**2. Which are the top 20 product categories that have the highest number of delayed shipments, and what are their total shipments, delayed shipments, and average delay percentage?**

![SCM_2](https://github.com/user-attachments/assets/9fdb752b-bb80-49b1-bf6c-4f8b0b1e3969)

![Screenshot 2024-09-27 at 11 29 20 PM](https://github.com/user-attachments/assets/0abffa55-ccc1-4071-880b-7ba614b854c8)

**Insights**:
- Cleats and Men's Footwear top the list, each with over 1,700 delayed shipments. This indicates significant operational issues in fulfilling orders for these categories.
- Accessories has the highest average delay percentage (0.50), despite fewer total shipments. This suggests a chronic issue with delayed deliveries for this category.
- Categories like Fishing, Water Sports, and Camping & Hiking show relatively high delays, likely tied to seasonal demand or logistical challenges in shipping bulky or specialized products.
- Golf Gloves and Golf Balls have lower total delays but still see a 0.44 delay percentage, indicating a more balanced but still noticeable delay.

**3. How do discounts impact profit margins for each product, and which products have the highest negative impact due to high discounts?**

![SCM_3](https://github.com/user-attachments/assets/a2e216e6-1dda-4cca-aa56-681fd7e25ea9)

![Screenshot 2024-09-27 at 11 30 00 PM](https://github.com/user-attachments/assets/a45ad979-7dbb-478f-8a17-f5b6acd16f4c)


**Insights**:
- Perfect Fitness Perfect Rip Deck has the highest discount but still maintains a strong profit-to-discount ratio, making it a resilient product despite high discounts.
- Nike Men’s CJ Elite 2 TD Football Cleat and Nike Men’s Dri-FIT Victory Golf Polo receive significant discounts but show lower profit-per-discount, indicating potential room for improvement in pricing strategy.
- Web Camera has the highest profit-to-discount ratio, suggesting it generates substantial profit with minimal discounting.
- O'Brien Men's Neoprene Life Vest and Field & Stream Sportsman 16 Gun Fire Safe show consistent profitability even with moderate discounts.

**4. Which are the top 20 products by total storage cost (calculated as the product of Warehouse_Inventory and Inventory_Cost_Per_Unit) across different months?**

![SCM_4](https://github.com/user-attachments/assets/58b0f04d-afde-4bcb-98b8-a8ed2f295ef5)

![Screenshot 2024-09-27 at 11 30 54 PM](https://github.com/user-attachments/assets/ce2a4f78-a8b4-4e14-a510-8d3a249b8c26)


**Insights**:
- Perfect Fitness Perfect Rip Deck has the highest storage costs, with multiple entries in the top 20. The peak was in May 2016 with a storage cost of 1891.76.
- Nike Men's Dri-FIT Victory Golf Polo also appears frequently, with relatively consistent storage costs around the 1200-1300 range, indicating steady inventory levels for this product.
- O'Brien Men's Neoprene Life Vest shows some fluctuations in storage costs, ranging from 1041.28 in 2015 to 841.48 in 2017, likely due to changes in inventory levels or production schedules.

**5. Identify orders that exceeded their scheduled shipment time (Shipment_Days_Actual > Shipment_Days_Scheduled) and calculate how often this happens.**

![SCM_5](https://github.com/user-attachments/assets/54def915-f63f-4283-a10f-e6633b33c2ec)

![Screenshot 2024-09-27 at 11 31 27 PM](https://github.com/user-attachments/assets/41d77c73-f654-489b-bbb9-8452129affb1)

![Screenshot 2024-09-27 at 11 31 44 PM](https://github.com/user-attachments/assets/412f44b4-cf22-4e67-85b9-e94bbc3a3480)

**Insights**:
- Perfect Fitness Perfect Rip Deck and Nike Men’s CJ Elite 2 TD Football Cleat have the most delayed orders (1,904 and 1,706, respectively). These products are consistently experiencing delays, indicating issues in the supply chain or logistics.
- Products like Pelican Sunstream 100 Kayak and Field & Stream Sportsman 16 Gun Fire Safe also have significant delays (1,129 and 1,216), suggesting challenges in fulfilling large, bulky products.
- Some products, such as Smart Watches and Nike Women's Legend V-Neck T-Shirt, have relatively low total orders and delayed orders. These might not be critical focus areas for improvement but should still be monitored.

**6. Which are the top 10 most profitable products based on total Profit and how do they compare across different months?**

![SCM_6](https://github.com/user-attachments/assets/8a95f615-8237-48d7-bed5-167255d84a18)

![Screenshot 2024-09-27 at 11 32 14 PM](https://github.com/user-attachments/assets/44b89641-36cf-4591-90d0-6231006d0f68)


**Insights**:
- Web Camera is the most profitable product in October 2017, with a profit of 28,251, indicating high demand during that month.
- Perfect Fitness Perfect Rip Deck consistently appears among the top profitable products across various months, showing sustained profitability.
- Field & Stream Sportsman 16 Gun Fire Safe ranks highly in multiple months, with a profit of 21,400 in July 2016 and 20,800 in November 2016, indicating consistent demand over time.
- Perfect Fitness Perfect Rip Deck is a standout product, dominating the rankings in multiple months, showcasing its importance to the business in terms of profitability.

**7. Which products had the highest total sales value (Net_Sales) and their corresponding inventory cost for the year 2017?**

![SCM_7](https://github.com/user-attachments/assets/2d24027a-bdbf-4a84-8bdd-fee79d40029a)

![Screenshot 2024-09-27 at 11 32 39 PM](https://github.com/user-attachments/assets/174ae91e-4e3b-42e1-8b7f-77f838349a85)

**Insights**:
- Field & Stream Sportsman 16 Gun Fire Safe is the top-selling product of 2017 with total sales of 9,798,480, and it incurs a significant inventory cost of 2,733,579.99. This product contributes heavily to both revenue and inventory costs.
- Perfect Fitness Perfect Rip Deck has the second-highest total sales (6,649,840) but a substantial inventory cost of 2,153,526.86, indicating that it requires careful inventory management to maintain profitability.
- Web Camera has relatively moderate total sales (2,517,346.6) but incurs a low inventory cost of 47,561.67, making it a highly efficient product in terms of profit versus inventory cost.
- Products like Pelican Sunstream 100 Kayak and O'Brien Men's Neoprene Life Vest show high sales but also have correspondingly high inventory costs, indicating they may be more expensive to store or manage due to size or specialized storage needs.

**8. Which products had the highest number of shipments that arrived earlier than scheduled, and how many of these early shipments were recorded?**

![SCM_8](https://github.com/user-attachments/assets/84999646-d1dc-400c-994d-53f8db6bf198)

![Screenshot 2024-09-27 at 11 33 39 PM](https://github.com/user-attachments/assets/503f581a-81b0-4d06-8994-907311d79701)

**Insights**:
- Perfect Fitness Perfect Rip Deck leads the list with 1,518 early shipments, indicating strong logistics performance for this product.
- Nike Men’s CJ Elite 2 TD Football Cleat and Nike Men’s Dri-FIT Victory Golf Polo also perform well, with 1,320 and 1,267 early shipments, respectively, showing consistent timely delivery for these items.
- Products like O'Brien Men's Neoprene Life Vest and Field & Stream Sportsman 16 Gun Fire Safe rank high in early shipments but also have significant overall shipments, indicating a good balance between volume and early deliveries.

**9. What is the average profit margin (Profit / Net_Sales) for each product, and which products have the highest average profit margin?**

![SCM_9](https://github.com/user-attachments/assets/8c0a1791-5a7d-4286-b94f-d6c49d4aaca0)

![Screenshot 2024-09-27 at 11 34 09 PM](https://github.com/user-attachments/assets/bcf5ebd0-d2fb-496a-9022-66b06ad37be6)

**Insights**:
- Nike Men’s Comfort 2 Slide has the highest profit margin at 1.05, meaning it generates more profit than its total sales, likely due to premium pricing or cost efficiencies.
- Hirzl Women's Soffit Flex Golf Glove and O'Brien Men's Neoprene Life Vest also have high profit margins of 0.93, indicating they are highly profitable compared to their sales.
- Perfect Fitness Perfect Rip Deck appears with a strong profit margin of 0.91 despite high sales volume (6,894,762 total sales), indicating efficient cost management for a high-demand product.
- Team Golf Tennessee Volunteers Putter Grip and Team Golf Texas Longhorns Putter Grip have profit margins of 0.89 and 0.88, showing that niche products can also generate strong profit margins despite lower overall sales.

**10. Which product categories have the longest average shipment delays, and what is the average delay (in days) for each category?**

![SCM_10](https://github.com/user-attachments/assets/b51dc982-0ccc-4252-b30d-115ac5ebe3be)

![Screenshot 2024-09-27 at 11 34 31 PM](https://github.com/user-attachments/assets/e561778b-dba7-4230-9cad-64fadb859bcb)

**Insights**:
- Strength Training has the longest average delay of 395 days, indicating severe fulfillment or logistical issues for this category. This should be an immediate focus for investigation and improvement.
- Sporting Goods and Music follow with delays of 203 and 193 days on average, suggesting potential challenges in managing or shipping products within these categories.
- Categories like Cardio Equipment and CDs show average delays of 117 and 94 days, respectively, which still reflects issues that need attention but are less severe than the top performers.
- Golf Shoes and Golf Balls have the lowest average delay days in this list, with 70 and 65 days, respectively. These delays, while notable, may not be as critical compared to other categories.

## Recommendations

- **Optimize Product Inventory**: To improve profits and reduce storage costs, inventory optimization is crucial, particularly for high-demand and high-margin products. By studying seasonal demand patterns and adjusting stock levels accordingly, the company can avoid overstock during slow periods and prevent stockouts during peak times. Maintaining a reasonable buffer for popular products will enhance customer satisfaction while minimizing excess inventory expenses.

- **Rebalance Inventory Distribution**: Distribution imbalances, especially in high-demand categories like Fan Shop, have resulted in missed opportunities. Reorganizing inventory distribution across warehouses, especially for fast-moving goods, can reduce shipment delays and improve overall service levels. By aligning warehouse stock levels with regional demand, the company can increase its responsiveness and reduce transit times.

- **Improve Shipment Efficiency**: Shipment delays are a recurring issue, particularly in regions like Latin America and Africa. By refining logistics and working closely with local carriers, the company can reduce delivery delays and improve on-time performance. Investing in faster shipping options, such as promoting Same Day or First Class modes, will further enhance delivery reliability for time-sensitive products.

- **Leverage High-Performing Products**: Products like Perfect Fitness Perfect Rip Deck and Field & Stream Sportsman 16 Gun Fire Safe consistently perform well across various KPIs. Ensuring consistent stock levels, increased marketing efforts, and strategic pricing can further capitalize on their profitability. Focusing marketing efforts on top-performing products during peak seasons will also maximize revenue potential.

- **Address Underperforming Categories**: Some product categories, such as Fishing and Men's Footwear, exhibit high shipment delays and operational inefficiencies. A closer evaluation of these categories to understand bottlenecks in production, shipment, or demand forecasting could help resolve issues. Innovative marketing and product improvements could also boost performance in these underperforming categories.

- **Reduce Shipment Delays for Bulky Products**: Large products like Pelican Sunstream 100 Kayak and Field & Stream Sportsman 16 Gun Fire Safe experience significant delays due to their size and logistical challenges. Focusing on improving the supply chain for bulky items, such as using specialized carriers or optimizing packaging, could streamline their delivery process and reduce delays.

- **Monitor Discounting Strategies**: Some products, such as Nike Men’s CJ Elite 2 TD Football Cleat, receive high discounts but show lower profit margins. A review of discount strategies is recommended to ensure they align with profitability goals. Adjusting pricing strategies for products with poor profit-to-discount ratios can ensure better financial returns without compromising sales volume.

- **Expand Market Penetration in Underperforming Regions**: Shipment data shows that regions such as Latin America and Africa have substantial sales potential but are affected by delays and logistical inefficiencies. Expanding partnerships with regional carriers and optimizing inventory levels at regional warehouses could improve penetration and performance in these regions.

- **Improve Marketing Strategies for Seasonal Products**: Seasonal products like Lawn Mowers and Summer Dresses perform well during specific periods. Aligning marketing strategies with these seasonal peaks by offering timely promotions, targeted advertising, and special discounts can help capture demand more effectively during these periods, maximizing sales potential.

- **Optimize Warehouse Storage Costs**: Products like Perfect Fitness Perfect Rip Deck and O'Brien Men's Neoprene Life Vest incur high storage costs. Conducting regular inventory reviews and reducing excess stock for these items during off-peak seasons will help lower storage expenses. Additionally, increasing turnover rates for high-storage-cost items can reduce the financial burden of long-term storage.

