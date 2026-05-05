DELIMITER //

CREATE TRIGGER log_error_trigger
AFTER INSERT ON logs
FOR EACH ROW
BEGIN
    IF NEW.log_level = 'ERROR' THEN
        INSERT INTO alerts (service_name, alert_message)
        VALUES (NEW.service_name, CONCAT('Error detected: ', NEW.message));
    END IF;
END //

DELIMITER ;