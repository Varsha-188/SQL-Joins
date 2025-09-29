
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);

CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers (customer_id, name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'David', 'Houston'); -- David has no orders

INSERT INTO Orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2025-09-01', 150.00), -- Alice's order
(102, 2, '2025-09-02', 25.50),  -- Bob's order
(103, 1, '2025-09-03', 75.25),  -- Alice's second order
(104, 5, '2025-09-04', 500.00); -- Order from customer 5 (Doesn't exist in Customers)
SELECT
    C.name,
    O.order_id,
    O.amount
FROM
    Customers C
INNER JOIN
    Orders O ON C.customer_id = O.customer_id;
SELECT
    C.name,
    O.order_id,
    O.amount
FROM
    Customers C
LEFT JOIN
    Orders O ON C.customer_id = O.customer_id;
SELECT
    C.name,
    O.order_id,
    O.amount
FROM
    Customers C
RIGHT JOIN
    Orders O ON C.customer_id = O.customer_id;
SELECT C.name, O.order_id, O.amount
FROM Customers C
LEFT JOIN Orders O ON C.customer_id = O.customer_id
UNION
SELECT C.name, O.order_id, O.amount
FROM Customers C
RIGHT JOIN Orders O ON C.customer_id = O.customer_id
WHERE C.customer_id IS NULL; -- Excludes duplicate matches

