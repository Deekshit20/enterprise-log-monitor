-- Error summary view
CREATE VIEW error_summary AS
SELECT service_name, COUNT(*) AS total_errors
FROM logs
WHERE log_level = 'ERROR'
GROUP BY service_name;

-- System health view
CREATE VIEW system_health AS
SELECT log_level, COUNT(*) AS count
FROM logs
GROUP BY log_level;