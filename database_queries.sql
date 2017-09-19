SELECT first_name, last_name FROM "User" WHERE date_of_birth >= '2000-01-01' ORDER BY first_name DESC;

SELECT biography FROM "User" WHERE biography LIKE '% man %’;

SELECT u.first_name, u.last_name, c.type, c.value FROM "User" u JOIN contact c ON u.id=c.user_id WHERE user_id=3;

SELECT first_name FROM "User" WHERE first_name = 'Danny' OR first_name= 'Kyle’;

SELECT u.first_name, COUNT(type) FROM "User" u JOIN contact c ON u.id = c.user_id GROUP BY first_name;
