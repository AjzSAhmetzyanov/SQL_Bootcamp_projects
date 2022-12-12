(SELECT p.name, count(m.pizzeria_id) count, ('order') action_type
    FROM person_order po
    JOIN menu m on po.menu_id = m.id
    JOIN pizzeria p on p.id = m.pizzeria_id
    GROUP BY p.name ORDER BY action_type ASC, count DESC LIMIT 3)
UNION ALL
(SELECT pz.name, COUNT(pv.pizzeria_id), ('visit') action_type FROM person_visits pv
    JOIN pizzeria pz ON pv.pizzeria_id = pz.id
    GROUP BY pz.name ORDER BY 2 DESC, 3 ASC LIMIT 3);
