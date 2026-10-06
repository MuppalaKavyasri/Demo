-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : emp_trgigger
SET search_path = yoda,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS emp_trgigger ON employees CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : emp_trgigger
SET search_path = yoda,oracle,dmap_extension,public;
CREATE TRIGGER "emp_trgigger"
BEFORE UPDATE ON employees FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_emp_trgigger();
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.emp_trgigger
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.emp_trgigger ENABLE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.emp_trgigger
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.emp_trgigger
COMPILE
PLSQL_OPTIMIZE_LEVEL=  2
PLSQL_CODE_TYPE=  INTERPRETED    PLSCOPE_SETTINGS=  'IDENTIFIERS:ALL'
;
