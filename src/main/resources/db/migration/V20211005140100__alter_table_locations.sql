ALTER TABLE locations
    ADD department_amount NUMBER(2) DEFAULT 0;

COMMENT
ON COLUMN locations.department_amount IS 'Contains the amount of departments in the location';