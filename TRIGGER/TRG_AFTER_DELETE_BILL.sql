CREATE OR REPLACE EDITIONABLE TRIGGER "DEMO"."TRG_AFTER_DELETE_BILL" 
AFTER DELETE
  ON medical_bills
  FOR EACH ROW
DECLARE
username varchar2(10);

BEGIN

  -- current login user, in this example, system


  -- Insert OLD values in history table with username of user performing delete and sysdate as deleted_Date.
  INSERT INTO medical_bills_history VALUES(:OLD.BILL_ID,
           :OLD.BILL_NUMBER,:OLD.PARTY_NAME,:OLD.BILL_DATE,'a',sysdate);

END;





























/
ALTER TRIGGER "DEMO"."TRG_AFTER_DELETE_BILL" ENABLE;
