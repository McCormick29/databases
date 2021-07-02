-- ARTIST TABLBE
INSERT INTO artist (name)
VALUES ('Wolfgang Amadeus Mozart'), ('Eninem'), ('Bachman');

SELECT * FROM artist ORDER BY name LIMIT 5;

-- EMPLOYEE TABLE
SELECT last_name, first_name FROM employee
WHERE city = 'Calgary';

SELECT COUNT(reports_to)  FROM employee
WHERE employee_id = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

-- INVOICE TABLE
SELECT COUNT(invoice_id) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MAX(total) FROM invoice;

SELECT total FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT SUM(total) FROM invoice

-- JOIN QUERIES (VARIOUS TABLES)
SELECT unit_price 
FROM invoice_line
WHERE unit_price > 0.99;

SELECT invoice_date, first_name, last_name, total
FROM invoice
join customer ON invoice.customer_id = customer.customer_id;

SELECT e.first_name, e.last_name, c.first_name, c.last_name
FROM customer c
JOIN employee e ON support_rep_id = employee_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

