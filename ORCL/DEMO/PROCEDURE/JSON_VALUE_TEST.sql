create or replace procedure demo."json_value_test"  () as $body$
declare
v_employee_id numeric;
v_first_name varchar(50);
v_last_name varchar(50);
v_salary numeric;
v_department_id numeric;
v_address_street varchar(100);
v_address_city varchar(100);
v_address_state varchar(100);
v_address_zip varchar(20);
rec record;
begin
for rec in (select employee_id, first_name, last_name, salary, department_id, address from employee) loop
/* v_employee_id := jsonb_extract_path_text ( rec.employee_id::jsonb,  'employee_id'  );
v_first_name := jsonb_extract_path_text ( rec.first_name::jsonb,  'first_name'  );
v_last_name := jsonb_extract_path_text ( rec.last_name::jsonb,  'last_name'  );
v_salary := to_number(jsonb_extract_path_text ( rec.salary::jsonb::text, 'salary'));
v_department_id := jsonb_extract_path_text ( rec.department_id::jsonb,  'department_id'  );  */
v_address_street := jsonb_extract_path_text ( rec.address::jsonb,  'address' ,'street'  );/* dmap converted statement start */
perform dbms_output.put_line( concat('Employee_id - V_address.street', rec.employee_id , '-' , v_address_street)  );/* dmap converted statement end */
v_address_city := jsonb_extract_path_text ( rec.address::jsonb,  'address' ,'city'  );
v_address_state := jsonb_extract_path_text ( rec.address::jsonb,  'address' ,'state'  );
v_address_zip := jsonb_extract_path_text ( rec.address::jsonb,  'address' ,'zip'  );
/*    exception
when others then
dbms_output.put_line('Error processing JSON data');
continue; -- skip to next record
end;
dbms_output.put_line('Data before inserting into employee');
begin
insert into employee (employee_id, first_name, last_name, salary, department_id)--, address_street, address_city, address_state, address_zip)
values (v_employee_id, v_first_name, v_last_name, v_salary, v_department_id);--, v_address_street, v_address_city, v_address_state, v_address_zip);
exception
when others then
dbms_output.put_line('Data After inserting into employee');
end;
begin
update employee
set department_id = v_department_id + 10  -- increment department id by 10
where employee_id = v_employee_id;
exception
when others then
dbms_output.put_line('After update into employee');
end;
if v_salary > 50000 then
begin
delete from employee where employee_id = v_employee_id;
exception
when others then
dbms_output.put_line('After Delete into employee');
end;
end if; */
end loop;
exception
when others then
perform dbms_output.put_line('After Delete into employee');end;
$body$
language plpgsql
;
