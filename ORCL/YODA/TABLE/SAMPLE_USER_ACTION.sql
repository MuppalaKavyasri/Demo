-- dmap_object_gen_tag : type : table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
create table "sample_user_action"  (
sample_user_action_id numeric(38) not null,
sample_user_action_state_id numeric(38) not null,
sample_user_action_type_id numeric(38) not null,
ca_asset_id numeric(38) not null,
processing_seq_num numeric(38) not null,
sample_user_action_class_id numeric(38) not null,
last_chg_user_nm varchar(30) not null default current_user,
last_chg_dt_tm timestamp(0) not null default statement_timestamp(),
created_by_user_nm varchar(30) not null default current_user,
created_dt_tm timestamp(0) not null default statement_timestamp(),
data_source_id numeric(38) not null,
ex_dt numeric(38) not null,
record_dt numeric(38),
pay_dt numeric(38),
data_source_ca_ext_id varchar(32),
description varchar(2000),
receipt_asset_id numeric(38),
gross_receipt_factor_amt numeric,
net_receipt_factor_amt numeric,
receipt_symbol varchar(20)
) ;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action add constraint pk_sample_user_action primary key (sample_user_action_id);
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column sample_user_action_id set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column sample_user_action_state_id set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column sample_user_action_type_id set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column ca_asset_id set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column processing_seq_num set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column sample_user_action_class_id set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column last_chg_user_nm set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column last_chg_dt_tm set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column created_by_user_nm set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column created_dt_tm set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column data_source_id set not null;
-- dmap_object_gen_tag : type : alter table name : sample_user_action
set search_path = yoda,oracle,dmap_extension,public;
alter table sample_user_action alter column ex_dt set not null;
