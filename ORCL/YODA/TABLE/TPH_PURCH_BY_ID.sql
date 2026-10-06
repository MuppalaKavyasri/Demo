-- dmap_object_gen_tag : type : index name : tph_purch_by_id
set search_path = yoda,oracle,dmap_extension,public;
create index tph_purch_by_id on ticket_purchase_hist (purchased_by_id);
