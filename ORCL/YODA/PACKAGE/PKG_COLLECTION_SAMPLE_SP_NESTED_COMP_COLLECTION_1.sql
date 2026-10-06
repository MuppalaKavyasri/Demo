create or replace procedure yoda.pkg_collection_sample_sp_nested_comp_collection_1 () as $body$
declare
-- pgv moved types start
-- pgv moved types end
/* type my_test_tbl_3 is table of my_test_typ_3 index by integer; */
v_my_test_tbl pkg_collection_sample_my_test_typ_3[];
i integer := 1;
begin 
 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
v_my_test_tbl[1].id   := 101010;
v_my_test_tbl[1].name := 'Peter';
v_my_test_tbl[1].address.house_addr := '56B, Block A';
v_my_test_tbl[1].address.street := 'Jones Street';
v_my_test_tbl[1].address.city := 'Manhattan';
v_my_test_tbl[2].id   := 202020;
v_my_test_tbl[2].name := 'Willard';
v_my_test_tbl[2].address.house_addr := '4525 Science Center';
v_my_test_tbl[2].address.street := null;
v_my_test_tbl[2].address.city := 'Fall City, Washington';
v_my_test_tbl[3].id      := 303030;
v_my_test_tbl[3].name    := 'Andrew';
v_my_test_tbl[3].address := null;/* dmap converted statement start */
for rec in ARRAY_lower(akeys(v_my_test_tbl), 1) .. ARRAY_upper(akeys(v_my_test_tbl), 1)
loop
perform dbms_output.put_line( concat('Element- ', i, ': ID=', v_my_test_tbl[i].id, ', Name=', v_my_test_tbl[i].name, ' is staying at ', v_my_test_tbl[i].address.house_addr, ',', v_my_test_tbl[i].address.street, ',', v_my_test_tbl[i].address.city)) ;/* dmap converted statement end */
i:=i+1;
end loop;
perform dbms_output.put_line('Program executed successfully.');end;
$body$
language plpgsql
;
