CREATE VIEW v_price_with_discount AS
SELECT p.name, m.pizza_name, m.price, ROUND(price - price * 0.1) discount_price
FROM menu m
         LEFT JOIN person_order po ON m.id = po.menu_id
         LEFT JOIN person p ON po.person_id = p.id
WHERE name IS NOT NULL
ORDER BY 1, 2;
