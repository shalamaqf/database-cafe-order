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


