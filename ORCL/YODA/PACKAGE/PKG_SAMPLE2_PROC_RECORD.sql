create or replace procedure yoda.pkg_sample2_proc_record (p_id numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
/* type test_tbl is
table of test_type index by integer; */
v_tab pkg_sample2_test_type[];
v_rec pkg_sample2_test_type;
cr cursor for
select
*
from test;
i       integer;
begin 
 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
i := 1;
for rec in cr
loop
v_tab[i].id := rec.id;
v_tab[i].name := rec.name;
perform dbms_output.put_line(v_tab[i].id);
perform dbms_output.put_line(v_tab[i].name);
i:=i+1;
end loop;/* dmap converted statement start */
perform dbms_output.put_line( concat('count=', COALESCE(array_length(akeys(v_tab), 1), 0))) ;/* dmap converted statement end *//* dmap converted statement start */
for i in ARRAY_lower(akeys(v_tab), 1)..ARRAY_upper(akeys(v_tab), 1) loop
perform dbms_output.put_line( concat('row  ', v_tab[i].id , v_tab[i].name)) ;/* dmap converted statement end */
end loop;end;
$body$
language plpgsql
;
