create database Ecommerce_db;
use Ecommerce_db;

create table Customer(
	customer_id int primary key auto_increment,
    customer_name varchar(100),
    email varchar(100),
    city varchar(50),
    country varchar(50),
    signup_date date
    );

create table Product(
	product_id int primary key auto_increment,
	product_name varchar(100),
    category varchar(50),
    price decimal(10,2)
    );    
    
create table orders(
	order_id int primary key auto_increment,
    customer_id int,
    order_date date,
    total_amount decimal(10,2),
    foreign key (customer_id) references Customer(customer_id)
    );    
    
create table order_item(
	order_item_id int primary key auto_increment,
    order_id int,
    product_id int,
    quantity int,
    subtotal decimal(10,2),
    foreign key (order_id) references orders(order_id),
    foreign key (product_id) references Product(product_id)
    ); 

create table Payments(
	payment_id int primary key auto_increment,
    order_id int,
    payment_method varchar(50),
    payment_status varchar(50),
    foreign key (order_id) references orders(order_id)
    );    
    
   show tables; 
   drop table custromer;
   
    show tables; 
    
insert into customer(customer_id,customer_name, email, city, country, signup_date) values
('1','Aarav Sharma', 'aarav@gmail.com', 'Mumbai', 'India', '2023-01-10'),
('2','Neha Verma', 'neha@gmail.com', 'Delhi', 'India', '2023-02-15'),
('3','Rahul Mehta', 'rahul@gmail.com', 'Pune', 'India', '2023-03-05'),
('4','Simran Kaur', 'simran@gmail.com', 'Chandigarh', 'India', '2023-03-18'),
('5','Rohit Patel', 'rohit@gmail.com', 'Ahmedabad', 'India', '2023-04-01');  

insert into product(product_id, product_name, category, price) values
('1','Wireless Mouse','Electronic', 799),
('2','Bluetooth Headphones','Electronic', 1999),
('3','Laptop Backpack','Accessories',1499),
('4','Smart Watch','Electronics', 2999),
('5','Water bottle','Home', 499);

insert into orders (customer_id, order_date, total_amount) values
(1, '2023-04-05', 2798),
(2, '2023-04-10', 1999),
(3, '2023-04-15', 3498),
(4, '2023-04-20', 799),
(5, '2023-04-25', 499);

INSERT INTO order_item (order_id, product_id, quantity, subtotal) VALUES
(1, 1, 1, 799),
(1, 2, 1, 1999),
(2, 2, 1, 1999),
(3, 3, 1, 1499),
(3, 4, 1, 2999),
(4, 1, 1, 799),
(5, 5, 1, 499);

insert into payments (order_id, payment_method, payment_status) values
(1, 'Credit Card', 'Completed'),
(2, 'UPI', 'Completed'),
(3, 'Debit Card', 'Completed'),
(4, 'UPI', 'Completed'),
(5, 'Cash on Delivery', 'Pending');

SELECT * FROM customer;
SELECT * FROM product;
SELECT * FROM orders;
SELECT * FROM order_item;
SELECT * FROM payments;

SELECT SUM(total_amount) as Total_revenue
from orders;

SELECT 
	MONTH(order_date) as month,
    sum(total_amount) as monthly_revenue
from orders group by month(order_date)
order by month;

SELECT 
    p.product_name, SUM(oi.quantity) AS total_quantity_sold
FROM
    order_item oi
        JOIN
    product p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;
	
   
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

SELECT 
    customer_name,
    SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customer c ON o.customer_id = c.customer_id
GROUP BY customer_name
ORDER BY total_spent DESC;

SELECT 
    product_name, SUM(oi.quantity) AS total_quantity
FROM
    order_item oi
        JOIN
    product p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;
    