CREATE INDEX idx_person_order_multi ON person_order USING btree (person_id, menu_id, order_date);
EXPLAIN ANALYZE
SELECT p.person_id, p.menu_id, p.order_date
FROM person_order p
WHERE p.person_id = 8
  AND p.menu_id = 19;
