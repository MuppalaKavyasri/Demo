CREATE OR REPLACE FUNCTION trigger_fct_emp_trgigger() RETURNS trigger AS $body$
BEGIN
IF NEW.last_name <> OLD.last_name THEN
INSERT INTO employee_audits(employee_id,last_name,changed_on)
VALUES (OLD.id,OLD.last_name,statement_timestamp());
END IF;
RETURN NEW;END;
$body$
LANGUAGE 'plpgsql';
