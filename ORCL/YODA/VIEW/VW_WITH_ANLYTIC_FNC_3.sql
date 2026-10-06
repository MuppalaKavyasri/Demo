-- dmap_object_gen_tag : type : view name : vw_with_anlytic_fnc_3
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "vw_with_anlytic_fnc_3"  ("numeric_grade", "grade_type_code", "occur", "cumavg_over_pk", "partition") as select numeric_grade,  grade_type_code,  grade_code_occurrence as occur,  avg(numeric_grade) over ( order by  student_id,
section_id,  grade_type_code,
grade_code_occurrence) as cumavg_over_pk,  avg(numeric_grade) over (partition by
grade_type_code
order by  student_id,  section_id,  grade_type_code,  grade_code_occurrence) as "partition"
from grade
where student_id = 254 and section_id = 87;/* dmap converted statement end */
-- estimed cost of view [ vw_with_anlytic_fnc_3 ]: 1.00;
