
    
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
