CREATE TABLE logs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    log_level VARCHAR(10),
    message VARCHAR(255),
    service_name VARCHAR(50),
    log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE alerts (
    alert_id INT PRIMARY KEY AUTO_INCREMENT,
    service_name VARCHAR(50),
    alert_message VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);