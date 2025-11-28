create database supply_chain;

use supply_chain;

select * from dataco_supply_chain;

#total sales
SELECT ROUND((SUM(sales)),2) AS total_sales
FROM dataco_supply_chain;

#total profit
SELECT ROUND((SUM(order_profit_per_order)),2) AS total_profit
FROM dataco_supply_chain;

#avg. sales per order
SELECT ROUND((AVG(sales)),2) AS avg_sales
FROM dataco_supply_chain;

#sales by category
SELECT category_name, ROUND((SUM(sales)),2) AS total_sales
FROM dataco_supply_chain
GROUP BY category_name
ORDER BY total_sales DESC;

#top 10 categories by sales
SELECT category_name, ROUND((SUM(sales)),2) AS total_sales
FROM dataco_supply_chain
GROUP BY category_name
ORDER BY total_sales DESC
LIMIT 10;

# top 10 profit by category
SELECT category_name, ROUND((SUM(order_profit_per_order)),2) AS total_profit
FROM dataco_supply_chain
GROUP BY category_name
ORDER BY total_profit DESC
LIMIT 10;

#avg delivery time
SELECT ROUND((AVG(days_for_shipping_real)),2) AS avg_delivery_days
FROM dataco_supply_chain;

# count of late deliveries
SELECT COUNT(*) AS late_deliveries
FROM dataco_supply_chain
WHERE late_delivery_risk = 1;

#sales by market
SELECT market, ROUND((SUM(sales)),2) AS market_sales
FROM dataco_supply_chain
GROUP BY market
ORDER BY market_sales DESC;

#sales by customer segments
SELECT customer_segment, ROUND((SUM(sales)),2) AS segment_sales
FROM dataco_supply_chain
GROUP BY customer_segment
ORDER BY segment_sales DESC;

#top 10 customers by sales
SELECT customer_id, 
       CONCAT(customer_fname, ' ', customer_lname) AS customer_name,
       SUM(sales) AS total_sales
FROM dataco_supply_chain
GROUP BY customer_id, customer_fname, customer_lname
ORDER BY total_sales DESC
LIMIT 10;

#shipping mode performance
SELECT shipping_mode, 
       COUNT(*) AS order_count, 
       ROUND((AVG(days_for_shipping_real)),2) AS avg_delivery_days
FROM dataco_supply_chain
GROUP BY shipping_mode
ORDER BY avg_delivery_days;

#total orders per state
SELECT order_state, COUNT(order_id) AS total_orders
FROM dataco_supply_chain
GROUP BY order_state
ORDER BY total_orders DESC;

# profit ration by product
SELECT product_name, AVG(order_item_profit_ratio) AS avg_profit_ratio
FROM dataco_supply_chain
GROUP BY product_name
ORDER BY avg_profit_ratio DESC
LIMIT 10;

#top 5 product per category
SELECT *
FROM (
    SELECT 
        category_name,
        product_name,
        SUM(sales) AS product_sales,
        ROW_NUMBER() OVER (
            PARTITION BY category_name 
            ORDER BY SUM(sales) DESC
        ) AS rn
    FROM dataco_supply_chain
    GROUP BY category_name, product_name
) x
WHERE rn <= 5;

#clv customer lifetime value
SELECT 
    customer_id,
    CONCAT(customer_fname,' ', customer_lname) AS customer_name,
    SUM(sales) AS lifetime_value
FROM dataco_supply_chain
GROUP BY customer_id, customer_fname, customer_lname
ORDER BY lifetime_value DESC;

# top 10 most profitable regions
SELECT order_region, SUM(order_profit_per_order) AS total_profit
FROM dataco_supply_chain
GROUP BY order_region
ORDER BY total_profit DESC
limit 10;

# delivery delay impact
SELECT 
    AVG(days_for_shipping_real) AS avg_delivery_time,
    AVG(late_delivery_risk) AS late_risk_ratio
FROM dataco_supply_chain;

# price vs quantity
SELECT 
    product_price,
    AVG(order_item_quantity) AS avg_quantity
FROM dataco_supply_chain
GROUP BY product_price
ORDER BY product_price;

# most frequently ordered product
SELECT product_name, COUNT(order_item_id) AS order_frequency
FROM dataco_supply_chain
GROUP BY product_name
ORDER BY order_frequency DESC
LIMIT 10;

#shipping mode efficiency
SELECT 
    shipping_mode,
    AVG(days_for_shipping_real) AS avg_delivery_time
FROM dataco_supply_chain
GROUP BY shipping_mode;

#Discount Impact on Profit
SELECT 
   ROUND((AVG(order_item_discount)),2) AS avg_discount,
    ROUND((AVG(order_profit_per_order)),2) AS avg_profit
FROM dataco_supply_chain;

#Customer Segments with Highest Sales
SELECT customer_segment, ROUND((SUM(sales)),2) AS segment_sales
FROM dataco_supply_chain
GROUP BY customer_segment
ORDER BY segment_sales DESC;







































