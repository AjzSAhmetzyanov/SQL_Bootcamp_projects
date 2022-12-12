WITH temp AS (SELECT p.name, COUNT(person_id) FROM person_visits pv
JOIN person p ON pv.person_id = p.id 
GROUP BY p.name)
SELECT person.name, temp.count coun_of_visits FROM person INNER JOIN temp ON temp.name = person.name AND temp.count > 3;
