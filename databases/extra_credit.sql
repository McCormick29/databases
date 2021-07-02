-- aritst table
SELECT * FROM artist 
ORDER BY name DESC
LIMIT 10;

SELECT name FROM artist
WHERE name LIKE 'Black%';

SELECT name FROM artist
WHERE name LIKE 'Black';

-- employee table
SELECT MIN(birth_date) FROM employee;

SELECT MAX(birth_date) FROM employee;

-- invoice table
SELECT COUNT(invoice_id) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

-- more join QUERIES
SELECT pt.track_id FROM playlist_track pt
JOIN playlist p ON pt.track_id = p.playlist_id
WHERE name = 'Music';

SELECT t.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
WHERE playlist_id = 5;

SELECT t.name, p.name FROM track t
JOIN playlist_track pt ON pt.track_id = t.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;

SELECT t.name, al.title FROM album al
JOIN track t ON t.album_id = al.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';