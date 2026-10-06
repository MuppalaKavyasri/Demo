create or replace procedure yoda.pkg_sample3_spr_get_concat_results () as $body$
declare
-- pgv moved types start
-- pgv moved types end
begin 

/* dmap converted statement start */
-- package does not have global variables
--dmap conversion comment: gtt declaration added
perform dbms_output.put_line( concat('Combine strings with || with NOT Null values: ', 'Happy', ' coding')) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Combine strings with || with Null values: ', null, ' coding')) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Combine strings with || with blank values: ', '', ' coding')) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Concat with escape Single quote: ', concat('it''s',' Happy coding'))) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Concat with NOT Null values: ', concat('Happy',' coding'))) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Concat with Null value: ', concat(null,' coding'))) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Concat with blank value: ', concat('',' coding'))) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('Concat with escape Single quote: ', concat('it''s',' Happy coding'))) ;/* dmap converted statement end */
exception
when others then
raise;end;
$body$
language plpgsql
;
