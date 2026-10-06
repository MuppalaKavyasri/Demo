-- dmap_object_gen_tag : type : table name : grade
set search_path = yoda,oracle,dmap_extension,public;
create table "grade"  (
student_id numeric(8) not null,
section_id numeric(8) not null,
grade_type_code char(2) not null,
grade_code_occurrence numeric(38) not null,
numeric_grade numeric(3) not null default 0,
comments varchar(2000),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade add constraint gr_pk primary key (student_id,section_id,grade_type_code,grade_code_occurrence);
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column grade_code_occurrence set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column grade_type_code set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column modified_date set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column numeric_grade set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column section_id set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade alter column student_id set not null;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade add constraint gr_enr_fk foreign key (student_id,section_id) references enrollment(student_id,section_id) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : grade
set search_path = yoda,oracle,dmap_extension,public;
alter table grade add constraint gr_grtw_fk foreign key (section_id,grade_type_code) references grade_type_weight(section_id,grade_type_code) on delete no action not deferrable initially immediate;
