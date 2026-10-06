create or replace procedure yoda.dmap_pkg_sample2_spr_delete (pi_employee_id employee_details.employee_id%type, pi_employee_branch_code employee_details.employee_branch_code%type) as $body$
declare
-- pgv moved types start
-- pgv moved types end
-- pragma autonomous_transaction;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
-- dbms_output.put_line(deleting filetype... || pi_filtyp );
delete from employee_details where employee_id=pi_employee_id and employee_branch_code=pi_employee_branch_code;
/* commit; */
end;
$body$
language plpgsql
;
