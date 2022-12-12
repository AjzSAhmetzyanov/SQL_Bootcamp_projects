SELECT (SELECT name FROM person WHERE id = pv.person_id) AS person_name, 
        (SELECT name FROM pizzeria WHERE id = pv.pizzeria_id) AS pizzeria_name
FROM (SELECT * FROM person_visits WHERE visit_date BETWEEN '07.01.2022' AND '09.01.2022') AS pv 
ORDER BY person_name, pizzeria_name DESC;
