-- dmap_object_gen_tag : type : table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
create table "full_text_search_tbl"  (
id numeric(16) not null,
st_id numeric(10) not null,
cl_trn_data text,
amount decimal(12, 2) not null,
refund_amount decimal(12, 2),
currency char(3) not null,
ip_address varchar(50),
lk_dt timestamp,
locked_by varchar(50),
form_of_payment varchar(20) not null,
search_data varchar(500),
creation_date timestamp not null,
modification_date timestamp not null,
discriminator varchar(10) not null default 'CP',
china_pay_form_of_payment varchar(20) not null default 'TODO',
payment_for_service varchar(40) not null default 'AIRBOOK',
verification_date timestamp
) ;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column id set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column st_id set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column amount set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column currency set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column form_of_payment set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column creation_date set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column modification_date set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column discriminator set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column china_pay_form_of_payment set not null;
-- dmap_object_gen_tag : type : alter table name : full_text_search_tbl
set search_path = yoda,oracle,dmap_extension,public;
alter table full_text_search_tbl alter column payment_for_service set not null;
