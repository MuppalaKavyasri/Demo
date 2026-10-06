CREATE OR REPLACE FORCE EDITIONABLE VIEW "YODA"."VW_WITH_ANLYTIC_FNC_3" ("NUMERIC_GRADE", "GRADE_TYPE_CODE", "OCCUR", "CUMAVG_OVER_PK", "PARTITION") AS 
  SELECT numeric_grade, grade_type_code, grade_code_occurrence AS occur, AVG(numeric_grade) OVER(ORDER BY student_id,
section_id, grade_type_code,
grade_code_occurrence) AS cumavg_over_pk, AVG(numeric_grade) OVER(PARTITION BY
grade_type_code
ORDER BY student_id, section_id, grade_type_code, grade_code_occurrence) AS partition
FROM grade
WHERE student_id = 254 AND section_id = 87;
