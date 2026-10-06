create or replace  function  yoda.pkg_sample2_test_return1 ( str1 varchar,str2 out varchar , out extra_param numeric) returns record as $body$
declare
-- pgv moved types start
-- pgv moved types end
num1 numeric;
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
str2 := 'Success';
num1 := 100;
perform dbms_output.put_line(str2);
extra_param := num1;
return;end;
$body$
language plpgsql
stable;
