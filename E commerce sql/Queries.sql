1. View all tables

SELECT * FROM customer;
SELECT * FROM product;
SELECT * FROM orders;
SELECT * FROM order_item;
SELECT * FROM payments;

2. Total Revenue

SELECT SUM(total_amount) as Total_revenue
from orders;

3. Monthly Revenue

SELECT 
	MONTH(order_date) as month,
    sum(total_amount) as monthly_revenue
from orders group by month(order_date)
order by month;

4. Top Selling Products

SELECT 
    p.product_name, SUM(oi.quantity) AS total_quantity_sold
FROM
    order_item oi
        JOIN
    product p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;
	
5. Best Customers by Spending
   
SELECT 
    c.customer_name, SUM(oi.quantity * p.price) AS total_amount
FROM
    customer c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    order_item oi ON o.order_id = oi.order_id
        JOIN
    product p ON oi.product_id = p.product_id
GROUP BY customer_name
ORDER BY total_amount DESC;

6.Best customer with highest spending

SELECT 
    customer_name,
    SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
GROUP BY customer_name
ORDER BY total_spent DESC;



