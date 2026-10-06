-- dmap_object_gen_tag : type : table name : test_index_1
set search_path = yoda,oracle,dmap_extension,public;
create table "test_index_1"  (
col_1 numeric not null,
col_2 timestamp(0),
col_3 varchar(1)
) ;
-- function used in indexes must be immutable, use immutable_to_char() instead of to_char()
-- dmap_object_gen_tag : type : alter table name : test_index_1
set search_path = yoda,oracle,dmap_extension,public;
alter table test_index_1 add constraint test_index_1_pk primary key (col_1);
-- dmap_object_gen_tag : type : index name : test_index_1
set search_path = yoda,oracle,dmap_extension,public;
create index test_index_1 on test_index_1 (((nullif(immutable_to_char(col_2,'YYYYMMDD'), '')::numeric)), coalesce(col_3,'N'));
CREATE INDEX "YODA"."TEST_INDEX_1" ON "YODA"."TEST_INDEX_1" (TO_NUMBER(TO_CHAR("COL_2",'YYYYMMDD')), COALESCE("COL_3",'N')) 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
