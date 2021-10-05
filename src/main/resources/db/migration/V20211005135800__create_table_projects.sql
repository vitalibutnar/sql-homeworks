CREATE TABLE projects
(
    project_id          NUMBER(8) PRIMARY KEY,
    project_description VARCHAR(50) NOT NULL,
    project_investments NUMBER(8,-3) NOT NULL
);

ALTER TABLE projects
    ADD CONSTRAINT project_description_ck CHECK (LENGTH(project_description) > 10);

ALTER TABLE projects
    ADD CONSTRAINT project_investments_ck CHECK (project_investments >= 0);
ALTER TABLE projects
    ADD project_revenue NUMBER(8);