create or replace procedure yoda."generateseats"  () as $body$
declare

    
    --seat_tab_del_temp seat[];

seat_tab_del_temp seat[];

loc_cur cursor for
select id, seating_capacity, levels, sections
from sport_location;


/* type seattab is table of seat%rowtype index by integer;
 */
seat_tab seat[];


/* type seattypetab is table of seat_type.name%type index by integer;
 */

seat_type_tab seattypetab;


s_ct integer := 1;


max_rows_per_section integer := 25;


min_rows_per_section integer := 15;


rows     integer;


seats    integer;


s_ref varchar(26) := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';


tot_seats numeric(10);


begin 
 

-- load seat type percentage table
for i in 1..100 loop
case
when  i <= 5             then seat_type_tab[i] := 'luxury';       -- 5% luxury seats
when  5 < i and i <= 35  then seat_type_tab[i] := 'premium';      -- 30% premium seats
when 35 < i and i <= 89  then seat_type_tab[i] := 'standard';     -- 54% standard seats
when 89 < i and i <= 99  then seat_type_tab[i] := 'sub-standard'; -- 10% sub-standard seats
when  i = 100            then seat_type_tab[i] := 'obstructed';   -- 1% obstructed seats
end case;
end loop;
for lrec in loc_cur  loop
tot_seats := 0;
rows     := round(dbms_random.value(min_rows_per_section::numeric, max_rows_per_section));
seats := trunc(lrec.seating_capacity/(lrec.levels*lrec.sections*rows)+1);
for i in 1..lrec.levels loop
for j in 1..lrec.sections loop
for k in 1..rows loop
for l in 1..seats loop
tot_seats := tot_seats +1;
if tot_seats <= lrec.seating_capacity then
seat_tab[s_ct].seat_level := i;
seat_tab[s_ct].seat_section := j;
seat_tab[s_ct].seat_row := oracle.substr(s_ref,k,1);
seat_tab[s_ct].seat := l;
seat_tab[s_ct].sport_location_id := lrec.id;
seat_tab[s_ct].seat_type := seat_type_tab(round(dbms_random.value(1,100)));
s_ct := s_ct +1;
if s_ct >= 1000 then
FOR m IN 1.. coalesce(array_length(seat_tab,1),0)
LOOP
 save exceptions
insert /*+ append */ into seat values seat_tab[m];
s_ct := 1;
seat_tab := seat_tab_del_temp;
end if;
end if;
end loop;
end loop;
end loop;
end loop;
FOR m IN 1.. coalesce(array_length(seat_tab,1),0)
LOOP
 save exceptions
insert into seat values seat_tab[m];
seat_tab := seat_tab_del_temp;
s_ct := 1;
end loop;end;
$body$
language plpgsql
SECURITY DEFINER
;
