-- dmap_object_gen_tag : type : database link name : pglink
set search_path = demo,oracle,dmap_extension,public;
create server pglink foreign data wrapper oracle_fdw options (dbserver 'PG_LINK');
