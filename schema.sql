DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products (
item_id INT AUTO_INCREMENT NOT NULL,
product_name VARCHAR (50) NOT NULL,
department_name VARCHAR(50) NOT NULL,
price DECIMAL (7,2),
stock_quantity INT DEFAULT 0,
PRIMARY KEY (item_id)
);

SELECT * FROM products
