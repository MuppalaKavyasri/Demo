create or replace procedure yoda.pkg_collection_sample_sp_bulk_collect () as $body$
declare
-- pgv moved types start
-- pgv moved types end
/* declaring the collection type */
/* type test_tbl_typ is table of varchar(20) index by integer; */
tbl_test VARCHAR(20)[];

/* my_cur_test cursor for select name from test_c1; */

    my_cur_test_v1_query TEXT;
    my_cur_test_v2_query TEXT;
    my_cur_test_final_query TEXT;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
/* populate the array using bulk collect that retrieves all rows in a single fetch, getting rid of row-by-row fetch in loop. */
/* open my_cur_test; */
  SELECT array_agg(s) INTO tbl_test  FROM ( select name from test_c1 ) s;
/* close my_cur_test; *//* dmap converted statement start */
/* accessing the collection type - before modify */
for i in ARRAY_lower(tbl_test, 1) .. ARRAY_upper(tbl_test, 1)
loop
perform dbms_output.put_line( concat('Before Modify- Row- ', i , ': is ', tbl_test[i])) ;/* dmap converted statement end */
end loop;
/* modifying collection element values */
tbl_test[2] := 'Program1';/* dmap converted statement start */
/* accessing the collection type – after modify */
for i in ARRAY_lower(tbl_test, 1) .. ARRAY_upper(tbl_test, 1)
loop
perform dbms_output.put_line( concat('After Modify- Row- ', i , ': is ', tbl_test[i])) ;/* dmap converted statement end */
end loop;
perform dbms_output.put_line('Program executed successfully.');end;
$body$
language plpgsql
;
