-- dmap_object_gen_tag : type : index name : tab1_parent_id_idx
set search_path = yoda,oracle,dmap_extension,public;
create index tab1_parent_id_idx on tab1 (parent_id);
