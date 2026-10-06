create or replace procedure yoda.pkg_sample3_test_forall_proc_1 ( p_id numeric ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
/*
type emp_info_type is  table of employee%rowtype;
*/
emp_info_type_tbl employee[];

v_sql varchar(400);

starttime integer:= dbms_utility.get_time;

begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
delete from sale_stats where id=p_id;/* dmap converted statement start */
perform dbms_output.put_line( concat('Total Time taken to delete the table data:  - ', to_char(round((select dmap_extension.dmap_dbms_utility_get_time() -
starttime) / 6000,
2)) , ' Minutes')) ;/* dmap converted statement end */
exception
when others then
rollback;
raise;end;
$body$
language plpgsql
;
