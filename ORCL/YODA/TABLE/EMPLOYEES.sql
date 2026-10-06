-- dmap_object_gen_tag : type : table name : employees
set search_path = yoda,oracle,dmap_extension,public;
create table "employees"  (
id numeric(38) not null,
first_name varchar(40) not null,
last_name varchar(40) not null
) ;
-- dmap_object_gen_tag : type : alter table name : employees
set search_path = yoda,oracle,dmap_extension,public;
alter table employees add primary key (id);
-- dmap_object_gen_tag : type : alter table name : employees
set search_path = yoda,oracle,dmap_extension,public;
alter table employees alter column first_name set not null;
-- dmap_object_gen_tag : type : alter table name : employees
set search_path = yoda,oracle,dmap_extension,public;
alter table employees alter column last_name set not null;
