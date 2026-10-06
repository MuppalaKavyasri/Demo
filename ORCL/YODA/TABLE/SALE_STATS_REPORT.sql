-- dmap_object_gen_tag : type : table name : sale_stats_report
set search_path = yoda,oracle,dmap_extension,public;
create table "sale_stats_report"  (
id numeric(38) not null,
fiscal_year numeric(38),
product_code char(1),
quantity numeric(38)
) ;
-- dmap_object_gen_tag : type : alter table name : sale_stats_report
set search_path = yoda,oracle,dmap_extension,public;
alter table sale_stats_report add primary key (id);
