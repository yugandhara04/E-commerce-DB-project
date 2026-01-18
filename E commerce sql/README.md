# E-Commerce SQL Database Project

# This is a simple e-commerce database project created using MySQL.

I built this project to practice real-world SQL concepts like:
- Database design
- Primary and foreign keys
- Joins between multiple tables
- Business analysis queries

The database contains customer, product, order, payment and order item data.

# Database contains Tables
- Customer
- Product
- Orders
- Order_Item
- Payments

# What this project shows?
- How an e-commerce system stores data
- How to calculate revenue
- How to find top selling products
- How to analyze customer spending

# How to run
1. Run schema.sql to create the database and tables
2. Run data.sql to insert sample data
3. Run queries.sql to perform analysis

# Insights i got using these queries

-Total highest revenue is 9593.00 , SUM aggregating function is used to calculate total revenue.

-secondly, which month revenue is highest i.e month 4.

- Inner join is used to join two table hving common columns , i used inner join to check quantity of each products sold joining orders and product table .

-I used two queries for finding best customer for spending more money one uses order total directly which is simpler and faster and another one uses item level data which is more accurate for validation.


I created this project for learning and portfolio purpose.

