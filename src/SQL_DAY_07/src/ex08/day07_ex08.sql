SELECT p.address, pz.name, COUNT(m.pizzeria_id) count_of_orders FROM person_order po
JOIN person p ON po.person_id = p.id
JOIN menu m ON po.menu_id = m.id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
GROUP BY p.address, pz.name, m.pizzeria_id
ORDER BY 1, 2;
