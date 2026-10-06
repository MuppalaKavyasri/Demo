create or replace  function  yoda.pkg_sample2_test_overloading ( str1 varchar) returns varchar as $body$
declare
-- pgv moved types start
-- pgv moved types end
str2 varchar(20);
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
str2 := 'Success';
return str2;
exception
when others then
return 'error';end;
$body$
language plpgsql
stable;
create or replace  function  yoda.pkg_sample2_test_overloading ( str1 varchar) returns varchar as $body$
declare
-- pgv moved types start
-- pgv moved types end
str2 varchar(20);
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
str2 := 'Success';
return str2;
exception
when others then
return 'error';end;
$body$
language plpgsql
stable;
