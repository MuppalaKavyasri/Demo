CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEMO"."VW_TEST1" ("COL", "COL2") AS 
  select "COL","COL2" from test1
with read only;
