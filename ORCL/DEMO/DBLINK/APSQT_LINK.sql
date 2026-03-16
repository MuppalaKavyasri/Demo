-- dmap_object_gen_tag : type : database link name : apsqt_link
set search_path = demo,oracle,dmap_extension,public;
create server apsqt_link foreign data wrapper oracle_fdw options (dbserver '192.168.1.12:1521/orcl');
