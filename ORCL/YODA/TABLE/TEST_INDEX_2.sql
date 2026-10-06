-- dmap_object_gen_tag : type : table name : test_index_2
set search_path = yoda,oracle,dmap_extension,public;
create table "test_index_2"  (
col_1 numeric,
col_2 timestamp(0),
col_3 varchar(1),
col_4 timestamp(0)
) ;
-- function used in indexes must be immutable, use immutable_to_char() instead of to_char()
-- dmap_object_gen_tag : type : alter table name : test_index_2
set search_path = yoda,oracle,dmap_extension,public;
alter table test_index_2 add constraint fk_test_index_2 foreign key (col_1) references test_index_1(col_1) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : index name : test_index_2
set search_path = yoda,oracle,dmap_extension,public;
create index test_index_2 on test_index_2 (((nullif(immutable_to_char(trunc(col_4),'YYYYMMDD'), '')::numeric)));
CREATE INDEX "YODA"."TEST_INDEX_2" ON "YODA"."TEST_INDEX_2" (TO_NUMBER(TO_CHAR(TRUNC("COL_4"),'YYYYMMDD'))) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
