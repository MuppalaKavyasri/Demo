-- dmap_object_gen_tag : type : table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
create table "grade_type"  (
grade_type_code char(2) not null,
description varchar(50) not null,
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type add constraint grtyp_pk primary key (grade_type_code);
-- dmap_object_gen_tag : type : alter table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type alter column description set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type add constraint grtyp_grade_type_code_length check (length(grade_type_code)=2);
-- dmap_object_gen_tag : type : alter table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type alter column grade_type_code set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type alter column modified_date set not null;
