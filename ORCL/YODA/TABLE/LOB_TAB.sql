-- dmap_object_gen_tag : type : table name : lob_tab
set search_path = yoda,oracle,dmap_extension,public;
create table "lob_tab"  (
number_content numeric(10) not null,
varchar2_content varchar(10),
clob_content text
) ;
-- dmap_object_gen_tag : type : alter table name : lob_tab
set search_path = yoda,oracle,dmap_extension,public;
alter table lob_tab add constraint lob_tab_pk primary key (number_content);
