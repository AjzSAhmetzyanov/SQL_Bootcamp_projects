ALTER TABLE person_discounts
ADD CONSTRAINT ch_nn_person_id CHECK (person_id IS NOT NULL),
ADD CONSTRAINT ch_nn_pizzeria_id CHECK (pizzeria_id IS NOT NULL),
ADD CONSTRAINT ch_nn_discount CHECK (discount IS NOT NULL),
ALTER discount SET DEFAULT 0,
ADD CONSTRAINT ch_range_discount CHECK (discount BETWEEN 0 AND 100);
