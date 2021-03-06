DROP TABLE IF EXISTS stg.t_customer_events_fechamento_month_to_replace_device_date_to_replace_version_to_replace;
CREATE TABLE stg.t_customer_events_fechamento_month_to_replace_device_date_to_replace_version_to_replace AS
SELECT
	DISTINCT customer_id,
	mmid
FROM dw.ft_events fe
WHERE
	sent_date BETWEEN start_date_to_replace AND end_date_to_replace;