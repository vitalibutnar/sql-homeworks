CREATE TABLE employment_logs
(
    employment_log_id              NUMBER(8) PRIMARY KEY,
    first_name                     VARCHAR(16) NOT NULL,
    last_name                      VARCHAR(16) NOT NULL,
    employment_action              VARCHAR(5)  NOT NULL,
    employment_status_updtd_tmstmp DATE        NOT NULL
);

ALTER TABLE employment_logs
    ADD CONSTRAINT employment_action_ck CHECK (employment_action = 'HIRED' OR employment_action = 'FIRED');

CREATE SEQUENCE employment_logs_id_seq START WITH 1 INCREMENT BY 1;

ALTER TABLE employment_logs MODIFY employment_log_id DEFAULT employment_logs_id_seq.NEXTVAL;