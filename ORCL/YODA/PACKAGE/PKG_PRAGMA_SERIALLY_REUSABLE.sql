CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_PRAGMA_SERIALLY_REUSABLE" 
IS
PRAGMA SERIALLY_REUSABLE;


PROCEDURE  function_1
  (test_id number

  );


PROCEDURE  function_2
  (test_id number

  );

END;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_PRAGMA_SERIALLY_REUSABLE" 
IS
PRAGMA SERIALLY_REUSABLE;

v_char VARCHAR2(20) := 'shared.airline';
v_num number    := 123; 

procedure function_1(test_id number)
IS
begin

dbms_output.put_line( 'v_char-'|| v_char);
dbms_output.put_line( 'v_num-'||v_num);

v_char:='test1';

function_2(0);

end;

procedure function_2(test_id number)
is
begin

dbms_output.put_line( 'v_char-'|| v_char);
dbms_output.put_line( 'v_num-'||v_num);
end;

end pkg_pragma_serially_reusable;
/;
