-- 📚 Assignment Answers
-- Author: [Your Name]

-----------------------------------------------------
-- Question 1 🧑‍💼
-- Get firstName, lastName, email, and officeCode of all employees
-- INNER JOIN employees with offices using officeCode
-----------------------------------------------------

SELECT e.firstName,
       e.lastName,
       e.email,
       o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;


-----------------------------------------------------
-- Question 2 🛍
-- Get productName, productVendor, and productLine
-- LEFT JOIN products with productlines using productLine
-----------------------------------------------------

SELECT p.productName,
       p.productVendor,
       pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;


-----------------------------------------------------
-- Question 3 📦
-- Retrieve orderDate, shippedDate, status, and customerNumber
-- Use RIGHT JOIN between customers and orders using customerNumber
-- Limit result to first 10 orders
-----------------------------------------------------

SELECT o.orderDate,
       o.shippedDate,
       o.status,
       o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;