create or replace procedure yoda.pkg_collection_sample_sp_composite_collection () as $body$
declare
-- pgv moved types start
-- pgv moved types end
/* creating a type with 2 columns */
/* declaring a composite collection */
/* type test_tbl_typ is table of my_test_typ index by integer; */
tbl_test my_test_typ[];
/* my_cur_test cursor for select id, name from test_c1; */
    my_cur_test_v1_query TEXT;
    my_cur_test_v2_query TEXT;
    my_cur_test_final_query TEXT;
begin 
 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
/* open my_cur_test; */
/* populate the array using bulk collect that retrieves all rows in a single fetch, getting rid of row-by-row fetch in loop. */
  SELECT array_agg(s) INTO tbl_test  FROM ( select id, name from test_c1 ) s;
/* close my_cur_test; *//* dmap converted statement start */
/* accessing the collection type - before modify */
for i in ARRAY_lower(akeys(tbl_test), 1) .. ARRAY_upper(akeys(tbl_test), 1)
loop
perform dbms_output.put_line( concat('Before Modify- Row- ', i , ': ' , tbl_test[i].id , ' is ', tbl_test[i].name)) ;/* dmap converted statement end */
end loop;
/* modifying the value of array elements */
tbl_test[1].name  := 'Example1-Test';
tbl_test[2].id    := 222222;
tbl_test[2].name  := 'Example2-Test';/* dmap converted statement start */
/* accessing the collection type - after modify */
for i in ARRAY_lower(akeys(tbl_test), 1) .. ARRAY_upper(akeys(tbl_test), 1)
loop
perform dbms_output.put_line( concat('After Modify- Row- ', i , ': ' , tbl_test[i].id , ' is ', tbl_test[i].name)) ;/* dmap converted statement end */
end loop;
perform dbms_output.put_line('Program executed successfully.');end;
$body$
language plpgsql
;
