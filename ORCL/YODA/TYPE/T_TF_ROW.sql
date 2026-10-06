-- dmap_object_gen_tag : type : type name : t_tf_row
set search_path = yoda,oracle,dmap_extension,public;
create type "t_tf_row"  as (id           numeric,description  varchar(50));
