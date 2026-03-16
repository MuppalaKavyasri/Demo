create or replace procedure demo."execute_immediate_proc1"  () as $body$
begin
execute 'create table "abcd" (id NUMERIC) ;' ; /* dmap converted statement */
execute 'drop table abcd;' ; /* dmap converted statement */
execute 'create table "abcd" ( id varchar(10) ) ;' ; /* dmap converted statement */
end;
$body$
language plpgsql
;
