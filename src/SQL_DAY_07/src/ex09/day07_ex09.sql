WITH num AS (
    SELECT address,
           cast(age as numeric(7,2))
    FROM person
),
form AS (SELECT num.address, 
		 ROUND(MAX(age)-(MIN(age)/(MAX(age))), 2) formula, 
		 ROUND(AVG(age),2) average FROM num GROUP BY address)
SELECT form.address, form.formula, form.average, form.formula > form.average comparison FROM form ORDER BY 1;
