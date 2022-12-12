WITH CTE_1 AS (SELECT pz.name FROM pizzeria pz
	JOIN person_visits pv ON pz.id = pv.pizzeria_id
	JOIN person p ON pv.person_id = p.id
	WHERE p.name = 'Andrey'),
CTE_2 AS (SELECT pz.name FROM pizzeria pz
	JOIN menu m ON pz.id = m.pizzeria_id
	JOIN person_order pv ON pv.menu_id = m.id
	JOIN person p ON pv.person_id = p.id
	WHERE p.name = 'Andrey'),
CTE_3 AS (SELECT * FROM CTE_1 EXCEPT SELECT * FROM CTE_2),
CTE_4 AS (SELECT * FROM CTE_2 EXCEPT SELECT * FROM CTE_1)
SELECT name pizzeria_name FROM CTE_3 
UNION
SELECT name FROM CTE_4;
