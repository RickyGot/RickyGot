-- create recaveecommercedatabase


-- drop database if exists
DROP DATABASE IF EXISTS ecommerce_database CASCADE;

-- create our database
CREATE DATABASE IF NOT EXISTS ecommerce;

-- use database
USE DATABASE ecommerce;

--starting to create our tables
-- they include: customers,products,orders,sales,payments

-- customers table
CREATE TABLE IF NOT EXISTS customers(
    customer_id INTEGER PRIMARY KEY AUTO INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number INTEGER,
    email VARCHAR(50),
    id_number INTEGER,
    country VARCHAR(50),
    gender VARCHAR(5),
    region VARCHAR(255)
);

-- products table
CREATE TABLE IF NOT EXISTS  products(
    product_id INTEGER PRIMARY KEY AUTO INCREMENT,
    product_name VARCHAR(255),
    product_quantity INTEGER
);

-- order table
CREATE TABLE IF NOT EXISTS orders(
    order_id INTEGER PRIMARY KEY AUTO INCREMENT,
    order_date TIMESTAMP,
    FOREIGN KEY customer_id REFERENCES customers(customer_id),
    FOREIGN KEY product_id REFERENCES products(product_id)
);

-- sales 
CREATE TABLE IF NOT EXISTS sales(
    sales_id INTEGER PRIMARY KEY AUTO INCREMENT,
    order_id INTEGER,
    payment_id INTEGER,
    total_amount FLOAT, 
    FOREIGN KEY order_id REFERENCES orders(order_id),
    FOREIGN KEY payment_id REFERENCES payments(payment_id)
);

-- create payment table
CREATE TABLE IF NOT EXISTS payments(
    payment_id INTEGER PRIMARY KEY AUTO INCREMENT,
    payment_type VARCHAR(255)
);

-- -- inserting data to our table
-- INSERT INTO payments VALUES(payment_id,payment_type)
-- "001","Mpesa",
-- "002","Paypal",
-- "003","Cash"

-- 
-- Insert 100 records into customers table
INSERT INTO customers (first_name, last_name, phone_number, email, id_number, country, gender, region) VALUES
('John1', 'Doe', '1234567891', 'john1.doe@example.com', 111111111, 'USA', 'M', 'California'),
('Jane1', 'Smith', '2345678901', 'jane1.smith@example.com', 222222222, 'USA', 'F', 'New York'),
('Jim1', 'Beam', '3456789011', 'jim1.beam@example.com', 333333333, 'USA', 'M', 'Texas'),
-- ... Repeat the above pattern to insert more records up to 100 ...
('John100', 'Doe', '1234567990', 'john100.doe@example.com', 211111110, 'USA', 'M', 'California');

-- Insert 100 records into products table
INSERT INTO products (product_name, product_quantity) VALUES
('nivea_lotion', 10),
('imperial_leather', 20),
('sugar', 30),
-- ... Repeat the above pattern to insert more records up to 100 ...
('Product100', 1000);

-- Insert 100 records into orders table
INSERT INTO orders (order_date, customer_id, product_id) VALUES
('2024-01-01 00:00:00', 1, 1),
('2024-01-01 01:00:00', 2, 2),
('2024-01-01 02:00:00', 3, 3),
-- ... Repeat the above pattern to insert more records up to 100 ...
('2024-01-01 99:00:00', 99, 99),
('2024-01-01 100:00:00', 100, 100);

-- Insert 100 records into sales table
INSERT INTO sales (order_id, payment_id, total_amount) VALUES
(1, 1, 100.50),
(2, 2, 200.75),
(3, 3, 300.25),
-- ... Repeat the above pattern to insert more records up to 100 ...
(99, 2, 9900.50),
(100, 3, 10000.75);

-- Insert data into payments table
INSERT INTO payments (payment_type) VALUES
('Mpesa'),
('Paypal'),
('Cash');

-- Insert 100 records into customers table
INSERT INTO customers (first_name, last_name, phone_number, email, id_number, country, gender, region) VALUES
('John1', 'Doe', '1234567891', 'john1.doe@example.com', 111111111, 'USA', 'M', 'California'),
('Jane1', 'Smith', '2345678901', 'jane1.smith@example.com', 222222222, 'USA', 'F', 'New York'),
('Jim1', 'Beam', '3456789011', 'jim1.beam@example.com', 333333333, 'USA', 'M', 'Texas'),
('John2', 'Doe', '1234567892', 'john2.doe@example.com', 111111112, 'USA', 'M', 'California'),
('Jane2', 'Smith', '2345678902', 'jane2.smith@example.com', 222222223, 'USA', 'F', 'New York'),
('Jim2', 'Beam', '3456789012', 'jim2.beam@example.com', 333333334, 'USA', 'M', 'Texas'),
('John3', 'Doe', '1234567893', 'john3.doe@example.com', 111111113, 'USA', 'M', 'California'),
('Jane3', 'Smith', '2345678903', 'jane3.smith@example.com', 222222224, 'USA', 'F', 'New York'),
('Jim3', 'Beam', '3456789013', 'jim3.beam@example.com', 333333335, 'USA', 'M', 'Texas'),
-- ... Repeat the above pattern to insert more records up to 100 ...
('John100', 'Doe', '1234567990', 'john100.doe@example.com', 211111110, 'USA', 'M', 'California');


