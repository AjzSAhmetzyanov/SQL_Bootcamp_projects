CREATE VIEW v_generated_dates AS
SELECT
        date (gs) generated_date FROM generate_series('2022-01-01':: date, '2022-01-31', '1 days') gs ORDER BY 1;