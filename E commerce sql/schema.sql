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
    