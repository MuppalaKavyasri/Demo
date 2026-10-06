-- dmap_object_gen_tag : type : index name : search_data_idx
set search_path = yoda,oracle,dmap_extension,public;
create index search_data_idx on full_text_search_tbl using gin(to_tsvector('english', search_data));
