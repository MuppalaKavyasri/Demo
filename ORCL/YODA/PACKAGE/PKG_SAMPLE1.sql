CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_SAMPLE1" AS
    -- User-defined record type
    TYPE zip_record IS RECORD
        (zip   VARCHAR2(5),
        city  VARCHAR2(25),
        state VARCHAR2(2));
    -- Result-cached function
    FUNCTION get_zip_info (in_zip VARCHAR2) RETURN zip_record; /* Sample for No_DATA_FOUND Exception */ 
    FUNCTION student_info(in_v_student_id NUMBER) RETURN VARCHAR; /* Sample for TOO_MANY_ROWS Exception */ 
    FUNCTION student_info_usrdefnd_exc(in_v_student_id NUMBER) RETURN NUMBER; /* Sample for user defined Exception */ 
    PROCEDURE function_1(test_id number); /* Global Package variable use case */
    PROCEDURE function_2(test_id number); /* Global Package variable use case */
    PROCEDURE test_dynamic_query(id number); /* Dynamic Sql usecase */
    PROCEDURE bulk_load_proc(p_id number);   /* Bulk Load usecase */
    PROCEDURE merge_test_proc(p_id number);  /* Merge Statement usecase */
END pkg_sample1;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_SAMPLE1" AS 
    v_char1 VARCHAR2(20) := 'shared.airline';
    v_num number    := 123; 
    FUNCTION get_zip_info (in_zip VARCHAR2) RETURN zip_record
    IS
    rec zip_record;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('The input Zip Code is : '||in_zip);
    SELECT zip, city, state
        INTO rec
        FROM zipcode
        WHERE zip = in_zip;
    RETURN rec;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO_DATA_FOUND exception occured');
        RETURN null;
    WHEN OTHERS THEN 
        raise_application_error(-20001,'An error was encountered - '||SQLCODE||' -ERROR- '||SQLERRM);
    END get_zip_info;
    FUNCTION student_info(in_v_student_id NUMBER) RETURN VARCHAR
    IS
    p_v_enrolled VARCHAR(10) := 'NO';
    BEGIN
    DBMS_OUTPUT.PUT_LINE('Check if the student is enrolled');
    SELECT 'YES'
        INTO p_v_enrolled
        FROM enrollment
        WHERE student_id = in_v_student_id;
        DBMS_OUTPUT.PUT_LINE ('The student is enrolled into one course');
        RETURN p_v_enrolled;
    EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE ('NO_DATA_FOUND -- The student is not enrolled');
        RETURN null;
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE
            ('TOO_MANY_ROWS -- The student is enrolled in too many courses');
            RETURN null;
    END student_info;

    FUNCTION student_info_usrdefnd_exc(in_v_student_id NUMBER) RETURN NUMBER
    IS
    v_total_courses NUMBER;
    e_invalid_id    EXCEPTION;
    BEGIN
    IF in_v_student_id < 0 THEN
        RAISE e_invalid_id;
    ELSE
        SELECT COUNT(*)
            INTO v_total_courses
            FROM enrollment
        WHERE student_id = in_v_student_id;
        DBMS_OUTPUT.PUT_LINE ('The student is registered for '||v_total_courses||' courses');
        RETURN v_total_courses;
    END IF;
    DBMS_OUTPUT.PUT_LINE ('No exception has been raised');
    EXCEPTION
    WHEN e_invalid_id THEN
        DBMS_OUTPUT.PUT_LINE ('An id cannot be negative');
        RETURN null;
    END student_info_usrdefnd_exc;
    procedure function_1(test_id number)
    IS
    begin
    dbms_output.put_line( 'v_char-'|| v_char1);
    dbms_output.put_line( 'v_num-'||v_num);
    v_char1:='test1';
    function_2(0);
    end;

    procedure function_2(test_id number)
    is
    begin
    dbms_output.put_line( 'v_char-'|| v_char1);
    dbms_output.put_line( 'v_num-'||v_num);
    end;

    PROCEDURE test_dynamic_query          
    (id number)
    IS
    v_record employee_details_new%rowtype;
    v_sql varchar2(4000);
    empid number:=1;
    empname varchar2(10) :='ajay';
    v_date date:=sysdate+1;
    v_table varchar(50);
    begin
    select table_name into v_table from tables_info where lower(table_name) like '%employee_details_';
    EXECUTE IMMEDIATE   'update' ||  v_table ||' set employee_name =:empname,
                                                    employee_id=:empid,
                                                    employee_mobile_number= nvl(employee_mobile_number,999999999),
                                                    employee_branch_code= decode(employee_branch_code,1,''Accounts'',2,''Support'',3,''IT'',''others''),
                                                    employee_join_date= sysdate'|| 
                                                    'where employee_join_date=:v_date'  
                                                    USING empid, empname, v_date;
    END ;

    procedure BULK_LOAD_PROC
    (
    p_id number
    )
    as
    type emp_info_type is  table of employee%rowtype;
    emp_info_type_tbl emp_info_type;
    begin
                select e.emp_id,
                    e.emp_name,
                    e.email_id,
                    e.date_of_birth,
                    e.joining_date,
                    e.salary,
                    e.comm,
                    e.department,
                    e.mobile_no,
                    e.address
                    bulk collect into emp_info_type_tbl
                    from employee e
                where e.emp_id=p_id;
    forall I in 1 ..emp_info_type_tbl.count  
    insert into employee_bkp 
            (
                emp_id
                ) 
                VALUES
                (
                emp_info_type_tbl(i).emp_id
                );
    exception
    when others then
    rollback;	
    raise;
    end BULK_LOAD_PROC;
    procedure Merge_test_proc
    (
    p_id number
    )
    as
    BEGIN
    MERGE INTO dest_tab a
        USING source_tab b
        ON (a.object_id = b.object_id)
        WHEN MATCHED THEN
        UPDATE SET
            owner       = b.owner,
            object_name = b.object_name,
            object_type = b.object_type
        WHEN NOT MATCHED THEN
        INSERT (object_id, owner, object_name, object_type)
        VALUES (b.object_id, b.owner, b.object_name, b.object_type);
    exception
    when others then
    raise;
    end;
END pkg_sample1;
/;
