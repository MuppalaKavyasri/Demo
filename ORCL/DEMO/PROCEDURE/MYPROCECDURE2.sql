create or replace procedure demo."myprocecdure2"  () as $body$
begin
for i in 1 .. 10000
loop
execute 'insert into mytable values ( i );' ; /* dmap converted statement */
end loop;end;
$body$
language plpgsql
;
