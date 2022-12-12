SELECT COALESCE(person.name, '-') person_name, pv.visit_date, COALESCE(p.name, '-') pizzeria_name FROM person
FULL JOIN (SELECT * FROM person_visits WHERE visit_date BETWEEN '2022-01-01' AND '2022-01-03') AS pv ON person.id = pv.person_id
FULL JOIN (SELECT id, name FROM pizzeria) AS p ON p.id = pv.pizzeria_id
ORDER BY 1, 2, 3;
