-- dmap_object_gen_tag : type : table name : zipcode
set search_path = yoda,oracle,dmap_extension,public;
create table "zipcode"  (
zip varchar(5) not null,
city varchar(25),
state varchar(2),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : zipcode
set search_path = yoda,oracle,dmap_extension,public;
alter table zipcode add constraint zip_pk primary key (zip);
-- dmap_object_gen_tag : type : alter table name : zipcode
set search_path = yoda,oracle,dmap_extension,public;
alter table zipcode alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : zipcode
set search_path = yoda,oracle,dmap_extension,public;
alter table zipcode alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : zipcode
set search_path = yoda,oracle,dmap_extension,public;
alter table zipcode alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : zipcode
set search_path = yoda,oracle,dmap_extension,public;
alter table zipcode alter column modified_date set not null;
-- dmap_object_gen_tag : type : alter table name : zipcode
set search_path = yoda,oracle,dmap_extension,public;
alter table zipcode alter column zip set not null;
