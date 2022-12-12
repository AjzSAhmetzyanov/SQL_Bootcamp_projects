SELECT order_date AS action_date,
	(SELECT CONCAT(name, ' (age:', age, ')') FROM person WHERE id = person_id) AS PERSON_INFORMATION
FROM person INNER JOIN person_order ON person.id = person_id
ORDER BY ORDER_DATE, PERSON_INFORMATION;
