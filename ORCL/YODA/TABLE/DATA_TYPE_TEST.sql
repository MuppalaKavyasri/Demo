-- dmap_object_gen_tag : type : table name : data_type_test
set search_path = yoda,oracle,dmap_extension,public;
create table "data_type_test"  (
col1 char(1),
col2 char(10),
col3 varchar(10),
col4 varchar(10),
col5 text,
col6 numeric(38),
col7 numeric,
col8 numeric(8),
col9 decimal(10, 2),
col10 decimal(11, 2),
col11 decimal(38, 5),
col12 numeric,
col13 timestamp(0),
col14 timestamp,
col15 decimal(10, 2),
col16 bytea,
col17 bytea,
col18 text
) ;
