# database-cafe-order

## Title
Cafe Order

## ERD 
![order_ERD](https://github.com/user-attachments/assets/ea512a8e-914d-4d90-8dfa-abbf9dc2cfa8)

## Description
A database project to manage customer orders in a café.

## Technologies Used
* DBMS: PostgreSQL
* SQL Queries

## Database Schema Overview
* customer: Stores details about customers, such as customer ID, name, email, and loyalty points.
* menu_order: Stores details about an order, such as order ID, which customer placed it (customer ID), menu name, menu price, payment method, and order date.

## Features
* Full CRUD (Create, Read, Update, Delete) functionality for customer and menu_order records.
* Manual updates of loyalty points for each customer.

## Sample Queries
-- Show all customer data
SELECT * FROM customer;

-- Show all orders with customer names
SELECT mo.order_id, c.customer_name, mo.menu_name, mo.menu_price, mo.payment_method, mo.order_date
FROM menu_order mo
INNER JOIN customer c ON mo.customer_id = c.customer_id;

-- Update loyalty points for a customer
UPDATE customer
SET loyalty_points = loyalty_points + 10
WHERE customer_id = 1;

## Setup Instructions
Clone this repository to your local machine and follow these steps to set up the database:
* Install PostgreSQL.
* Run the SQL script to create the database and tables.

## Why I Built This
I created this database project to apply what I’ve learned about databases. It’s part of my personal portfolio and is shared to encourage collaboration and learning with others.

## Author Info
Created by Shalama Qawlam Fadilla.
Feel free to reach out via email: shalamaafadilla@gmail.com
GitHub: @shalamaqf
