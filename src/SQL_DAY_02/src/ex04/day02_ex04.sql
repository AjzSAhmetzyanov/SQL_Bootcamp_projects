SELECT pizza_name PIZZA_NAME, name PIZZERIA_NAME, price PRICE FROM menu
INNER JOIN pizzeria ON pizzeria_id = pizzeria.id WHERE menu.pizza_name = 'mushroom pizza' OR menu.pizza_name = 'pepperoni pizza'
ORDER BY 1, 2, 3;
