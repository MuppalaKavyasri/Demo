-- DMAP_OBJECT_GEN_TAG : TYPE : FUNCTION NAME : trigger_fct_player_id_trg()
SET search_path = yoda,oracle,dmap_extension,public;
CREATE OR REPLACE FUNCTION trigger_fct_player_id_trg() RETURNS trigger AS $BODY$
DECLARE
BEGIN
  IF ( NEW.id IS NULL )
  THEN
    NEW.id := nextval('player_seq');
  END IF;
RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql';
