-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.sport_team_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.sport_team_id_trg ENABLE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : yoda.sport_team_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
ALTER TRIGGER yoda.sport_team_id_trg
  COMPILE 
    PLSQL_OPTIMIZE_LEVEL=  2
    PLSQL_CODE_TYPE=  INTERPRETED    PLSCOPE_SETTINGS=  'IDENTIFIERS:NONE'
$BODY$
 LANGUAGE 'plpgsql';
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : sport_team_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS sport_team_id_trg ON sport_team CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : sport_team_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
CREATE TRIGGER "sport_team_id_trg"
BEFORE INSERT ON sport_team FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_sport_team_id_trg();
