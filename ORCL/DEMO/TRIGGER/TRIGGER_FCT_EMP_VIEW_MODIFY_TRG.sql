-- DMAP_OBJECT_GEN_TAG : TYPE : FUNCTION NAME : trigger_fct_emp_view_modify_trg()
SET search_path = demo,oracle,dmap_extension,public;
CREATE OR REPLACE FUNCTION trigger_fct_emp_view_modify_trg() RETURNS trigger AS $BODY$
BEGIN
UPDATE dept
SET loc=NEW.loc
WHERE loc =OLD.loc;
RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql';
