create or replace procedure yoda.pkg_sample7_member_functions_proc () as $body$
declare
-- pgv moved types start
-- pgv moved types end
v1 table_stats_typ;
v2 table_stats_typ;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
v1 := table_stats_typ(
10,
20,
30,
40,
clock_timestamp(),
clock_timestamp() - interval '1 days'
);/* dmap converted statement start */
perform dbms_output.put_line( concat('V1 --> ', v1.insertedcount, ',', v1.updatedcount, ',', v1.deletedcount, ',', v1.unchangedcount)) ;/* dmap converted statement end */
v1.reset;/* dmap converted statement start */
perform dbms_output.put_line( concat('RESET V1 --> ', v1.insertedcount, ',', v1.updatedcount, ',', v1.deletedcount, ',', v1.unchangedcount)) ;/* dmap converted statement end */
v2 := table_stats_typ.create_new;/* dmap converted statement start */
perform dbms_output.put_line( concat('NEW V2 --> ', v2.insertedcount, ',', v2.updatedcount, ',', v2.deletedcount, ',', v2.unchangedcount)) ;/* dmap converted statement end */
v1.insertedcount := 33;
v1.updatedcount := 105;
v2.insertedcount := 66;
v2.unchangedcount := 50;/* dmap converted statement start */
perform dbms_output.put_line( concat('UPDATED V1 --> ', v1.insertedcount, ',', v1.updatedcount, ',', v1.deletedcount, ',', v1.unchangedcount)) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('UPDATED V2 --> ', v2.insertedcount, ',', v2.updatedcount, ',', v2.deletedcount, ',', v2.unchangedcount)) ;/* dmap converted statement end */
v1.plus_equal(v2);/* dmap converted statement start */
perform dbms_output.put_line( concat('PLUS_EQUAL V1 --> ', v1.insertedcount, ',', v1.updatedcount, ',', v1.deletedcount, ',', v1.unchangedcount)) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('PLUS_EQUAL V2 --> ', v2.insertedcount, ',', v2.updatedcount, ',', v2.deletedcount, ',', v2.unchangedcount)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
