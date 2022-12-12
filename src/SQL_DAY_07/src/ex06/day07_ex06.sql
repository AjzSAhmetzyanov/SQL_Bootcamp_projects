SELECT p.name, count(m.pizzeria_id) count_of_orders, ROUND(AVG(m.price), 2) average_price,
MAX(m.price) max_price, MIN(m.price) min_price  
    FROM person_order po
    JOIN menu m on po.menu_id = m.id
    JOIN pizzeria p on p.id = m.pizzeria_id
GROUP BY p.name ORDER BY 1 ASC;
