-- dmap_object_gen_tag : type : type name : order_list_typ
set search_path = demo,oracle,dmap_extension,public;
create type "order_list_typ"  as (orderno numeric(10),item char(30));
