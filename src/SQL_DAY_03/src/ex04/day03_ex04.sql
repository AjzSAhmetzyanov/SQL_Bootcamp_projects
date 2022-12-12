WITH CTE_1 AS (SELECT pz.name FROM pizzeria pz
JOIN menu m ON pz.id = m.pizzeria_id
JOIN person_order po ON m.id = po.menu_id
JOIN person p ON po.person_id = p.id
WHERE p.gender = 'female'),
CTE_2 AS (SELECT pz.name FROM pizzeria pz
JOIN menu m ON pz.id = m.pizzeria_id
JOIN person_order po ON m.id = po.menu_id
JOIN person p ON po.person_id = p.id
WHERE p.gender = 'male'),
CTE_3 AS (SELECT * FROM CTE_1 EXCEPT SELECT * FROM CTE_2),
CTE_4 AS (SELECT * FROM CTE_2 EXCEPT SELECT * FROM CTE_1)
SELECT * FROM CTE_3 UNION SELECT * FROM CTE_4
ORDER BY 1;
