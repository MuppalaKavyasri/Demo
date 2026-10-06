-- dmap_object_gen_tag : type : view name : vw_with_anlytic_fnc_1
set search_path = yoda,oracle,dmap_extension,public;/* dmap converted statement start */
create or replace view "vw_with_anlytic_fnc_1"  ("numeric_grade", "grade_type_code", "avg") as select numeric_grade,  grade_type_code,  avg(numeric_grade)
over (partition by grade_type_code) as "avg"  from grade
where student_id = 254 and section_id = 87;/* dmap converted statement end */
-- estimed cost of view [ vw_with_anlytic_fnc_1 ]: 1.00;
