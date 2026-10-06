-- dmap_object_gen_tag : type : table name : student
set search_path = yoda,oracle,dmap_extension,public;
create table "student"  (
student_id numeric(8) not null,
salutation varchar(5),
first_name varchar(25),
last_name varchar(25) not null,
street_address varchar(50),
zip varchar(5) not null,
phone varchar(15),
employer varchar(50),
registration_date timestamp(0) not null,
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student add constraint stu_pk primary key (student_id);
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student alter column last_name set not null;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student alter column modified_date set not null;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student alter column registration_date set not null;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student alter column student_id set not null;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student alter column zip set not null;
-- dmap_object_gen_tag : type : alter table name : student
set search_path = yoda,oracle,dmap_extension,public;
alter table student add constraint stu_zip_fk foreign key (zip) references zipcode(zip) on delete no action not deferrable initially immediate;
