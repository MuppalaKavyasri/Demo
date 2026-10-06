create or replace procedure yoda."test_index_by_table"  () as $body$
declare
/* type population_type is table of numeric index by varchar(64);
 */
country_population NUMERIC[];

continent_population hstore;

howmany numeric;

which varchar(64);


begin 
 

country_population['Greenland'] := 100000;
country_population['Iceland'] := 750000;
howmany := country_population['Greenland'];/* dmap converted statement start */
perform dbms_output.put_line( concat('how many - ', howmany)) ;/* dmap converted statement end */
continent_population['Australia'] := 30000000;
continent_population['Antarctica'] := 1000; -- creates new entry  continent_population['Antarctica'] := 1001; -- replaces previous value  which := ARRAY_lower(akeys(continent_population), 1); -- returns 'Antarctica'-- as that comes first alphabetically.  which := ARRAY_upper(akeys(continent_population), 1); -- returns 'Australia'
howmany := continent_population[ARRAY_upper(akeys(continent_population), 1)];/* dmap converted statement start */
-- returns the value corresponding to the last key, in this
perform dbms_output.put_line( concat('continent_population[Antarctica] - ', continent_population['Antarctica'])) ;/* dmap converted statement end *//* dmap converted statement start */
perform dbms_output.put_line( concat('how many - ', howmany)) ;/* dmap converted statement end */
-- case the population of australia.
exception when others then
perform dbms_output.put_line(sqlerrm);end;
$body$
language plpgsql
SECURITY DEFINER
;
