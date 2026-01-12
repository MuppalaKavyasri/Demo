CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."ADDERP" (id IN NUMBER, name IN VARCHAR2)   
is
-- PGV moved types start

-- PGV moved types end
     
n3 number(8);  
name1 VARCHAR2(20);
begin
n3 := id +1;
name1 := name;
insert into demo.test2 values(n3,name1);

end;
/
