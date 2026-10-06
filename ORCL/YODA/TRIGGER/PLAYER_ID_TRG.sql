-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : player_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
DROP TRIGGER IF EXISTS player_id_trg ON player CASCADE;
-- DMAP_OBJECT_GEN_TAG : TYPE : TRIGGER NAME : player_id_trg
SET search_path = yoda,oracle,dmap_extension,public;
CREATE TRIGGER "player_id_trg"
BEFORE INSERT ON player FOR EACH ROW
EXECUTE PROCEDURE trigger_fct_player_id_trg();
