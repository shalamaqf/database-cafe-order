-- create a table for customer
create table customer
(
    customer_id SERIAL PRIMARY KEY,
    customer_name varchar (100) not null,
    customer_email varchar (100) not null,
    loyalty_points int 
);