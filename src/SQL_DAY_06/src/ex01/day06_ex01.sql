INSERT INTO person_discounts (id, person_id, pizzeria_id, discount) 
SELECT ROW_NUMBER() OVER(), po.person_id, m.pizzeria_id,  
(CASE WHEN COUNT(m.pizzeria_id) = 1 THEN 10.5
      WHEN COUNT(m.pizzeria_id) = 2 THEN 22
      ELSE 30 END)
FROM person_order po
      LEFT JOIN menu m on m.id = po.menu_id
GROUP BY po.person_id, m.pizzeria_id;
