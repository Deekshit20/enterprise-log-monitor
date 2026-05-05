DELIMITER //

CREATE PROCEDURE get_recent_errors()
BEGIN
    SELECT *
    FROM logs
    WHERE log_level = 'ERROR'
    ORDER BY log_time DESC
    LIMIT 10;
END //

DELIMITER ;