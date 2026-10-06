create or replace procedure yoda.pkg_collection_sample_sp_nested_comp_collection_2 () as $body$
declare
-- pgv moved types start
-- pgv moved types end
/* /* type tbl_aa is table of timestamp(0) index by integer; */ */

/* type tbl_bb_map is table of tbl_aa index by integer; */
v_bb tbl_aa[];

i integer := 1;

begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
/* populate the collection. */
for i in 1..5 loop
for j in 1..2 loop
v_bb[i](j)   := clock_timestamp()-i-j;
end loop;
end loop;/* dmap converted statement start */
/* accessing the collection type - before modify */
for i in ARRAY_lower(v_bb, 1) .. ARRAY_upper(v_bb, 1)
loop
for j in v_bb[i].first .. v_bb[i].last
loop
perform dbms_output.put_line( concat('Before modify- Element- (', i, ')(', j, '): ID=', v_bb[i](j))) ;/* dmap converted statement end */
end loop;
end loop;
/* modifying collection element values */
v_bb[3](2) := '22-JAN-2022';/* dmap converted statement start */
/* accessing the collection type – after modify */
for i in ARRAY_lower(v_bb, 1) .. ARRAY_upper(v_bb, 1)
loop
for j in v_bb[i].first .. v_bb[i].last
loop
perform dbms_output.put_line( concat('After modify- Element- (', i, ')(', j, '): ID=', v_bb[i](j))) ;/* dmap converted statement end */
end loop;
end loop;
perform dbms_output.put_line('Program executed successfully.');end;
$body$
language plpgsql
;
