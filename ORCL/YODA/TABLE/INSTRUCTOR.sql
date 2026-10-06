-- dmap_object_gen_tag : type : table name : instructor
set search_path = yoda,oracle,dmap_extension,public;
create table "instructor"  (
instructor_id numeric(8) not null,
salutation varchar(5),
first_name varchar(25),
last_name varchar(25),
street_address varchar(50),
zip varchar(5),
phone varchar(15),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : instructor
set search_path = yoda,oracle,dmap_extension,public;
alter table instructor add constraint inst_pk primary key (instructor_id);
-- dmap_object_gen_tag : type : alter table name : instructor
set search_path = yoda,oracle,dmap_extension,public;
alter table instructor alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : instructor
set search_path = yoda,oracle,dmap_extension,public;
alter table instructor alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : instructor
set search_path = yoda,oracle,dmap_extension,public;
alter table instructor alter column instructor_id set not null;
-- dmap_object_gen_tag : type : alter table name : instructor
set search_path = yoda,oracle,dmap_extension,public;
alter table instructor alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : instructor
set search_path = yoda,oracle,dmap_extension,public;
alter table instructor alter column modified_date set not null;
-- dmap_object_gen_tag : type : alter table name : instructor
set search_path = yoda,oracle,dmap_extension,public;
alter table instructor add constraint inst_zip_fk foreign key (zip) references zipcode(zip) on delete no action not deferrable initially immediate;
