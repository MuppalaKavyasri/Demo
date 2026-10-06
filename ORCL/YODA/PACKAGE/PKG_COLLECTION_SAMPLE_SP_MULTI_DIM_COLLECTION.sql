create or replace procedure yoda.pkg_collection_sample_sp_multi_dim_collection () as $body$
declare
-- pgv moved types start
-- pgv moved types end
/* type test_tbl is table of test_type index by integer; */
/* type test_tbl_ncc is table of test_type_nest index by integer; */
v_ncc pkg_collection_sample_test_type_nest[];
begin 
 
 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
/* populate the collection. */
v_ncc[1].id   := 10101;
v_ncc[1].name := 'Williams';
v_ncc[1].address(1).addr_type := 'Permanent';
v_ncc[1].address(1).addr_val  :=  '3044 Snowbird Lane';
v_ncc[1].address(1).city      :=  'Nevada';
v_ncc[1].address(2).addr_type :=  'Correspondence';
v_ncc[1].address(2).addr_val  :=  '4390 Leisure Lane';
v_ncc[1].address(2).city      :=  'Los Angeles';
v_ncc[1].address(3).addr_type :=  'Office';
v_ncc[1].address(3).addr_val  :=  '2970 Flinderation Road';
v_ncc[1].address(3).city      :=  'Illinois';
v_ncc[2].id   :=  20202;
v_ncc[2].name :=  'Jackson';/* dmap converted statement start */
/* accessing the collection type - before modify */
for j in 1..3 loop
perform dbms_output.put_line( concat('Element- ', v_ncc[1].id, ', name:', v_ncc[1].name, ', complete address: ', v_ncc[1].address(j).addr_type, '- ', v_ncc[1].address(j).addr_val, ', ', v_ncc[1].address(j).city)) ;/* dmap converted statement end */
end loop;
perform dbms_output.put_line('Program executed successfully.');end;
$body$
language plpgsql
;
