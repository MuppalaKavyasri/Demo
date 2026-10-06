create or replace procedure yoda.pkg_sample1_bulk_load_proc ( p_id numeric ) as $body$
declare
-- pgv moved types start
-- pgv moved types end
/*
type emp_info_type is  table of employee%rowtype;
*/
emp_info_type_tbl employee[];

--dmap conversion comment: global temp variables moved as local temp variables
v_char1_temp varchar;

--dmap conversion comment: declaration boundary ends
begin 

call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'PKG_SAMPLE1');
--dmap conversion comment: gtt declaration added
SELECT array_agg(s) INTO emp_info_type_tbl FROM ( select e.emp_id, e.emp_name, e.email_id, e.date_of_birth, e.joining_date, e.salary, e.comm, e.department, e.mobile_no, e.address from employee e where e.emp_id=p_id ) s;
FOR i IN 1 .. emp_info_type_tbl.count
LOOP

insert into employee_bkp(
emp_id
)
values (
emp_info_type_tbl[i].emp_id
);

END LOOP;
exception
when others then
rollback;
raise;end;
$body$
language plpgsql
;
