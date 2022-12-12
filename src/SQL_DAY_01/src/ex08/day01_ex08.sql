SELECT order_date, CONCAT(name, ' (age:', age, ')') AS PERSON_INFORMATION
FROM person NATURAL JOIN (SELECT order_date, person_id AS id FROM person_order) AS PERSON_INFORMATION
ORDER BY order_date, PERSON_INFORMATION;
