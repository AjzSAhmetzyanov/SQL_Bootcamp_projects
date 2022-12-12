EXPLAIN ANALYSE
SELECT m.pizza_name, p.name
FROM menu m
         LEFT JOIN pizzeria p ON m.pizzeria_id = p.id
WHERE m.id = p.id IS NOT NULL;