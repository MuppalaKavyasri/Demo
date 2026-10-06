-- dmap_object_gen_tag : type : table name : sale_stats
set search_path = yoda,oracle,dmap_extension,public;
create table "sale_stats"  (
id numeric(38) not null,
fiscal_year numeric(38),
product_a numeric(38),
product_b numeric(38),
product_c numeric(38)
) ;
-- dmap_object_gen_tag : type : alter table name : sale_stats
set search_path = yoda,oracle,dmap_extension,public;
alter table sale_stats add primary key (id);
