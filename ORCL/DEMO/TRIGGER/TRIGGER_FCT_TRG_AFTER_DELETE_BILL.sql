-- DMAP_OBJECT_GEN_TAG : TYPE : FUNCTION NAME : trigger_fct_trg_after_delete_bill()
SET search_path = demo,oracle,dmap_extension,public;
CREATE OR REPLACE FUNCTION trigger_fct_trg_after_delete_bill() RETURNS trigger AS $BODY$
DECLARE
username varchar(10);
BEGIN
  -- current login user, in this example, system
  -- Insert OLD values in history table with username of user performing delete and sysdate as deleted_Date.
  INSERT INTO medical_bills_history VALUES (OLD.BILL_ID,
           OLD.BILL_NUMBER,OLD.PARTY_NAME,OLD.BILL_DATE,'a',statement_timestamp());
RETURN OLD;
END
$BODY$
 LANGUAGE 'plpgsql';
