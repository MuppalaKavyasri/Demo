-- dmap_object_gen_tag : type : table name : foo_bar
set search_path = yoda,oracle,dmap_extension,public;
create table "foo_bar"  (
foo numeric,
bar numeric,
foo_rowid oid,
bar_rowid oid
) ;
