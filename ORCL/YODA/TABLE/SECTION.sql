-- dmap_object_gen_tag : type : table name : section
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create table "section"  (
section_id numeric(8) not null,
course_no numeric(8) not null,
section_no numeric(3) not null,
start_date_time timestamp(0),
"location" varchar(50),
instructor_id numeric(8) not null,
capacity numeric(3),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;/* dmap converted statement end */
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section add constraint sect_pk primary key (section_id);
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section add constraint sect_sect2_uk unique (section_no,course_no);
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section alter column course_no set not null;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section alter column instructor_id set not null;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section alter column modified_date set not null;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section alter column section_id set not null;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section alter column section_no set not null;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section add constraint sect_crse_fk foreign key (course_no) references course(course_no) on delete no action not deferrable initially immediate;
-- dmap_object_gen_tag : type : alter table name : section
set search_path = yoda,oracle,dmap_extension,public;
alter table section add constraint sect_inst_fk foreign key (instructor_id) references instructor(instructor_id) on delete no action not deferrable initially immediate;
