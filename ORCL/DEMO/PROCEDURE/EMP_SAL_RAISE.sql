create or replace procedure demo."emp_sal_raise"  (p_emp_id numeric, sal_raise numeric,v_emp_current_sal inout numeric) as $body$
begin
perform dbms_output.enable;
select sal into strict v_emp_current_sal from demo.emp where empno=p_emp_id;
perform dbms_output.put_line(v_emp_current_sal+sal_raise);/* dmap converted statement start */
exception when others then
raise exception '%',  concat('An error was encountered - ', sqlstate, ' -ERROR- ', sqlerrm)  using errcode = '45001';/* dmap converted statement end */
rollback;
/* commit; */
end;
$body$
language plpgsql
;
