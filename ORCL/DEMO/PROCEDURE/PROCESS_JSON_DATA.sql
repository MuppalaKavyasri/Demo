create or replace procedure demo."process_json_data"  () as $body$
declare
rec record;
begin
-- loop through each row in the source table
for rec in (select employee_id, address from employee) loop
-- extract values from json data using json_value
declare
first_name varchar(100);
last_name varchar(100);
email varchar(100);
begin
first_name := jsonb_extract_path_text ( rec.address::jsonb,  'first_name'  );
last_name := jsonb_extract_path_text ( rec.address::jsonb,  'last_name'  );
email := jsonb_extract_path_text ( rec.address::jsonb,  'email'  );
-- insert the extracted values into the target table
insert into employee(employee_id, first_name, last_name, email)
values (employee_id, first_name, last_name, email);/* dmap converted statement start */
exception
when no_data_found then
-- handle exception if json data doesn't contain the expected fields
perform dbms_output.put_line( concat('Data missing in JSON for ID: ', rec.id)) ;/* dmap converted statement end *//* dmap converted statement start */
when others then
-- handle other exceptions
perform dbms_output.put_line( concat('Error processing ID: ', rec.id , '. Error: ' , sqlerrm)) ;/* dmap converted statement end */
end;
end loop;/* dmap converted statement start */
/* commit; */
exception
when others then
-- handle exceptions at procedure level
perform dbms_output.put_line( concat('Error in process_json_data procedure: ', sqlerrm)) ;/* dmap converted statement end */
rollback;end;
$body$
language plpgsql
;
