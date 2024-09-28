# Just-In-Time-Company-Supply-Chain-Analytics

## Executive Summary
Here the Tableau dashboard is explained in detail, and the SQL business question answers are thoroughly covered.

### Business Overview Dashboard

![Business Overview](https://github.com/user-attachments/assets/75977b92-ea26-431d-a0e2-96a81b5afda8)


- The USA contributes the most to profit generation, accounting for **61.49%**, while **Puerto Rico** generates **38.51%**. This suggests that although Puerto Rico is performing well, the USA remains the dominant contributor to profit margins, likely due to larger order volumes or higher efficiency in the supply chain.

- **Cleats** lead in inventory cost at **$18.52K**, followed by **Women's Apparel** at **$14.41K**. This suggests that the Cleats and Women's Apparel categories require significant investment in inventory, and careful management of stock levels in these categories is critical to minimize holding costs and optimize profit margins.

Products such as **O’Brien Men's** and **Pelican Sunstream** are the most profitable, with several other goods closely following. This emphasizes that a few key products drive profitability, and focusing on these top-selling items can help maintain overall profitability while possibly expanding the marketing of similar products.

**Fishing** is the most profitable category at **$1.15M**, followed by **Cleats** and **Camping & Hiking**. This highlights the significance of outdoor sports-related goods in driving profits. Increasing inventory and marketing efforts in these high-profit categories could further boost overall profitability.

The chart shows a stable upward trend in net sales from **2015 to 2017**, peaking in mid-2017, followed by a decline in **2018**. Profit margins, however, have remained fairly stable, with small fluctuations. This indicates a need to investigate why sales dropped in 2018, even though profit margins stayed relatively steady, to adjust business strategies accordingly.

The **Fun Shop** department dominates in profit generation, with **$3.64M**, followed by **Apparel** and **Golf**. This suggests that departments related to sports and leisure are performing best. A deeper analysis of why these departments are excelling could help replicate their success across other departments like Footwear, which generates comparatively lower profits.

---

### Shipment Management Dashboard

![Shipment Management](https://github.com/user-attachments/assets/3f77f641-e105-47b0-b51e-20c4f00c12f4)


**LATAM (Latin America)** and **Europe** have the highest number of shipments, with LATAM reaching **2,923 delayed** and **2,712 on-time deliveries**, followed by Europe with **2,507 delayed** and **2,712 on-time**. North America shows fewer shipments but a balanced distribution between delayed and on-time deliveries. This suggests focusing on improving shipment efficiency, particularly in high-volume regions like LATAM and Europe, where delays are prominent.

**Cardio Equipment** has the highest average shipment delay at **5.014 days**, followed by **Indoor/Outdoor Games (3.630 days)**. Addressing these product categories to reduce delays will significantly impact overall delivery performance, as delays in high-demand items can harm customer satisfaction and business performance.

**Nike Men’s Free 5.0 Run** has the highest shipment delay of **5.014 days**, followed by **O’Brien Men's Neoprene** with a delay of **3.630 days**. In contrast, some products, such as **Diamondback Women’s Series**, have negative delay values, indicating faster-than-expected delivery. This highlights the need to focus on improving logistics for specific products that consistently experience longer shipment delays.

Shipment delays show a declining trend from **2015 to 2018**. The average shipment delay has decreased from **50 days in 2015** to around **0 days by 2018**. This positive trend indicates improvements in the overall shipment process, though there may still be occasional spikes that need addressing. Ensuring that this downward trend continues will be crucial for maintaining customer satisfaction.

**Standard Class** accounts for the majority of shipments at **58.46%**, followed by **Second Class** at **19.46%**, and **First Class** at **15.70%**. Same-day delivery only constitutes **6.39%** of total shipments. Increasing the use of faster shipment modes like **First Class** and **Same Day** could help reduce shipment delays, especially for high-priority or time-sensitive products.

The map shows that certain countries, particularly in **Latin America** and **Africa**, experience higher shipment delays. The USA also has significant shipment delays, although to a lesser extent. Addressing logistical challenges in countries with higher delays through localized strategies or improved carrier partnerships could lead to a reduction in overall delays.

---

### Inventory Dashboard


![Inventory Dashboard](https://github.com/user-attachments/assets/c989ccce-9677-4e24-b99e-bdb7f3fa0f71)



The product with the highest inventory cost per unit is **Nike Men’s Dri-FIT Victory** at **$49.40**, followed by **Perfect Fitness Rip Deck** at **$47.93**. These products require significant financial investment to stock, so managing their inventory efficiently to avoid overstocking is crucial for minimizing holding costs.

There is a slight imbalance in supply and demand across product departments. For instance, the **Fan Shop** department shows more demand (**19.67K**) than supply (**18.60K**), suggesting potential understock issues. On the other hand, the **Golf** department shows more supply than demand. This discrepancy calls for adjustments in supply chain strategies to balance demand and supply, preventing stockouts or overstock situations.

**Cleats** have the highest stock (**1,529 units**), while **Cardio Equipment** has the lowest (**55 units**). This indicates that Cleats are well-stocked, but low inventory levels in categories like Cardio Equipment and Men's Footwear (**264 units**) may result in understock situations if demand increases unexpectedly. Monitoring these low-stock categories is essential to avoid potential fulfillment issues.

The chart highlights that products like **Nike Men's Free 5.0 Run** and **Under Armour Toddler Shoes** experience significant understock fulfillment delays of **4.90** and **5.50 days**, respectively. Some categories, such as **Indoor/Outdoor Games**, show extreme delays of **45.58 days**. Addressing the understock issues for these items will significantly reduce delivery delays and improve customer satisfaction.

The **Perfect Fitness Rip Deck** has the highest storage cost at **$18,517.72**, followed by **O'Brien Men's Neoprene Life Vest** at **$11,989.78**. High storage costs indicate that these items may occupy significant warehouse space or incur higher holding costs. These products should be closely monitored to ensure their turnover is high, reducing the financial burden of storing them.

**Women's Apparel** and **Fishing** categories are experiencing the most severe understock issues, with significant negative deltas (**-180** and **-248**, respectively). On the other hand, **Cleats** show a positive delta of **169.6**, indicating overstock. Ensuring an optimal balance between inventory and sales for these categories will help maintain stock levels and minimize overstock or understock costs.

---

### Key Performance Indicators (KPIs)

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

This section shows filters that allow users to narrow down the data in the dashboard based on specific criteria:

- **Year of Shipment Date**: Users can filter data by selecting a specific year or view all shipment dates.
- **Product Department**: Filters data based on product categories or departments, allowing users to focus on specific product groups.
- **Warehouse Country**: Allows users to filter data by the country where the warehouse is located, useful for regional performance analysis.

These filters provide flexibility for users to customize the dashboard view based on the selected criteria.
