create or replace procedure yoda.pkg_sample7_bulk_data_load (asofdate numeric default null) as $body$
declare
-- pgv moved types start
-- pgv moved types end
starttime integer := dbms_utility.get_time;
begin 

/* dmap converted statement start */
-- package does not have global variables
--dmap conversion comment: gtt declaration added
insert into bulk_test_table
with t(n) as (
select 1
union all
select n+1 from t where n < 50000
)
select n as id, concat('test_', n)  as name ,clock_timestamp()+n as login_date from t;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Time taken to complete Procedure:', to_char(round((select dmap_extension.dmap_dbms_utility_get_time() - starttime)/6000::numeric,2)), ' Minutes')) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
