-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.trg_emp
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.trg_emp ENABLE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.trg_emp
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.trg_emp
COMPILE
PLSQL_OPTIMIZE_LEVEL=  2
PLSQL_CODE_TYPE=  INTERPRETED    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'
;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : trg_emp
SET search_path = yoda,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS trg_emp ON employees CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : trg_emp
SET search_path = yoda,oracle,dmap_extension,public;
CREATE TRIGGER "trg_emp"
BEFORE INSERT ON employees FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_trg_emp();
