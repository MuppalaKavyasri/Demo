-- dmap_object_gen_tag : type : database link name : pg
set search_path = demo,oracle,dmap_extension,public;
create server pg foreign data wrapper oracle_fdw options (dbserver 'PostgreSQL35W');
