-- DMAP_OBJECT_GEN_TAG : TYPE : FUNCTION NAME : trigger_fct_orders_before_insert()
SET search_path = demo,oracle,dmap_extension,public;
CREATE OR REPLACE FUNCTION trigger_fct_orders_before_insert() RETURNS trigger AS $BODY$
DECLARE
   v_username varchar(10);
BEGIN
   -- Find username of person performing INSERT into table
   SELECT 'a' INTO STRICT v_username
;
   -- Update create_date field to current system date
   NEW.create_date := statement_timestamp();
   -- Update created_by field to the username of the person performing the INSERT
   NEW.created_by := v_username;
RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql';
