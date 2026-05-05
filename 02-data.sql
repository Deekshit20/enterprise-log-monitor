INSERT INTO logs (log_level, message, service_name)
VALUES
('INFO', 'Server started', 'AuthService'),
('ERROR', 'Database failed', 'DBService'),
('WARNING', 'High CPU usage', 'ComputeService'),
('ERROR', 'API timeout', 'APIService'),
('INFO', 'User login', 'AuthService');