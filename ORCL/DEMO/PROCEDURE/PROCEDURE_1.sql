create or replace procedure demo."procedure_1"  (in_col_name varchar) as $body$
declare
out_val1 varchar(35);
begin
execute 'CREATE TABLE "scheme" (id NUMERIC, amt NUMERIC) ;' ; /* dmap converted statement start *//* dmap converted statement */
/* dmap converted statement start */ execute  concat('SELECT MAX( ', in_col_name , ' ) FROM EMP')  into strict out_val1; /* dmap converted statement end */
/* dmap converted statement end */
execute 'SELECT *;' ; /* dmap converted statement */
execute 'SELECT statement_timestamp();' ; /* dmap converted statement */
end;
$body$
language plpgsql
;
