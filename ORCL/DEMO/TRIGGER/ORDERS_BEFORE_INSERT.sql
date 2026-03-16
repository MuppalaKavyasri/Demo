CREATE OR REPLACE EDITIONABLE TRIGGER "DEMO"."ORDERS_BEFORE_INSERT" 
BEFORE INSERT
   ON orders
   FOR EACH ROW

DECLARE
   v_username varchar2(10);

BEGIN

   -- Find username of person performing INSERT into table
   SELECT 'a' INTO v_username
   FROM dual;

   -- Update create_date field to current system date
   :new.create_date := sysdate;

   -- Update created_by field to the username of the person performing the INSERT
   :new.created_by := v_username;

END;





























/
ALTER TRIGGER "DEMO"."ORDERS_BEFORE_INSERT" ENABLE;
