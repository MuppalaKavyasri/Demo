CREATE OR REPLACE FORCE EDITIONABLE VIEW "YODA"."VW_WITH_ANLYTIC_FNC_5" ("COUNT(*)", "MIN", "MAX", "LOWEST", "HIGHEST") AS 
  SELECT "COUNT(*)","MIN","MAX","LOWEST","HIGHEST" FROM(SELECT COUNT(*),
MIN(numeric_grade) min, MAX(numeric_grade) max, COUNT(*) KEEP (DENSE_RANK FIRST ORDER BY numeric_grade)
lowest,
COUNT(*) KEEP (DENSE_RANK LAST ORDER BY numeric_grade)
highest FROM grade g
WHERE section_id = 99)a;
