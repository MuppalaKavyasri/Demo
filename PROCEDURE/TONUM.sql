CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."TONUM" ( i in out NUMBER) as
-- PGV moved types start

-- PGV moved types end

begin
select TO_NUMBER(12345.555) INTO i FROM DUAL;
end ;

/
