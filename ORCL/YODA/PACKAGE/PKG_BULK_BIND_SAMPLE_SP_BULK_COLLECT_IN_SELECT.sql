create or replace procedure yoda.pkg_bulk_bind_sample_sp_bulk_collect_in_select () as $body$
declare
-- pgv moved types start
-- pgv moved types end
/*
type t_bulk_collect_test_tab is table of test_table%rowtype;
*/
l_tab test_table[];

begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
/* populate the array using bulk collect that retrieves all rows in a single fetch ,
using select into clause */
SELECT array_agg(s) INTO l_tab FROM ( select * from   test_table ) s;/* dmap converted statement start */
perform dbms_output.put_line( concat('Bulk count: (', COALESCE(array_length(l_tab, 1), 0) , ' rows): ')  );/* dmap converted statement end */end;
$body$
language plpgsql
;
