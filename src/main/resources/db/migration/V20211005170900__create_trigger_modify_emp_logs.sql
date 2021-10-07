CREATE OR REPLACE TRIGGER hr_migration.modify_emp_logs AFTER INSERT OR DELETE
ON hr_migration.employees
FOR EACH ROW
    DECLARE
        first_name VARCHAR(16);
        last_name VARCHAR(16);
        employment_action VARCHAR(5);
    BEGIN
        IF inserting THEN
                first_name := :NEW.first_name;
                last_name := :NEW.last_name;
                employment_action := 'HIRED';
                fill_employment_logs(first_name, last_name,employment_action);
        ELSE
                first_name := :OLD.first_name;
                last_name := :OLD.last_name;
                employment_action := 'FIRED';
                fill_employment_logs(first_name, last_name,employment_action);
        END IF;
    END;