create or replace procedure yoda.pkg_sample2_proc_integer_table_type (p_id numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
/* type test_tbl is
table of varchar(50); */
--index by binary_integer;
v_tab VARCHAR(50)[];

i       integer;

begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
i := 1;
SELECT array_agg(s) INTO v_tab FROM ( select name from test where id !=p_id ) s;/* dmap converted statement start */
perform dbms_output.put_line( concat('count=', COALESCE(array_length(v_tab, 1), 0))) ;/* dmap converted statement end *//* dmap converted statement start */
for i in ARRAY_lower(v_tab, 1)..ARRAY_upper(v_tab, 1) loop
perform dbms_output.put_line( concat('row', v_tab[i])) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
