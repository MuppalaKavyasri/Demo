-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : sporting_event_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS sporting_event_id_trg ON sporting_event CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.sporting_event_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.sporting_event_id_trg
COMPILE
PLSQL_OPTIMIZE_LEVEL=  2
PLSQL_CODE_TYPE=  INTERPRETED    PLSCOPE_SETTINGS=  'IDENTIFIERS:NONE'
;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : sporting_event_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
CREATE TRIGGER "sporting_event_id_trg"
BEFORE INSERT ON sporting_event FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_sporting_event_id_trg();
