-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.trg_empaudit
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.trg_empaudit ENABLE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.trg_empaudit
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.trg_empaudit
COMPILE
PLSQL_OPTIMIZE_LEVEL=  2
PLSQL_CODE_TYPE=  INTERPRETED    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'
;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : trg_empaudit
SET search_path = yoda,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS trg_empaudit ON employee_audits CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : trg_empaudit
SET search_path = yoda,oracle,dmap_extension,public;
CREATE TRIGGER "trg_empaudit"
BEFORE INSERT ON employee_audits FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_trg_empaudit();
