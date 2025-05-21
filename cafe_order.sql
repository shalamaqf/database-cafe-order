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
create table menu_order
(
    order_id SERIAL PRIMARY KEY,
    customer_id int not null,
    menu_name varchar (100) not null,
    menu_price int not null,
    payment_method method not null,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

