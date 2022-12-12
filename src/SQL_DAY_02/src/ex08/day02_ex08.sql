SELECT pers.name FROM person pers
JOIN person_order pv ON pers.id = pv.person_id
JOIN menu men ON pv.menu_id = men.id
WHERE (pers.gender = 'male') AND (pers.address = 'Moscow' OR pers.address = 'Samara')  AND (men.pizza_name = 'pepperoni pizza' OR men.pizza_name = 'mushroom pizza')
ORDER BY 1 DESC;
