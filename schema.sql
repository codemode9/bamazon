CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products (
item_id INTEGER(11) AUTO_INCREMENT NOT NULL,
product_name VARCHAR(50) NOT NULL,
department_name VARCHAR(50) NOT NULL,
price INTEGER(250),
stock_quantity INTEGER(100),
PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("playstation", "electronics", 245, 20);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("pokemon cards", "toys", 5, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("pants", "clothing", 60, 70);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("cookies", "food", 5, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("washing machine", "appliances", 250, 70);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("pajamas", "clothing", 20, 90);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("cake", "food", 8, 40);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("transformers", "toys", 12, 70);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("xbox", "electronics", 200, 36);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("sting cd", "music", 1, 99);