-- dmap_object_gen_tag : type : table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
create table "grade_type_weight"  (
section_id numeric(8) not null,
grade_type_code char(2) not null,
number_per_section numeric(3) not null,
percent_of_final_grade numeric(3) not null,
drop_lowest char(1) not null,
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight add constraint grtw_pk primary key (section_id,grade_type_code);
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column drop_lowest set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column grade_type_code set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column modified_date set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column number_per_section set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column percent_of_final_grade set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight alter column section_id set not null;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight add constraint grtw_grtyp_fk foreign key (grade_type_code) references grade_type(grade_type_code) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : grade_type_weight
set search_path = yoda,oracle,dmap_extension,public;
alter table grade_type_weight add constraint grtw_sect_fk foreign key (section_id) references section(section_id) on delete no action not deferrable initially immediate;
