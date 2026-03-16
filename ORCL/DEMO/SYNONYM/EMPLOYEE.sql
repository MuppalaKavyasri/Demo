set client_encoding to 'UTF8';
 set search_path = demo;
create or replace view demo."employee" as select * from demo."emp";
