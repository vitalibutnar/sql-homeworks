CREATE TABLE project_summary
(
    employee_id NUMBER(6) NOT NULL,
    project_id  NUMBER(8) NOT NULL,
    "hours"     NUMBER(4) DEFAULT 0,
    CONSTRAINT emp_id_proj_id PRIMARY KEY (employee_id, project_id)
);

ALTER TABLE project_summary
    ADD CONSTRAINT psum_emp_fk FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id);
ALTER TABLE project_summary
    ADD CONSTRAINT psum_proj_fk FOREIGN KEY (project_id)
        REFERENCES projects (project_id);