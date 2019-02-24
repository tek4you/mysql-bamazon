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

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Leather Sofa", "Household", 2100.99, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("75"" Television", "Electronics", 1499.99, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bluetooth Mouse", "Computers", 25.99, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bottled Water", "Food", 2.15, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Blue Jeans", "Clothing", 175.11, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Gangster Hoodie", "Clothing", 65.89, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Wireless Keyboard", "Computers", 74.53, 89);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Vanilla Ice Cream", "Food", 14.50, 300);
