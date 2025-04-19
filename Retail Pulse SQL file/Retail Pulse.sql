CREATE TABLE Customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  region VARCHAR(50),
  join_date DATE
);
INSERT INTO Customers VALUES
(1, 'Karthick', 'South', '2022-01-15'),
(2, 'Ravi', 'North', '2022-03-10'),
(3, 'Anita', 'West', '2023-06-20');

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
INSERT INTO Products VALUES
(101, 'i pad', 'Electronics', 8000.00),
(102, 'CPU', 'Electronics', 4000.00),
(103, 'Notebook', 'Stationery', 50.00);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Orders VALUES
(5001, 1, 101, 2, '2023-01-10'),
(5002, 2, 102, 1, '2023-02-14'),
(5003, 3, 103, 10, '2023-02-15');

SELECT * FROM Products
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Products.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';


