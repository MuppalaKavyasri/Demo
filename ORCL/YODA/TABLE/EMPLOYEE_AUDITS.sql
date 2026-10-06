-- dmap_object_gen_tag : type : table name : employee_audits
set search_path = yoda,oracle,dmap_extension,public;
create table "employee_audits"  (
id numeric(38) not null,
employee_id numeric(38) not null,
last_name varchar(40) not null,
changed_on timestamp not null
) ;
-- dmap_object_gen_tag : type : alter table name : employee_audits
set search_path = yoda,oracle,dmap_extension,public;
alter table employee_audits add primary key (id);
-- dmap_object_gen_tag : type : alter table name : employee_audits
set search_path = yoda,oracle,dmap_extension,public;
alter table employee_audits alter column employee_id set not null;
-- dmap_object_gen_tag : type : alter table name : employee_audits
set search_path = yoda,oracle,dmap_extension,public;
alter table employee_audits alter column last_name set not null;
-- dmap_object_gen_tag : type : alter table name : employee_audits
set search_path = yoda,oracle,dmap_extension,public;
alter table employee_audits alter column changed_on set not null;
