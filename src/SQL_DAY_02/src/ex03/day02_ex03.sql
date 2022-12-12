WITH CTE_1 AS (SELECT cast(temp as date) as missing_date FROM generate_series('2022-01-01'::timestamp, '2022-01-10', '1 day') AS temp),
CTE_2 AS (SELECT visit_date FROM person_visits WHERE person_id = 1 OR person_id = 2)
SELECT missing_date FROM CTE_1 LEFT JOIN CTE_2
ON missing_date = visit_date WHERE visit_date IS NULL
ORDER BY missing_date;
