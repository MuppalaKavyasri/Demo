-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : trg_after_delete_bill
SET search_path = demo,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS trg_after_delete_bill ON medical_bills CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : trg_after_delete_bill
SET search_path = demo,oracle,dmap_extension,public;
CREATE TRIGGER "trg_after_delete_bill"
AFTER DELETE ON medical_bills FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_trg_after_delete_bill();
