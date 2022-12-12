SELECT name, rating FROM pizzeria 
LEFT JOIN person_visits ON pizzeria.id = pizzeria_id
WHERE (pizzeria.id = pizzeria_id) IS NULL;
