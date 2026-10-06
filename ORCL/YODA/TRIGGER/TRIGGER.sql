-- DMAP_OBJECT_GEN_TAG : TYPE : EDITIONABLE NAME : TRIGGER
SET search_path = yoda,oracle,dmap_extension,public;
CREATE EDITIONABLE TRIGGER yoda.trg_empaudit
BEFORE INSERT
on  employee_audits
for each row
BEGIN
SELECT nextval('employee_audits_id') INTO STRICT NEW.id;
END;
-- DMAP_OBJECT_GEN_TAG : TYPE : EDITIONABLE NAME : TRIGGER
SET search_path = yoda,oracle,dmap_extension,public;
CREATE EDITIONABLE TRIGGER yoda.emp_trgigger
BEFORE UPDATE
ON employees
FOR EACH ROW
BEGIN
IF NEW.last_name <> OLD.last_name THEN
INSERT INTO employee_audits(employee_id,last_name,changed_on)
VALUES (OLD.id,OLD.last_name,statement_timestamp());
END IF;
END;
-- DMAP_OBJECT_GEN_TAG : TYPE : EDITIONABLE NAME : TRIGGER
SET search_path = yoda,oracle,dmap_extension,public;
CREATE EDITIONABLE TRIGGER yoda.trg_emp
BEFORE INSERT
on  employees
for each row
BEGIN
SELECT nextval('employees_id_seq') INTO STRICT NEW.id;
END;
-- DMAP_OBJECT_GEN_TAG : TYPE : EDITIONABLE NAME : TRIGGER
SET search_path = yoda,oracle,dmap_extension,public;
CREATE EDITIONABLE TRIGGER yoda.sport_team_id_trg
BEFORE INSERT ON sport_team
FOR EACH ROW
DECLARE
BEGIN
IF ( NULLIF(NEW.id::text, '') IS NULL )
THEN
NEW.id := nextval('sport_team_seq');
END IF;
END;
