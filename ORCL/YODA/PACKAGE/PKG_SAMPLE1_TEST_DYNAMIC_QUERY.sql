create or replace procedure yoda.pkg_sample1_test_dynamic_query (id numeric) as $body$
declare
-- pgv moved types start
-- pgv moved types end
v_record employee_details_new%rowtype;
v_sql varchar(4000);
empid numeric:=1;
empname varchar(10) :='ajay';
v_date timestamp(0):=clock_timestamp() + interval '1 days';
v_table varchar(50);
--dmap conversion comment: global temp variables moved as local temp variables
v_char1_temp varchar;
--dmap conversion comment: declaration boundary ends
begin 

call dmap_extension.pkg_var_dmap_tab_to_gtt_init('YODA', 'PKG_SAMPLE1');
--dmap conversion comment: gtt declaration added
select table_name into strict v_table from tables_info where lower(table_name) like '%employee_details_';/* dmap converted statement start */
/* dmap converted statement start */ execute  concat('update ', v_table , ' set employee_name =:empname, employee_' , id , '=emp' , id , ', employee_mobile_number= coalesce(employee_mobile_number, 999999999), employee_branch_code= CASE WHEN employee_branch_code=1 THEN ''Accounts'' WHEN employee_branch_code=2 THEN ''Support'' WHEN employee_branch_code=3 THEN ''IT'' ELSE ''others'' END, employee_join_date= statement_timestamp() where employee_join_date=:empname')  using empid, empname, v_date; /* dmap converted statement end */
/* dmap converted statement end */
end;
$body$
language plpgsql
;
