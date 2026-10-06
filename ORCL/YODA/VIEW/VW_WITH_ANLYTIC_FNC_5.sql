-- dmap_object_gen_tag : type : view name : vw_with_anlytic_fnc_5
set search_path = yoda,oracle,dmap_extension,public;
create or replace view "vw_with_anlytic_fnc_5"  ("count(*)", min, max, lowest, highest) as select count(*),min,max,lowest,highest from (select count(*),
min(numeric_grade) min, max(numeric_grade) max, count(*) keep(dense_rank first  order by  numeric_grade)
lowest,
count(*) keep(dense_rank last  order by  numeric_grade)
highest from grade g
where section_id = 99)a;
-- estimed cost of view [ vw_with_anlytic_fnc_5 ]: 1.00;
