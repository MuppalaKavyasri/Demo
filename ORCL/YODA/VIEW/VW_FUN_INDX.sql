CREATE OR REPLACE FORCE EDITIONABLE VIEW "YODA"."VW_FUN_INDX" ("AC1", "BC1", "AC2", "BC2") AS 
  Select a.col_1 ac1,b.col_1 bc1,a.col_2 ac2,b.col_2 bc2 from 
test_index_1 a,test_index_2 b where a.col_1=b.col_1 and 
TO_NUMBER(TO_CHAR(a.col_2,'YYYYMMDD'))=TO_NUMBER(TO_CHAR(TRUNC(b.col_4),'YYYYMMDD'));
