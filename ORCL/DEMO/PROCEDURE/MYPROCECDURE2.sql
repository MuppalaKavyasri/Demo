CREATE OR REPLACE EDITIONABLE PROCEDURE "DEMO"."MYPROCECDURE2" as
-- PGV moved types start

-- PGV moved types end

    begin
        for i in 1 .. 10000
        loop
            execute immediate 'insert into mytable values ( '||i||')';
        end loop;
    end;

/
