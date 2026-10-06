CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_SAMPLE2" AS
FUNCTION test_overloading(str1 varchar2) RETURN varchar2; /* First Oracle Overloading function */
FUNCTION test_overloading(str1 varchar2,str2 OUT varchar2) RETURN integer; /* Second Oracle overloading function */
FUNCTION test_return1(str1 varchar2,str2 OUT varchar2) RETURN number; /* Function with return and OUT parameters */
PROCEDURE spr_get_clob_content(p_id IN number); /* CLOB use case */
PROCEDURE SPR_DELETE(PI_EMPLOYEE_ID  IN EMPLOYEE_DETAILS.EMPLOYEE_ID%TYPE,PI_EMPLOYEE_BRANCH_CODE  IN EMPLOYEE_DETAILS.EMPLOYEE_BRANCH_CODE%TYPE); /* Autonoumous transaction */
PROCEDURE proc_nestedtype(p_id number); /* Nested type usecase */
PROCEDURE PROC_RECORD(p_id number); /* Record Type use case */
PROCEDURE PROC_INTEGER_TABLE_TYPE(p_id number); /* Integer Table Type */
END pkg_sample2;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_SAMPLE2" AS 
    FUNCTION test_overloading(
                    str1 varchar2)
                    return varchar2
    AS
    str2 varchar2(20);
    BEGIN
                    str2 := 'Success';
        RETURN str2;
        EXCEPTION
            WHEN others THEN
                RETURN 'error';
    END;
    FUNCTION test_overloading(
                    str1 varchar2,
                    str2 OUT varchar2)
                    return integer
    AS
    num1 integer;
    BEGIN
                    str2 := 'Success';
                    num1 := 100;
        dbms_output.put_line(str2);
        return num1;
        EXCEPTION
            WHEN others THEN
                RETURN 0;
    END;
    FUNCTION test_return1(
            str1 varchar2,str2 OUT varchar2
            )
        return number as
    num1 number;
    BEGIN
            str2 := 'Success';
            num1 := 100;
        dbms_output.put_line(str2);
        return num1;
    END;

procedure spr_get_clob_content(p_id IN number)
AS
     n_index NUMBER :=0 ;                                                         
     n_len         NUMBER := 0; 
     n_offset      NUMBER := 1;                                                    
     n_buf         NUMBER := 32767;                                                
     n_prevlineend NUMBER := 0;                                                    
     row_buffer    VARCHAR2(5000);                                                 
     n_lin_num pls_integer := 1;
     pi_limit NUMBER := 20;
    CURSOR cur_row                                                              
    IS                                                                          
      SELECT rawdata FROM clobdata WHERE id=p_id; 
    c_row CLOB;
    po_row CLOB; 
Begin                                                                                                                               
    OPEN cur_row;                                                               
    LOOP                                                                        
      FETCH cur_row INTO c_row;                                             
      EXIT WHEN cur_row%notfound;                                                      
      IF ( dbms_lob.isopen(c_row) != 1 ) THEN                                   
        dbms_lob.open(c_row, 0);                                                
      End If;                                                                   

      n_len  := Dbms_Lob.Getlength(C_Row);                                      
      WHILE ( n_offset < n_len AND (n_index+1) < pi_limit)                      
      LOOP                                                                      
        --n_index := po_row.COUNT();                                             
        -- not considering the last char for reading                            
        if (Instr(c_row, chr(10) , n_offset)-n_prevlineend-1>0) then            
        n_buf   := Instr(c_row, chr(10) , n_offset)-n_prevlineend-1;            
        else                                                                    
         n_buf :=Dbms_Lob.Getlength(c_row);                                     
         end if;   

         Dbms_Lob.Read(c_row, n_buf, n_offset, row_buffer);                      
        -- incrementing the last char position                                  
        n_buf := n_buf + 1;                                                                                
        Po_Row := Row_Buffer;  
        insert into clobdatatarget values (n_lin_num,Po_Row);
        n_offset                  := n_offset      + n_buf;                     
        n_prevlineend             := n_prevlineend + n_buf;                     
        n_lin_num                 := n_lin_num     + 1;                                                               
        --DBMS_OUTPUT.PUT_LINE('FINAL CLOB DATA '|| Po_Row);                    
      END LOOP; 
      COMMIT;
    END LOOP;
END spr_get_clob_content;

