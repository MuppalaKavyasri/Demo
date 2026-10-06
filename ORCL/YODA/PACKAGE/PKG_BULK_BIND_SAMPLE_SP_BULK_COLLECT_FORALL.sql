create or replace procedure yoda.pkg_bulk_bind_sample_sp_bulk_collect_forall () as $body$
declare
-- pgv moved types start
-- pgv moved types end
/*
type v_test is table of test_table%rowtype;
*/
V_TAB TEST_TABLE[];

v_count integer;

begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
SELECT array_agg(s) INTO v_tab FROM ( select t.* from test_table t ) s;
for i in ARRAY_lower(v_tab, 1) .. ARRAY_upper(v_tab, 1)
loop
if mod(v_tab[i].id, 2) = 0 then
/* modifying the value of array elements */
v_tab[i].name    := 'EVEN';
end if;
end loop;/* dmap converted statement start */
perform dbms_output.put_line( concat('Retrieved-', to_char(COALESCE(array_length(v_tab, 1), 0)), ' rows')) ;/* dmap converted statement end */
select count(1) into strict v_count from test_table2;/* dmap converted statement start */
perform dbms_output.put_line( concat('BEFORE TABLE COUNT-', v_count)) ;/* dmap converted statement end */
FOR i IN 1 .. v_tab.count
LOOP

insert into test_table2(
id,
name,
login_date
)
values (
v_tab[i].id,
v_tab[i].name,
v_tab[i].login_date
);
END LOOP;

/* commit; */
select count(1) into strict v_count from test_table2;/* dmap converted statement start */
perform dbms_output.put_line( concat('AFTER TABLE COUNT-', v_count)) ;/* dmap converted statement end */end;
$body$
language plpgsql
;
