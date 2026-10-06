CREATE OR REPLACE FUNCTION trigger_fct_sporting_event_id_trg() RETURNS trigger AS $body$
DECLARE
BEGIN
IF ( NULLIF(NEW.id::text, '') IS NULL )
THEN
NEW.id := nextval('sporting_event_seq');
END IF;END;
