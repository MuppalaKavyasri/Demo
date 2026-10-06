-- dmap_object_gen_tag : type : index name : tph_trans_from_id
set search_path = yoda,oracle,dmap_extension,public;
create index tph_trans_from_id on ticket_purchase_hist (transferred_from_id);
