CREATE OR REPLACE FUNCTION fnc_fibonacci(IN pstop integer default 10)  
RETURNS SETOF integer
AS  $$
WITH RECURSIVE t(a,b) AS (
        VALUES (0,1)
    UNION ALL
        SELECT greatest (a,b), a  + b as a from t
        WHERE b < $1
   )
SELECT a FROM t;
$$LANGUAGE SQL;
