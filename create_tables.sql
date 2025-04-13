--create tables
DROP TABLE IF EXISTS brands;
CREATE TABLE brands(
brand_id INT PRIMARY KEY,
brand_name VARCHAR(20)
);

DROP TABLE IF EXISTS categories;
CREATE TABLE categories(
category_id INT  PRIMARY KEY,
category_name VARCHAR(30)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(
customer_id	INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
phone	VARCHAR(15),
email	VARCHAR(50),
street	VARCHAR(40),
city	VARCHAR(30),
state	VARCHAR(5),
zip_code INT
);

DROP TABLE IF EXISTS order_items;
CREATE TABLE order_items(
order_id INT PRIMARY KEY,
item_id INT ,
product_id INT, ---FK
quantity INT,
list_price FLOAT,
discount FLOAT
);

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT ---FK,
order_status INT,
order_date DATE,
required_date DATE,
shipped_date DATE,
store_id INT, ---FK
staff_id INT ---FK
);

DROP TABLE IF EXISTS products;
CREATE TABLE products(
product_id INT PRIMARY KEY,
product_name VARCHAR(60),
brand_id INT, ---FK
category_id INT ---FK,
model_year INT,
list_price FLOAT
);

DROP TABLE IF EXISTS staffs;
CREATE TABLE staffs(
staff_id INT PRIMARY KEY,
first_name VARCHAR(20),
last_name  VARCHAR(20),
email VARCHAR(30),      
phone VARCHAR(15),
active INT,
store_id INT, ---FK
manager_id INT
);

DROP TABLE IF EXISTS stocks;
CREATE TABLE stocks(
store_id INT PRIMARY KEY,
product_id INT, ---FK
quantity INT
);

DROP TABLE IF EXISTS stores;
CREATE TABLE stores(
store_id INT PRIMARY KEY,
store_name VARCHAR(20),
phone VARCHAR(15),
email VARCHAR(30),
street VARCHAR(50),
city VARCHAR(30),
state VARCHAR(5),
zip_code INT
);

--Foreign keys
ALTER TABLE stocks
ADD CONSTRAINT fkey
FOREIGN KEY(product_id)
REFERENCES products(product_id);

ALTER TABLE staffs
ADD CONSTRAINT fkey
FOREIGN KEY (store_id)
REFERENCES stores(store_id);

ALTER TABLE products
ADD CONSTRAINT fkey
FOREIGN KEY (brand_id)
REFERENCES brands(brand_id);

ALTER TABLE products
ADD CONSTRAINT fokey
FOREIGN KEY(category_id)
REFERENCES categories(category_id);

ALTER TABLE orders
ADD CONSTRAINT fkey
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE orders 
ADD CONSTRAINT fokey
FOREIGN KEY(store_id)
REFERENCES stores(store_id);

ALTER TABLE orders
ADD CONSTRAINT forkey
FOREIGN KEY(staff_id)
REFERENCES staffs(staff_id);

ALTER TABLE order_items
ADD CONSTRAINT fkey
FOREIGN KEY (product_id)
REFERENCES products(product_id);



ALTER TABLE customers
ALTER COLUMN email TYPE VARCHAR(50);








