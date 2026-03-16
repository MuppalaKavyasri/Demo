CREATE OR REPLACE NONEDITIONABLE PACKAGE "DEMO"."PACK2" is
function rmt(x in number) return number;
procedure rmt1(x in number);
END;
/
CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "DEMO"."PACK2" is
function rmt(x in number) return number is
begin
return (x*x);
end;

procedure rmt1(x in number) is
begin
dbms_output.put_line(x*x);
end;
end;


/;
