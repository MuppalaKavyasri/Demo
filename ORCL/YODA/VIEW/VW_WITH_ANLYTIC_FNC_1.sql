CREATE OR REPLACE FORCE EDITIONABLE VIEW "YODA"."VW_WITH_ANLYTIC_FNC_1" ("NUMERIC_GRADE", "GRADE_TYPE_CODE", "AVG") AS 
  SELECT numeric_grade, grade_type_code, AVG(numeric_grade)
OVER(PARTITION BY grade_type_code) AS avg FROM grade
WHERE student_id = 254 AND section_id = 87;
