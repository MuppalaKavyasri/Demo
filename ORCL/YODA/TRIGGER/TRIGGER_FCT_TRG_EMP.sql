-- DMAP_OBJECT_GEN_TAG : TYPE : FUNCTION NAME : trigger_fct_trg_emp()
SET search_path = yoda,oracle,dmap_extension,public;
CREATE OR REPLACE FUNCTION trigger_fct_trg_emp() RETURNS trigger AS $BODY$
BEGIN
   SELECT nextval('employees_id_seq') INTO STRICT NEW.id;
RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql';
