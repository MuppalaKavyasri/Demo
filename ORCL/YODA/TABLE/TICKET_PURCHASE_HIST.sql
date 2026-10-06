-- dmap_object_gen_tag : type : table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
create table "ticket_purchase_hist"  (
sporting_event_ticket_id numeric not null,
purchased_by_id numeric not null,
transaction_date_time timestamp(0) not null,
transferred_from_id numeric,
purchase_price decimal(8,2) not null
) ;
-- dmap_object_gen_tag : type : alter table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
alter table ticket_purchase_hist add constraint ticket_purchase_hist_pk primary key (sporting_event_ticket_id,purchased_by_id,transaction_date_time);
-- dmap_object_gen_tag : type : alter table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
alter table ticket_purchase_hist alter column sporting_event_ticket_id set not null;
-- dmap_object_gen_tag : type : alter table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
alter table ticket_purchase_hist alter column purchased_by_id set not null;
-- dmap_object_gen_tag : type : alter table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
alter table ticket_purchase_hist alter column transaction_date_time set not null;
-- dmap_object_gen_tag : type : alter table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
alter table ticket_purchase_hist alter column purchase_price set not null;
-- dmap_object_gen_tag : type : alter table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
alter table ticket_purchase_hist add constraint tph_sport_event_tic_id foreign key (sporting_event_ticket_id) references sporting_event_ticket(id) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
alter table ticket_purchase_hist add constraint tph_ticketholder_id foreign key (purchased_by_id) references person(id) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : ticket_purchase_hist
set search_path = yoda,oracle,dmap_extension,public;
alter table ticket_purchase_hist add constraint tph_transfer_from_id foreign key (transferred_from_id) references person(id) on delete no action not deferrable initially immediate;
