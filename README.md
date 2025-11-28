# supply_chain_overview

# Project Overview

This project focuses on analyzing the Dataco Supply Chain dataset to evaluate end-to-end supply chain performance, including orders, deliveries, customer distribution, product categories, and regional markets.
Using Python, SQL, and Power BI, the project aims to identify operational bottlenecks, understand sales behavior, and provide data-driven recommendations to improve efficiency, profitability, and customer satisfaction.

#Project Objectives

- Analyze overall sales, orders, and profitability.
- Evaluate delivery performance (late vs on-time).
- Study order trends over time to identify seasonal patterns.
- Understand customer and market distribution.
- Analyze product category performance.
- Identify supply chain bottlenecks using shipping and processing metrics.
- Provide actionable recommendations for strategic decisions.

 #Tools & Technologies Used
- Python
Data cleaning
Handling missing values
Removing duplicates
Formatting date columns
Exporting cleaned dataset

-SQL
Analysis of customer segments
Market-level performance
Profitability and revenue calculation
Shipping and delivery trends
Time-series summary using date fields

-Power BI
KPI dashboard creation
Visualizations: line charts, bar charts, maps, donut charts
Slicers for interactive filtering
Insight-driven dashboard for decision-making

 #ataset Summary

The dataset contains the following key components:
1. Order Information

Order ID
Order Date & Shipping Date
Order Priority
Order Processing Time
Sales, Profit, Shipping Cost

2. Customer Details

Customer ID & Name
City, State, Country
Market & Business Segment

3. Product Details

Category & Subcategory
Product Name
Item SKU
Container Type

4. Shipping & Delivery Information

Shipping Mode
Delivery Status (On-Time, Late, Canceled, Advance)
Actual vs. Scheduled Shipping Days

5. Geographical Data

City-level information
Latitude & Longitude values

# Data Cleaning (Python)

Key cleaning tasks:
Removed duplicate records
Replaced or removed missing data
Standardized date formats
Converted numeric fields from text to numbers
Cleaned inconsistent category names
Exported the cleaned dataset as a CSV for SQL & Power BI

# Data Analysis (SQL)

SQL queries were used to:

Identify top-performing customer segments
Analyze profitability across markets
Study discount impact on profit
Calculate total revenue per region
Evaluate shipping mode efficiency
Determine most frequently purchased products
Extract sales & orders by year/month

# Power BI Dashboard

The dashboard provides a clear overview of supply chain performance using the following visuals:
KPI Cards

Total Sales
Total Orders
Total Profit
Late Deliveries
On-Time Deliveries
Average Processing Time
Customer Count

Visuals

Order Trend Over Time (Line Chart)
City-wise Sales Distribution (Map)
Late vs On-Time Deliveries (Donut Chart)
Top 10 Product Categories (Bar Chart)
Orders by Segment (Bar Chart)
Orders by Market (Bar Chart)

# Insights & Findings

- Order volume shows strong seasonal patterns.
- Sales are concentrated in a few key cities, showing uneven regional growth.
- Over 60% of deliveries are late, indicating operational inefficiency.
- Consumer segment contributes the highest number of orders.
- Certain product categories dominate sales.
- Markets like Africa and Pacific Asia show low performance.

# Conclusion

The analysis highlights that while Dataco performs well in certain markets and categories, major challenges exist in delivery efficiency and regional performance.
Addressing late deliveries and strengthening weak markets can significantly improve supply chain performance and customer satisfaction.

# Recommendations

- Improve logistics and delivery routes to reduce delays.
- Strengthen inventory in high-performing regions.
- Expand into low-performing markets with targeted campaigns.
- Prioritize top-selling categories and optimize stock for weaker ones.
- Implement loyalty programs for high-value consumer segment.
- Use monthly trend patterns for better forecasting and planning.
  
