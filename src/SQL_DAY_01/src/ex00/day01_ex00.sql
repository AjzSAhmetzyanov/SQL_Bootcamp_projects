SELECT id AS OBJECT_ID, name AS OBJECT_NAME FROM person
UNION ALL
SELECT id AS OBJECT_ID, pizza_name AS OBJECT_NAME FROM menu
ORDER by OBJECT_ID, OBJECT_NAME;