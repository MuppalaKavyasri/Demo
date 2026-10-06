create or replace  function  yoda.pkg_sample3_fnc_assctve_array (p_index_value integer) returns numeric as $body$
declare
-- pgv moved types start
-- pgv moved types end
type list_of_names_t is table of varchar(32767)
index by integer;
happyfamily     list_of_names_t;
-- could also use a predefined array type!
--happyfamily     dbms_sql.varchar2_table;
l_index_value   integer := p_index_value;/*p_index_value 88*/
begin 

-- package does not have global variables
--dmap conversion comment: gtt declaration added
happyfamily(1) := 'Eli';
happyfamily(-15070) := 'Steven';
happyfamily(3) := 'Chris';
happyfamily(l_index_value) := 'Veva';
happyfamily(9999999) := 'Loey';
happyfamily(9999998) := 'Lauren';
perform dbms_output.put_line(COALESCE(array_length(happyfamily, 1), 0));
--
l_index_value := ARRAY_lower(happyfamily, 1);/* dmap converted statement start */
while(nullif(l_index_value::text, '') is not null)
loop
perform dbms_output.put_line(
concat('Name at index ', l_index_value
, ' = '
, happyfamily(l_index_value))) ;/* dmap converted statement end */
l_index_value := happyfamily.next(l_index_value);
end loop;
return 0;end;
$body$
language plpgsql
;
