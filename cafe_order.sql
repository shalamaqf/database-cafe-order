-- create an enum type for payment_method
CREATE TYPE method AS ENUM('cash', 'credit', 'e-money');

-- create a table for customer
CREATE TABLE customer
(
    customer_id serial PRIMARY KEY,
    customer_name varchar (100) not null,
    customer_email varchar (100) not null,
    loyalty_points int 
);

-- create a table for menu order
CREATE TABLE menu_order
(
    order_id SERIAL PRIMARY KEY,
    customer_id int not null,
    menu_name varchar (100) not null,
    menu_price int not null,
    payment_method method not null,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- insert values to customer's table
INSERT INTO customer (customer_name, customer_email)
VALUES ('Reyhan', 'reyhan@gmail.com'),
       ('Lala', 'lala@gmail.com'),
       ('Syifa', 'syifa@gmail.com'),
       ('Aisyah', 'aisyah@gmail.com'),
       ('Rahma', 'rahma@gmail.com'),
       ('Amir', 'amir@gmail.com');

-- select query for customer's table
SELECT * FROM customer;

-- insert values to menu_order's table
INSERT INTO menu_order (customer_id, menu_name, menu_price, payment_method)
VALUES (1, 'Americano', 30000, 'credit'),
       (2, 'Latte', 35000, 'e-money'),
       (3, 'Spanish Latte', 37000, 'credit'),
       (4, 'Strawberry Frappe', 40000, 'cash'),
       (4, 'Butter Croissant', 25000, 'cash'),
       (6, 'Chocolate Frappe', 39000, 'cash'),
       (6, 'Choco Cookies', 32000, 'cash'),
       (5, 'Butterscotch Latte', 36000, 'e-money');

-- select query for menu_order's table
SELECT * FROM menu_order;
