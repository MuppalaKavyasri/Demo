-- dmap_object_gen_tag : type : materialized view name : foo_bar
set search_path = yoda,oracle,dmap_extension,public;
create materialized view foo_bar as
select foo.foo,
bar.bar,
foo.rowid as foo_rowid,
bar.rowid as bar_rowid
from foo, bar
where foo.foo = bar.foo;
