SELECT p.name as name, m.pizza_name, m.price, ROUND(m.price - m.price * pd.discount / 100) as discount_price, piz.name as pizzeria_name
FROM person p
JOIN person_discounts pd on p.id = pd.person_id
JOIN pizzeria piz on pd.pizzeria_id = piz.id
JOIN menu m on piz.id = m.pizzeria_id
JOIN person_order po on m.id = po.menu_id
WHERE p.id = po.person_id
ORDER BY p.name, pizza_name;
