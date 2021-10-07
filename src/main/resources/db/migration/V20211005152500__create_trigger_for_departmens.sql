CREATE OR REPLACE TRIGGER hr_migration.count_dep_amount BEFORE INSERT OR DELETE
ON hr_migration.departments
FOR EACH ROW
    DECLARE
        loc NUMBER;
    BEGIN
        IF inserting THEN
            loc := :NEW.location_id;
            UPDATE hr_migration.locations
                SET locations.department_amount = (locations.department_amount + 1)
                WHERE locations.location_id = loc;
        ELSE
            loc := :OLD.location_id;
            UPDATE hr_migration.locations
                SET locations.department_amount = (locations.department_amount - 1)
                WHERE locations.location_id = loc;
        END IF;
    END;