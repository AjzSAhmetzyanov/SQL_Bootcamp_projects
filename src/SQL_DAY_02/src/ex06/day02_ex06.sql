SELECT menu.pizza_name, pizzeria.name pizzeria_name FROM person p
INNER JOIN person_order ON p.id = person_order.person_id
INNER JOIN menu ON person_order.menu_id = menu.id
INNER JOIN pizzeria ON menu.pizzeria_id = pizzeria.id
WHERE  p.name = 'Denis' OR p.name = 'Anna'
ORDER BY 1, 2;
