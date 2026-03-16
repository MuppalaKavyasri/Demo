create or replace procedure demo."adderp"  (id numeric, "name" varchar) as $body$
declare
n3 numeric(8);
name1 varchar(20);
begin
n3 := id +1;
name1 := name;
insert into demo.test2 values (n3,name1);end;
$body$
language plpgsql
;