PROCEDURE SPR_DELETE (PI_EMPLOYEE_ID  IN EMPLOYEE_DETAILS.EMPLOYEE_ID%TYPE,                   
      PI_EMPLOYEE_BRANCH_CODE  IN EMPLOYEE_DETAILS.EMPLOYEE_BRANCH_CODE%TYPE)                                   
  AS                                                                            
    PRAGMA AUTONOMOUS_TRANSACTION;                                              
  BEGIN                                                                         
   -- DBMS_OUTPUT.PUT_LINE('DELETING FILETYPE...' || PI_FILTYP );               
    DELETE FROM EMPLOYEE_DETAILS WHERE EMPLOYEE_ID=PI_EMPLOYEE_ID AND EMPLOYEE_BRANCH_CODE=PI_EMPLOYEE_BRANCH_CODE;       
    commit;                                                                     
END SPR_DELETE; 

PROCEDURE proc_nestedtype(p_id number)
as
    TYPE test_type IS RECORD (
        id      NUMBER,
        name    VARCHAR2(50)
    );
    type test_type_nest is
    record
    (   p_id      NUMBER,
        p_name     VARCHAR2(50),
        address test_type
     );   
    TYPE test_tbl IS
        TABLE OF test_type INDEX BY BINARY_INTEGER;
    TYPE test_tbl_nest IS
        TABLE OF test_type_nest INDEX BY BINARY_INTEGER;
    v_tab   test_tbl;
    v_rec   test_type;
    v_tab_nest   test_tbl_nest;
    v_rec_nest   test_type_nest;
    CURSOR cr IS
    SELECT
        *
    FROM test where id=p_id;

    i       INTEGER;
BEGIN
    i := 1;
    FOR rec IN cr 
    LOOP
        v_tab(i).id := rec.id;
        v_tab(i).name := rec.name;
   -- dbms_output.put_line(v_tab(i).id);
    i:=i+1;
    END LOOP;
     i := 1;
    FOR rec IN cr 
    LOOP
        v_tab_nest(i).p_id := rec.id+1;
        v_tab_nest(i).p_name := rec.name||'_nest';
        v_tab_nest(i).address := v_tab(i);
    dbms_output.put_line(v_tab_nest(i).p_id);
      dbms_output.put_line(v_tab_nest(i).p_name);
            dbms_output.put_line(v_tab_nest(i).address.id);
             dbms_output.put_line(v_tab_nest(i).address.name);
    i:=i+1;
    END LOOP;
   dbms_output.put_line('count='||v_tab.count);
   dbms_output.put_line('count='||v_tab_nest.count);
END proc_nestedtype;

PROCEDURE PROC_RECORD(p_id number)
as
    TYPE test_type IS RECORD (
        id      NUMBER,
        name    VARCHAR2(50)
    );
    TYPE test_tbl IS
        TABLE OF test_type INDEX BY BINARY_INTEGER;
    v_tab   test_tbl;
    v_rec   test_type;
    CURSOR cr IS
    SELECT
        *
    FROM test;

    i       INTEGER;
BEGIN
    i := 1;
    FOR rec IN cr 
    LOOP
        v_tab(i).id := rec.id;
        v_tab(i).name := rec.name;
    dbms_output.put_line(v_tab(i).id);
       dbms_output.put_line(v_tab(i).name);
    i:=i+1;
    END LOOP;
   dbms_output.put_line('count='||v_tab.count);
    FOR i IN v_tab.first..v_tab.last LOOP 
    dbms_output.put_line('row  '|| v_tab(i).id || v_tab(i).name);

    END LOOP;

END PROC_RECORD;

PROCEDURE PROC_TABLE_ROWTYPE(p_id number)
IS
    TYPE test_tbl IS
        TABLE OF test%rowtype INDEX BY BINARY_INTEGER;
    v_tab   test_tbl;
    i       INTEGER;
BEGIN
    i := 1;
    SELECT id,name
	  BULK COLLECT
		  INTO v_tab
    FROM TEST WHERE ID !=p_id;
   dbms_output.put_line('count='||v_tab.count);
    FOR i IN v_tab.first..v_tab.last LOOP 
    dbms_output.put_line('row'|| v_tab(i).id || v_tab(i).name);                                                    
    END LOOP;
END PROC_TABLE_ROWTYPE;

PROCEDURE PROC_INTEGER_TABLE_TYPE(p_id number)
IS
    TYPE test_tbl IS
        TABLE OF varchar2(50) ;--INDEX BY BINARY_INTEGER;
    v_tab   test_tbl;
    i       INTEGER;
BEGIN
    i := 1;
    SELECT name
	  BULK COLLECT
		  INTO v_tab
    FROM TEST WHERE ID !=p_id;
   dbms_output.put_line('count='||v_tab.count);
    FOR i IN v_tab.first..v_tab.last LOOP 
    dbms_output.put_line('row'||  v_tab(i));                                                    
    END LOOP;
END PROC_INTEGER_TABLE_TYPE;

END pkg_sample2;
/;
