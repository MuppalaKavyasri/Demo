CREATE OR REPLACE EDITIONABLE TRIGGER "YODA"."EMP_TRGIGGER" 
  BEFORE UPDATE
  ON employees
  FOR EACH ROW
  BEGIN
  IF :new.last_name <> :old.last_name THEN
		 INSERT INTO employee_audits(employee_id,last_name,changed_on)
		 VALUES(:old.id,:old.last_name,SYSDATE);
	END IF;
  END; 
/
ALTER TRIGGER "YODA"."EMP_TRGIGGER" ENABLE;
