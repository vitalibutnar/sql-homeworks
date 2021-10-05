INSERT INTO regions
VALUES (1, 'Europe');

INSERT INTO countries
VALUES ('MD', 'Moldova', 1);

INSERT INTO locations
VALUES (1, 'Arborilor 99', 'MD-2032', 'CHISINAU', 'CHISINAU', 'MD');

INSERT INTO departments
VALUES (1, 'Developers', NULL, 1);

INSERT INTO jobs
VALUES (1, 'Intern Java Dev', 0, 700);
INSERT INTO jobs
VALUES (2, 'Java Dev', 1000, 6000);

INSERT INTO employees
VALUES (2, 'Vitali', 'Butnar', 'staff@endava.com', '079123456', '25-OCT-2021', 1, 700, NULL, NULL, 1);

INSERT INTO job_history
VALUES (2, '13-SEP-2021', '25-OCT-2021', 1, 1);