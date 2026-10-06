-- dmap_object_gen_tag : type : table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
create table "grade_conversion"  (
letter_grade varchar(2) not null,
grade_point decimal(3, 2) not null default 0,
max_grade numeric(3) not null,
min_grade numeric(3) not null,
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion add constraint grcon_pk primary key (letter_grade);
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion alter column grade_point set not null;
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion alter column letter_grade set not null;
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion alter column max_grade set not null;
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion alter column min_grade set not null;
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : grade_conversion
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_conversion alter column modified_date set not null;
