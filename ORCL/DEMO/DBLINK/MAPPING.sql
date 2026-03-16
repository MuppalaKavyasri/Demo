-- dmap_object_gen_tag : type : database link name : mapping
set search_path = demo,oracle,dmap_extension,public;
create user mapping for apsqt server apsqt_link options (user 'apsqt', password ', password 'secret'');
-- dmap_object_gen_tag : type : database link name : mapping
set search_path = demo,oracle,dmap_extension,public;
create user mapping for link_test_user server dblink_2_servers options (user 'link_test_user', password ', password 'secret'');
-- dmap_object_gen_tag : type : database link name : mapping
set search_path = demo,oracle,dmap_extension,public;
create user mapping for postgres server pg options (user 'postgres', password ', password 'secret'');
-- dmap_object_gen_tag : type : database link name : mapping
set search_path = demo,oracle,dmap_extension,public;
create user mapping for postgres server pglink options (user 'postgres', password ', password 'secret'');
-- dmap_object_gen_tag : type : database link name : mapping
set search_path = demo,oracle,dmap_extension,public;
create user mapping for postgres server pg_link options (user 'postgres', password ', password 'secret'');
-- dmap_object_gen_tag : type : database link name : mapping
/* dmap converted statement start */
set search_path = demo,oracle,dmap_extension,public;
create user mapping for postgres server pragma_at_dmap_dblink options (user 'postgres', password 'NewT_DmaP');
/* dmap converted statement end */
-- dmap_object_gen_tag : type : database link name : mapping
/* dmap converted statement start */
SET search_path = demo,oracle,dmap_extension,public;
CREATE USER MAPPING FOR postgres SERVER pragma_at_dmap_dblink OPTIONS (user 'postgres', password 'password');
/* dmap converted statement end */
-- dmap_object_gen_tag : type : database link name : mapping
/* dmap converted statement start */
SET search_path = demo,oracle,dmap_extension,public;
CREATE USER MAPPING FOR postgres SERVER pragma_at_dmap_dblink OPTIONS (user 'postgres', password 'password');
/* dmap converted statement end */
