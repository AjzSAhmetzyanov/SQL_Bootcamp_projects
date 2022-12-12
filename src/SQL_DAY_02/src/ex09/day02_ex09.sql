SELECT pers.name FROM person pers
JOIN person_order pv ON pers.id = pv.person_id
JOIN menu men ON pv.menu_id = men.id
WHERE (pers.gender = 'female') AND (men.pizza_name = 'pepperoni pizza' OR men.pizza_name = 'cheese pizza')
GROUP BY name HAVING count(*) > 1
ORDER BY 1;
