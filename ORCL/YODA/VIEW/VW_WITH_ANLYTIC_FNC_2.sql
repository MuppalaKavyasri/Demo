-- dmap_object_gen_tag : type : view name : vw_with_anlytic_fnc_2
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "vw_with_anlytic_fnc_2"  ("numeric_grade", "rank") as select numeric_grade, rank
from (select numeric_grade,
dense_rank() over ( order by  numeric_grade)
as "rank" from grade
where student_id = 254 and section_id = 87) alias2
where rank <= 3;/* dmap converted statement end */
-- estimed cost of view [ vw_with_anlytic_fnc_2 ]: 1.00;
