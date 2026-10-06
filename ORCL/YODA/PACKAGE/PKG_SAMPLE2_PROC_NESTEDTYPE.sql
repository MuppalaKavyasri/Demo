create or replace procedure yoda.pkg_sample2_proc_nestedtype (p_id numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
/* type test_tbl is
table of test_type index by integer; */
/* type test_tbl_nest is
table of test_type_nest index by integer; */
v_tab test_type[];
v_rec pkg_sample2_test_type;
v_tab_nest pkg_sample2_test_type_nest[];
v_rec_nest pkg_sample2_test_type_nest;
cr cursor for
select
*
from test where id=p_id;
i       integer;
begin 
 
 
 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
i := 1;
for rec in cr
loop
v_tab[i].id := rec.id;
v_tab[i].name := rec.name;
-- dbms_output.put_line(v_tab[i].id);
i:=i+1;
end loop;
i := 1;
for rec in cr
loop
v_tab_nest[i].p_id := rec.id+1;/* dmap converted statement start */
v_tab_nest[i].p_name :=  concat(rec.name, '_nest') ;/* dmap converted statement end */
v_tab_nest[i].address := v_tab[i];
perform dbms_output.put_line(v_tab_nest[i].p_id);
perform dbms_output.put_line(v_tab_nest[i].p_name);
perform dbms_output.put_line(v_tab_nest[i].address.id);
perform dbms_output.put_line(v_tab_nest[i].address.name);
i:=i+1;
end loop;/* dmap converted statement start */
perform dbms_output.put_line( concat('count=', COALESCE(array_length(v_tab, 1), 0))) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('count=', COALESCE(array_length(akeys(v_tab_nest), 1), 0))) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
