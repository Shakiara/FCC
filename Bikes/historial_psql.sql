INSERT INTO bikes(type, size) VALUES ('Road', 28), ('Road', 29);
INSERT INTO bikes(type, size) VALUES ('BMX' 19), ('BMX', 20), ('BMX', 21);
INSERT INTO bikes(type, size) VALUES ('BMX', 19), ('BMX', 20), ('BMX', 21);
SELECT * FROM bikes;
UPDATE bikes SET bike_id = bike_id - 1 WHERE bike_id > 6;
UPDATE bikes SET bike_id = bike_id - 1 WHERE bike_id > 5;
SELECT * FROM bikes;
UPDATE bikes SET available = false WHERE available = true;
UPDATE bikes SET available = true WHERE type != 'BMX';
UPDATE bikes SET available = true;
\d
\d customers
SELECT * FROM customers;
SELECT * FROM rentals;
SELECT * FROM bikes
SELECT * FROM bikes;
SELECT * FROM bikes
SELECT * FROM bikes;
SELECT * FROM bikes
SELECT * FROM bikes;
SELECT * FROM bikes;
\d rentals
UPDATE bikes SET available = true;
SELECT * FROM rentals
SELECT * FROM rentals;
SELECT * FROM rentals
SELECT * FROM rentals;
SELECT * FROM rentals;
DELETE FROM rentals WHERE rental_id = 1;
UPDATE rentals SET rental_id = rental_id - 1 WHERE rental_id > 1;
SELECT * FROM rentals;
SELECT * FROM bikes ORDER BY bike_id;
SELECT * FROM bikes ORDER BY bike_id;
SELECT * FROM customers;
DELETE FROM customers WHERE customer_id = 2;
UPDATE customers SET customer_id = customer_id
SELECT * FROM rentals;
\d
\d customers
SELECT * FROM bikes;
SELECT * FROM bikes LEFT JOIN rentals USING bike_id;
SELECT * FROM bikes LEFT JOIN rentals USING (bike_id);
SELECT * FROM bikes INNER JOIN rentals USING (bike_id);
\d
\d bikes
\d rentals
\d customers
SELECT * FROM bikes INNER JOIN rentals USING (bike_id) INNER JOIN customers USING (customer_id);
SELECT * FROM bikes INNER JOIN rentals USING (bike_id) INNER JOIN customers USING (customer_id) WHERE phone '555-5555' AND date_returned IS NULL;
SELECT * FROM bikes INNER JOIN rentals USING (bike_id) INNER JOIN customers USING (customer_id) WHERE phone = '555-5555' AND date_returned IS NULL;
SELECT * FROM bikes INNER JOIN rentals USING (bike_id) INNER JOIN customers USING (customer_id) WHERE phone = '555-5555' AND date_returned IS NULL;
SELECT bike_id, type, size FROM bikes INNER JOIN rentals USING (bike_id) INNER JOIN customers USING (customer_id) WHERE phone = '555-5555' AND date_returned IS NULL;
SELECT bike_id, type, size FROM bikes INNER JOIN rentals USING (bike_id) INNER JOIN customers USING (customer_id) WHERE phone = '555-5555' AND date_returned IS NULL ORDER BY bike_id;
SELECT bike_id, type, size FROM bikes INNER JOIN rentals USING (bike_id) INNER JOIN customers USING (customer_id) WHERE phone = '555-5555' AND date_returned IS NULL ORDER BY bike_id
\d rentals
\d customers
SELECT * FROM rentals INNER JOIN customers USING (customer_id);
SELECT * FROM rentals INNER JOIN customers USING (customer_id);
SELECT * FROM rentals INNER JOIN customers USING (customer_id) WHERE phone = '555-5555' AND bike_id =1 AND date_returned IS NULL;
SELECT * FROM rentals INNER JOIN customers USIN
SELECT rental_id FROM rentals INNER JOIN customers USING (customer_id) WHERE phone = '555-5555' AND bike_id =1 AND date_returned IS NULL;
SELECT rental_id FROM rentals INNER JOIN customers USING(customer_id) WHERE phone = '555-5555' AND bike_id = 1 AND date_returned IS NULL;
\d rentals
\d bikes
SELECT * FROM rentals;
SELECT * FROM bikes ORDER BY bike_id;
SELECT * FROM customers;
pg_dump -U freecodecamp -d bikes > bikes.sql
ls
\l
\s psql_historial.sql
