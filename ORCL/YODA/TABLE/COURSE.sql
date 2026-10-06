-- dmap_object_gen_tag : type : table name : course
set search_path = yoda,oracle,dmap_extension,public;
create table "course"  (
course_no numeric(8) not null,
description varchar(50) not null,
cost decimal(9, 2),
prerequisite numeric(8),
created_by varchar(30) not null,
created_date timestamp(0) not null,
modified_by varchar(30) not null,
modified_date timestamp(0) not null
) ;
-- dmap_object_gen_tag : type : alter table name : course
set search_path = yoda,oracle,dmap_extension,public;
alter table course add constraint crse_pk primary key (course_no);
-- dmap_object_gen_tag : type : alter table name : course
set search_path = yoda,oracle,dmap_extension,public;
alter table course alter column course_no set not null;
-- dmap_object_gen_tag : type : alter table name : course
set search_path = yoda,oracle,dmap_extension,public;
alter table course alter column created_by set not null;
-- dmap_object_gen_tag : type : alter table name : course
set search_path = yoda,oracle,dmap_extension,public;
alter table course alter column created_date set not null;
-- dmap_object_gen_tag : type : alter table name : course
set search_path = yoda,oracle,dmap_extension,public;
alter table course alter column description set not null;
-- dmap_object_gen_tag : type : alter table name : course
set search_path = yoda,oracle,dmap_extension,public;
alter table course alter column modified_by set not null;
-- dmap_object_gen_tag : type : alter table name : course
set search_path = yoda,oracle,dmap_extension,public;
alter table course alter column modified_date set not null;
-- dmap_object_gen_tag : type : alter table name : course
set search_path = yoda,oracle,dmap_extension,public;
alter table course add constraint crse_crse_fk foreign key (prerequisite) references course(course_no) on delete no action not deferrable initially immediate;
