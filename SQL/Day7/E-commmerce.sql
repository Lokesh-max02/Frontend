CREATE DATABASE EcommerceDB;
USE EcommerceDB;
CREATE TABLE Category (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);
CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    category_id INT,

    FOREIGN KEY (category_id)
    REFERENCES Category(category_id)
);
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    address VARCHAR(255)
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    order_status VARCHAR(30) DEFAULT 'Pending',
    total_amount DECIMAL(10,2),

    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
);
CREATE TABLE OrderItem (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);
CREATE TABLE Payment (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(30),
    amount DECIMAL(10,2),
    payment_status VARCHAR(30) DEFAULT 'Pending',

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);
CREATE TABLE Delivery (
    delivery_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    delivery_address VARCHAR(255),
    delivery_date DATE,
    delivery_status VARCHAR(30) DEFAULT 'Processing',
    tracking_number VARCHAR(100),

    FOREIGN KEY (order_id)
    REFERENCES Orders(order_id)
);
INSERT INTO Category (category_name)
VALUES
('Electronics'),
('Clothing'),
('Books'),
('Accessories');
INSERT INTO Product
(product_name, description, price, stock, category_id)
VALUES
('Laptop', 'HP Core i5 Laptop', 55000.00, 10, 1),
('Smartphone', 'Android Smartphone', 25000.00, 20, 1),
('T-Shirt', 'Cotton T-Shirt', 800.00, 50, 2),
('Java Programming Book', 'Java Complete Guide', 1200.00, 30, 3),
('Wireless Mouse', 'Bluetooth Wireless Mouse', 700.00, 40, 4);
INSERT INTO Customer
(customer_name, email, phone, address)
VALUES
('Lokesh', 'lokesh@gmail.com', '9876543210', 'Chennai'),
('Arun', 'arun@gmail.com', '9876543211', 'Coimbatore'),
('Priya', 'priya@gmail.com', '9876543212', 'Madurai'),
('Divya', 'divya@gmail.com', '9876543213', 'Salem');
INSERT INTO Orders
(customer_id, order_date, order_status, total_amount)
VALUES
(1, '2026-08-01', 'Delivered', 55700.00),
(2, '2026-08-02', 'Shipped', 25000.00),
(3, '2026-08-03', 'Pending', 2000.00),
(4, '2026-08-04', 'Delivered', 1500.00);
INSERT INTO OrderItem
(order_id, product_id, quantity, price)
VALUES
(1, 1, 1, 55000.00),
(1, 5, 1, 700.00),
(2, 2, 1, 25000.00),
(3, 4, 1, 1200.00),
(3, 3, 1, 800.00),
(4, 5, 1, 700.00),
(4, 3, 1, 800.00);
INSERT INTO Payment
(order_id, payment_date, payment_method, amount, payment_status)
VALUES
(1, '2026-08-01', 'UPI', 55700.00, 'Paid'),
(2, '2026-08-02', 'Card', 25000.00, 'Paid'),
(3, NULL, 'Cash', 2000.00, 'Pending'),
(4, '2026-08-04', 'UPI', 1500.00, 'Paid');
INSERT INTO Delivery
(order_id, delivery_address, delivery_date, delivery_status, tracking_number)
VALUES
(1, 'Chennai', '2026-08-05', 'Delivered', 'TRK1001'),
(2, 'Coimbatore', '2026-08-06', 'Shipped', 'TRK1002'),
(3, 'Madurai', NULL, 'Processing', 'TRK1003'),
(4, 'Salem', '2026-08-07', 'Delivered', 'TRK1004');
SELECT * FROM Product;