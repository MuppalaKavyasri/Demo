create or replace procedure yoda."sp_bulk_collect_in_select_dummy"  () as $body$
declare
type t_bulk_collect_test_tab is table of test_table%rowtype;
l_tab    t_bulk_collect_test_tab := t_bulk_collect_test_tab();
begin 

/* populate the array using bulk collect that retrieves all rows in a single fetch ,
using select into clause */
SELECT array_agg(s) INTO l_tab FROM ( select * from   test_table ) s;/* dmap converted statement start */
perform dbms_output.put_line( concat('Bulk count: (', COALESCE(array_length(l_tab, 1), 0) , ' rows): ')  );/* dmap converted statement end */end;
perform * from test_table;
$body$
language plpgsql
;
