(SELECT name AS object_name FROM person ORDER by name)
UNION ALL
(SELECT pizza_name FROM menu ORDER by pizza_name)
