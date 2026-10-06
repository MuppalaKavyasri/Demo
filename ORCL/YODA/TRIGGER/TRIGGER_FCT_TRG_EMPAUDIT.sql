-- DMAP_OBJECT_GEN_TAG : TYPE : FUNCTION NAME : trigger_fct_trg_empaudit()
SET search_path = yoda,oracle,dmap_extension,public;
CREATE OR REPLACE FUNCTION trigger_fct_trg_empaudit() RETURNS trigger AS $BODY$
BEGIN
   SELECT nextval('employee_audits_id') INTO STRICT NEW.id;
RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql';
