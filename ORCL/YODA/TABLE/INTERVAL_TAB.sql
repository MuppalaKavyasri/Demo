-- dmap_object_gen_tag : type : table name : interval_tab
set search_path = yoda,oracle,dmap_extension,public;
create table "interval_tab"  (
id numeric,
code varchar(10),
description varchar(50),
created_date timestamp(0)
) partition by range (
created_date
) ;
