-- DMAP_OBJECT_GEN_TAG : TYPE : FUNCTION NAME : trigger_fct_sport_team_id_trg()
SET search_path = yoda,oracle,dmap_extension,public;
CREATE OR REPLACE FUNCTION trigger_fct_sport_team_id_trg() RETURNS trigger AS $BODY$
DECLARE
BEGIN
  IF ( NEW.id IS NULL )
  THEN
    NEW.id := nextval('sport_team_seq');
  END IF;
RETURN NEW;
END
$BODY$
 LANGUAGE 'plpgsql';
