create database pizza_sales;

-- 1. What is the total revenue generated?

SELECT ROUND(SUM(od.quantity * p.price), 2) AS total_revenue
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id;


-- 2. Which pizza size contributes the most to revenue?

SELECT p.size, ROUND(SUM(od.quantity * p.price), 2) AS revenue
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
GROUP BY p.size
ORDER BY revenue DESC;

-- 3. Which pizza type generates the highest sales revenue?

SELECT pt.name, ROUND(SUM(od.quantity * p.price), 2) AS revenue
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY revenue DESC
LIMIT 10;

-- 4. What are the top 5 best-selling pizzas by quantity sold?

SELECT pt.name, SUM(od.quantity) AS total_sold
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold DESC
LIMIT 5;


-- 5. Which pizzas are least selling?

SELECT pt.name, SUM(od.quantity) AS total_sold
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.name
ORDER BY total_sold ASC
LIMIT 5;

-- 6. What is the average order value?

SELECT ROUND(SUM(od.quantity * p.price) / COUNT(DISTINCT o.order_id), 2) AS avg_order_value
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN orders o ON od.order_id = o.order_id;


-- 7. What is the average number of pizzas per order?

SELECT ROUND(SUM(quantity) * 1.0 / COUNT(DISTINCT order_id), 2) AS avg_pizzas_per_order
FROM orders_details ;


-- 8. Which day of the week has the highest number of orders?

SELECT DAYNAME(order_date) AS day_of_week,
COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY day_of_week
ORDER BY total_orders DESC;


-- 9. What is the peak hour of the day when most orders are placed?

SELECT HOUR(order_date) AS order_hour, COUNT(order_id) AS total_orders
FROM orders 
GROUP BY order_hour
ORDER BY total_orders DESC;


-- 10. How many unique customers/orders were placed each month?

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
COUNT(DISTINCT order_id) AS total_orders
FROM orders 
GROUP BY month
ORDER BY month;


-- 11. How has the monthly revenue trend changed over time?

SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month, 
ROUND(SUM(od.quantity * p.price), 2) AS revenue
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN orders o ON od.order_id = o.order_id
GROUP BY month
ORDER BY month;


-- 12. Which pizza category is most popular?

SELECT pt.category, SUM(od.quantity) AS total_sold
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY total_sold DESC;


-- 13. Which pizza category contributes the most to total revenue?

SELECT pt.category, ROUND(SUM(od.quantity * p.price), 2) AS revenue
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY pt.category
ORDER BY revenue DESC;


-- 14. What is the growth rate of sales month-over-month?

WITH monthly_sales AS (
    SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS month, 
    SUM(od.quantity * p.price) AS revenue
    FROM orders_details od
    JOIN pizzas p ON od.pizza_id = p.pizza_id
    JOIN orders o ON od.order_id = o.order_id
    GROUP BY month
)
SELECT month,
       revenue,
       ROUND((revenue - LAG(revenue) OVER (ORDER BY month)) / LAG(revenue) 
       OVER (ORDER BY month) * 100, 2) AS growth_rate
FROM monthly_sales;


-- 15. Identify the top 5 pizzas that show consistent demand.

SELECT pt.name, COUNT(DISTINCT DATE_FORMAT(o.order_date, '%Y-%m')) AS active_months,
SUM(od.quantity) AS total_sold
FROM orders_details od
JOIN pizzas p ON od.pizza_id = p.pizza_id
JOIN pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
JOIN orders o ON od.order_id = o.order_id
GROUP BY pt.name
HAVING active_months = (SELECT COUNT(DISTINCT DATE_FORMAT(order_date, '%Y-%m')) FROM orders)
ORDER BY total_sold DESC
LIMIT 5;
