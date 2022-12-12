SELECT cast(temp as date) as missing_date FROM generate_series('2022-01-01'::timestamp, '2022-01-10', '1 day') AS temp
LEFT JOIN (SELECT visit_date FROM person_visits WHERE person_id = 1 OR person_id = 2) AS p_temp
ON temp.date = p_temp.visit_date WHERE p_temp.visit_date IS NULL
