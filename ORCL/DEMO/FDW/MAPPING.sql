-- DMAP_OBJECT_GEN_TAG : TYPE : USER NAME : MAPPING
SET search_path = demo,oracle,dmap_extension,public;
CREATE USER MAPPING FOR postgres SERVER APSQT_LINK OPTIONS (user 'APSQT', password 'None');
GRANT USAGE ON FOREIGN SERVER APSQT_LINK TO postgres;
-- DMAP_OBJECT_GEN_TAG : TYPE : USER NAME : MAPPING
SET search_path = demo,oracle,dmap_extension,public;
CREATE USER MAPPING FOR postgres SERVER DBLINK_2_SERVERS OPTIONS (user 'LINK_TEST_USER', password 'None');
GRANT USAGE ON FOREIGN SERVER DBLINK_2_SERVERS TO postgres;
