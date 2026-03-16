create or replace procedure demo."departments"  ("no" dept.deptno%type) as $body$
declare
v_cursor integer;
v_dname  char(20);
v_rows   integer;
begin
v_cursor := dbms_sql.open_cursor;
dbms_sql_parse(v_cursor, 'select dname from demo.dept where deptno > :x', dbms_sql.v7);
dbms_sql_bind_variable(v_cursor, ':x', no);
dbms_sql_define_column_char(v_cursor, 1, v_dname, 20);
v_rows := dbms_sql_execute(v_cursor);
loop
if dbms_sql_fetch_rows(v_cursor) = 0 then
exit;
end if;
dbms_sql_column_value_char(v_cursor, 1, v_dname);/* dmap converted statement start */
perform dbms_output.put_line( concat('Deptartment name: ', v_dname)) ;/* dmap converted statement end */
end loop;
dbms_sql_close_cursor(v_cursor);
exception
when others then
dbms_sql_close_cursor(v_cursor);/* dmap converted statement start */
raise exception '%',  concat('Unknown Exception Raised: ', sqlstate, ' ', sqlerrm)  using errcode = '45000';/* dmap converted statement end */end;
$body$
language plpgsql
;
