CREATE
MATERIALIZED VIEW mv_dmitriy_visits_and_eats AS
SELECT piz.name pizzeria_name
FROM person pers
         JOIN person_visits pv ON pers.id = pv.person_id
         JOIN pizzeria piz ON pv.pizzeria_id = piz.id
         JOIN menu men ON piz.id = men.pizzeria_id
WHERE pers.name = 'Dmitriy'
  AND men.price < 800
  AND pv.visit_date = '2022-01-08'
ORDER BY 1;

