create or replace procedure yoda.pkg_sample5_compositetype_test_proc (p1 numeric, t1 inout test_inout_out_as_fn_param_typ, d1 inout test_inout_out_as_fn_param.dom1) as $body$
declare
-- pgv moved types start
--dmap moved type other package test_inout_out_as_fn_param;
test_inout_out_as_fn_param.type  test_inout_out_as_fn_param_typ is record(a numeric, b varchar(10));
--dmap moved type other package test_inout_out_as_fn_param;
-- pgv moved types end
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
t1.a := 1;
t1.b := 'abc';
d1  := test_inout_out_as_fn_param.dom1(1,2,3);end;
$body$
language plpgsql
;
