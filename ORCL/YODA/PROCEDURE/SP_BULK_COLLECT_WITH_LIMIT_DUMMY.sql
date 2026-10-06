create or replace procedure yoda."sp_bulk_collect_with_limit_dummy"  () as $body$
declare
c1 cursor for select id from test_table;

/* type v_tab is table of integer index by integer; */
V_ID INTEGER[];

len integer;

    c1_v1_query TEXT;
    c1_v2_query TEXT;
    c1_final_query TEXT;
    v_limit NUMERIC := 1000;
    v_offset NUMERIC := 0;
begin 

/* open c1; */
loop
/* here we are using limit along with bulk collect to limit the no of rows to
1000 for each loop */
v_limit := 1000;
 SELECT array_agg(s) OVER (ROWS BETWEEN CURRENT ROW AND (v_limit - 1) FOLLOWING) INTO v_id FROM (  SELECT q.* FROM (  select id from test_table ) q ) s LIMIT v_limit OFFSET v_offset;
   v_offset := v_offset + v_limit;
len:=COALESCE(array_length(v_id, 1), 0);/* dmap converted statement start */
perform dbms_output.put_line( concat('len-', len)) ;/* dmap converted statement end */
exit when not found; /* apply on c1 */
end loop;
/* close c1; */end;
$body$
language plpgsql
SECURITY DEFINER
;
