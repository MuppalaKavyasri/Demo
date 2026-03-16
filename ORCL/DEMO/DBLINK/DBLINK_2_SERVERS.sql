-- dmap_object_gen_tag : type : database link name : dblink_2_servers
set search_path = demo,oracle,dmap_extension,public;
create server dblink_2_servers foreign data wrapper oracle_fdw options (dbserver '192.168.1.18:1521/orcl');
