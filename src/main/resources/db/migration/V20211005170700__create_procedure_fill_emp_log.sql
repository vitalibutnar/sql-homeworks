CREATE OR REPLACE PROCEDURE fill_employment_logs(first_name VARCHAR, last_name VARCHAR, action VARCHAR) AS
BEGIN
    INSERT INTO employment_logs(first_name, last_name, employment_action, employment_status_updtd_tmstmp)
    VALUES (first_name, last_name, action, current_date);
END;