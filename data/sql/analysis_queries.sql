-- Total Revenue
SELECT SUM(price * quantity) AS total_revenue
FROM sales_data;

-- Total Orders
SELECT COUNT(order_id) AS total_orders
FROM sales_data;

-- Revenue by Region
SELECT region,
       SUM(price * quantity) AS revenue
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;

-- Revenue by Category
SELECT category,
       SUM(price * quantity) AS revenue
FROM sales_data
GROUP BY category
ORDER BY revenue DESC;

-- Top 5 Products by Revenue
SELECT product,
       SUM(price * quantity) AS revenue
FROM sales_data
GROUP BY product
ORDER BY revenue DESC
LIMIT 5;

-- Monthly Revenue Trend
SELECT strftime('%Y-%m', date) AS month,
       SUM(price * quantity) AS revenue
FROM sales_data
GROUP BY month
ORDER BY month;

-- Average Order Value
SELECT AVG(price * quantity) AS average_order_value
FROM sales_data;

-- Best Customers
SELECT customer,
       SUM(price * quantity) AS revenue
FROM sales_data
GROUP BY customer
ORDER BY revenue DESC
LIMIT 5;
