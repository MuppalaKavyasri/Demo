-- dmap_object_gen_tag : type : table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
create table "enrollment"  (
student_id numeric(8) not null,
section_id numeric(8) not null,
enroll_date timestamp(0) not null,
final_grade numeric(3),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
alter table enrollment add constraint enr_pk primary key (student_id,section_id);
-- dmap_object_gen_tag : type : alter table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
alter table enrollment alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
alter table enrollment alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
alter table enrollment alter column enroll_date set not null;
-- dmap_object_gen_tag : type : alter table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
alter table enrollment alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
alter table enrollment alter column modified_date set not null;
-- dmap_object_gen_tag : type : alter table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
alter table enrollment alter column section_id set not null;
-- dmap_object_gen_tag : type : alter table name : enrollment
set search_path = yoda,oracle,dmap_extension,public;
alter table enrollment alter column student_id set not null;
