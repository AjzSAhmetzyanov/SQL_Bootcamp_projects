CREATE INDEX idx_person_name ON person USING btree (UPPER(name));
EXPLAIN ANALYSE
SELECT p.name
FROM person p
WHERE (UPPER(p.name) IS NOT NULL);