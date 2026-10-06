CREATE OR REPLACE NONEDITIONABLE PROCEDURE "YODA"."TEST_INDEX_BY_TABLE" as
-- PGV moved types start

-- PGV moved types end

TYPE population_type IS TABLE OF NUMBER INDEX BY VARCHAR2(64);
country_population population_type;  continent_population population_type;  howmany NUMBER;  which VARCHAR2(64);
BEGIN  country_population('Greenland') := 100000;  
country_population('Iceland') := 750000;  
howmany := country_population('Greenland');  
dbms_output.put_line('how many - ' || howmany);
continent_population('Australia') := 30000000;  
continent_population('Antarctica') := 1000; -- Creates new entry  continent_population('Antarctica') := 1001; -- Replaces previous value  which := continent_population.FIRST; -- Returns 'Antarctica'-- as that comes first alphabetically.  which := continent_population.LAST; -- Returns 'Australia'
  howmany := continent_population(continent_population.LAST);
-- Returns the value corresponding to the last key, in this
dbms_output.put_line('continent_population(Antarctica) - ' || continent_population('Antarctica'));
dbms_output.put_line('how many - ' || howmany);

-- case the population of Australia.
exception when others THEN
dbms_output.put_line(sqlerrm);
END;
/
