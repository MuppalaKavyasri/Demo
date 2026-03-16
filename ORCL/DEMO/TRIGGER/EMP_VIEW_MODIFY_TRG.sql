-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : emp_view_modify_trg
SET search_path = demo,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS emp_view_modify_trg ON emp_view CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : emp_view_modify_trg
SET search_path = demo,oracle,dmap_extension,public;
CREATE TRIGGER "emp_view_modify_trg"
INSTEAD OF UPDATE ON emp_view FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_emp_view_modify_trg();
