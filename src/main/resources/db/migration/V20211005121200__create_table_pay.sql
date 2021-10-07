CREATE TABLE pay
(
    cardnr         NUMBER(16) PRIMARY KEY,
    salary         NUMBER(8,2),
    commission_pct NUMBER(2,2),
    employee_id    NUMBER(4)
);

ALTER TABLE pay
    ADD CONSTRAINT pay_emp_fk FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id);

CREATE SEQUENCE pay_cardnr_seq START WITH 1000000000000000 INCREMENT BY 1 MAXVALUE 9999999999999999 NOCACHE;

ALTER TABLE pay MODIFY cardnr DEFAULT pay_cardnr_seq.NEXTVAL;

INSERT INTO pay (salary, commission_pct, employee_id)
SELECT salary, commission_pct, employee_id
FROM employees;