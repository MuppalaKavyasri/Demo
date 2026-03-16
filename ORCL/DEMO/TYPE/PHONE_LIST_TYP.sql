-- dmap_object_gen_tag : type : type name : phone_list_typ
set search_path = demo,oracle,dmap_extension,public;
create type "phone_list_typ"  as (phnum numeric(10),code char(30));
