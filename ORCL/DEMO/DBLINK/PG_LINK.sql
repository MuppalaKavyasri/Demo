-- dmap_object_gen_tag : type : database link name : pg_link
set search_path = demo,oracle,dmap_extension,public;
create server pg_link foreign data wrapper oracle_fdw options (dbserver 'PostgreSQL35W');
