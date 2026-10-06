CREATE OR REPLACE EDITIONABLE PACKAGE "YODA"."PKG_COLLECTION_SAMPLE" AS
    PROCEDURE sp_bulk_collect; /* Bulk collect use case */
    PROCEDURE sp_composite_collection; /*  composite collection use case */
    PROCEDURE sp_nested_comp_collection_1; /* nested composite collection  usecase */
    PROCEDURE sp_nested_comp_collection_2; /* nested composite collection  usecase */
    PROCEDURE sp_multi_dim_collection;   /* multi dimensional collection usecase */
END pkg_collection_sample;
/
CREATE OR REPLACE EDITIONABLE PACKAGE BODY "YODA"."PKG_COLLECTION_SAMPLE" AS 

PROCEDURE sp_bulk_collect IS
/* Declaring the collection type */
    TYPE test_tbl_typ IS TABLE OF VARCHAR2(20) INDEX BY BINARY_INTEGER; 

/* Declaring the collection variable */
    tbl_test   test_tbl_typ;

    CURSOR my_cur_test IS SELECT name FROM test_c1;

BEGIN
/* Populate the array using BULK COLLECT that retrieves all rows in a single FETCH, getting rid of row-by-row fetch in loop. */

    OPEN my_cur_test;
    FETCH my_cur_test BULK COLLECT INTO tbl_test;
    CLOSE my_cur_test;

/* Accessing the collection type - Before Modify */
    FOR i IN tbl_test.FIRST .. tbl_test.LAST 
    LOOP
        dbms_output.put_line('Before Modify- Row- '|| i || ': is '||tbl_test(i));
    END LOOP;

/* Modifying collection element values */
    tbl_test(2) := 'Program1';

/* Accessing the collection type – After Modify */
    FOR i IN tbl_test.FIRST .. tbl_test.LAST 
    LOOP
        dbms_output.put_line('After Modify- Row- '|| i || ': is '||tbl_test(i));
    END LOOP;

   dbms_output.put_line('Program executed successfully.');
END;



PROCEDURE sp_composite_collection IS
/* Creating a type with 2 columns */
    TYPE my_test_typ IS RECORD (
        id      NUMBER,
        name    VARCHAR2(50)
    );

/* Declaring a composite collection */
    TYPE test_tbl_typ IS TABLE OF my_test_typ INDEX BY BINARY_INTEGER; 
    tbl_test   test_tbl_typ;

    CURSOR my_cur_test IS SELECT id, name FROM test_c1;    
BEGIN
    OPEN my_cur_test;

/* Populate the array using BULK COLLECT that retrieves all rows in a single FETCH, getting rid of row-by-row fetch in loop. */

    FETCH my_cur_test BULK COLLECT INTO tbl_test;

    CLOSE my_cur_test;

/* Accessing the collection type - Before Modify */
    FOR i IN tbl_test.FIRST .. tbl_test.LAST 
    LOOP
        dbms_output.put_line('Before Modify- Row- '|| i || ': ' ||tbl_test(i).id ||' is '||tbl_test(i).name);
    END LOOP;

/* Modifying the value of array elements */
    tbl_test(1).name  := 'Example1-Test';
    tbl_test(2).id    := 222222;
    tbl_test(2).name  := 'Example2-Test';

/* Accessing the collection type - After Modify */
    FOR i IN tbl_test.FIRST .. tbl_test.LAST 
    LOOP
        dbms_output.put_line('After Modify- Row- '|| i || ': ' ||tbl_test(i).id ||' is '||tbl_test(i).name);
    END LOOP;
   dbms_output.put_line('Program executed successfully.');

END;



PROCEDURE sp_nested_comp_collection_1  IS
    TYPE my_test_addr IS RECORD (
        house_addr  VARCHAR2(50),
        street      VARCHAR2(50),
        city        VARCHAR2(50)
    );

    TYPE my_test_typ_3 IS RECORD (
        id         INTEGER,
        name       VARCHAR2(50),
        address    my_test_addr
    );

    TYPE my_test_tbl_3 IS TABLE OF my_test_typ_3 INDEX BY BINARY_INTEGER;

    v_my_test_tbl   my_test_tbl_3;

    i INTEGER := 1;

BEGIN
	v_my_test_tbl(1).id   := 101010;
	v_my_test_tbl(1).name := 'Peter';
	v_my_test_tbl(1).address.house_addr := '56B, Block A';
	v_my_test_tbl(1).address.street := 'Jones Street';
	v_my_test_tbl(1).address.city := 'Manhattan';

	v_my_test_tbl(2).id   := 202020;
	v_my_test_tbl(2).name := 'Willard';
	v_my_test_tbl(2).address.house_addr := '4525 Science Center';
	v_my_test_tbl(2).address.street := NULL;
	v_my_test_tbl(2).address.city := 'Fall City, Washington';

	v_my_test_tbl(3).id      := 303030;
	v_my_test_tbl(3).name    := 'Andrew';
	v_my_test_tbl(3).address := NULL;

    FOR rec IN v_my_test_tbl.FIRST .. v_my_test_tbl.LAST
    LOOP
        dbms_output.put_line('Element- '||i||': ID='||v_my_test_tbl(i).id||', Name='||v_my_test_tbl(i).name||' is staying at '||v_my_test_tbl(i).address.house_addr||','||v_my_test_tbl(i).address.street||','||v_my_test_tbl(i).address.city);
        i:=i+1;
    END LOOP;
   dbms_output.put_line('Program executed successfully.');
END;


PROCEDURE sp_nested_comp_collection_2  IS

    TYPE tbl_aa IS TABLE OF DATE INDEX BY PLS_INTEGER;

    TYPE tbl_bb_map IS TABLE OF tbl_aa INDEX BY PLS_INTEGER;

    v_bb    tbl_bb_map;

    i INTEGER := 1;

BEGIN
/* Populate the collection. */
    FOR i IN 1..5 LOOP
        FOR j IN 1..2 LOOP
            v_bb(i)(j)   := sysdate-i-j;
        END LOOP;
    END LOOP;

/* Accessing the collection type - Before Modify */
    FOR i IN v_bb.FIRST .. v_bb.LAST
    LOOP
        FOR j IN v_bb(i).FIRST .. v_bb(i).LAST
        LOOP
            dbms_output.put_line('Before modify- Element- ('||i||')('||j||'): ID='|| v_bb(i)(j));
        END LOOP;

     END LOOP;

/* Modifying collection element values */
    v_bb(3)(2) := '22-JAN-2022';

/* Accessing the collection type – After Modify */
    FOR i IN v_bb.FIRST .. v_bb.LAST
    LOOP
        FOR j IN v_bb(i).FIRST .. v_bb(i).LAST
        LOOP
            dbms_output.put_line('After modify- Element- ('||i||')('||j||'): ID='|| v_bb(i)(j));
    END LOOP;
 END LOOP;

   dbms_output.put_line('Program executed successfully.');
END;


PROCEDURE sp_multi_dim_collection  IS
    TYPE test_type IS RECORD (
        addr_type   VARCHAR2(100),
        addr_val    VARCHAR2(100),
        city        VARCHAR2(50)
    );

    TYPE test_tbl IS TABLE OF test_type INDEX BY BINARY_INTEGER;

    TYPE test_type_nest IS RECORD( 
        id       NUMBER,
        name     VARCHAR2(50),
        address  test_tbl
    );

    TYPE test_tbl_ncc IS TABLE OF test_type_nest INDEX BY BINARY_INTEGER;

    v_ncc   test_tbl_ncc;

BEGIN
/* Populate the collection. */
    v_ncc(1).id   := 10101;
    v_ncc(1).name := 'Williams';
    v_ncc(1).address(1).addr_type := 'Permanent';
    v_ncc(1).address(1).addr_val  :=  '3044 Snowbird Lane';
    v_ncc(1).address(1).city      :=  'Nevada';
    v_ncc(1).address(2).addr_type :=  'Correspondence';
    v_ncc(1).address(2).addr_val  :=  '4390 Leisure Lane';
    v_ncc(1).address(2).city      :=  'Los Angeles';
    v_ncc(1).address(3).addr_type :=  'Office';
    v_ncc(1).address(3).addr_val  :=  '2970 Flinderation Road';
    v_ncc(1).address(3).city      :=  'Illinois';

    v_ncc(2).id   :=  20202;
    v_ncc(2).name :=  'Jackson';

/* Accessing the collection type - Before Modify */
    FOR j IN 1..3 LOOP
        dbms_output.put_line('Element- '|| v_ncc(1).id|| ', name:'|| v_ncc(1).name||', complete address: '|| v_ncc(1).address(J).addr_type||'- '|| v_ncc(1).address(J).addr_val||', '|| v_ncc(1).address(J).city);

     END LOOP;

   dbms_output.put_line('Program executed successfully.');

END;


END pkg_collection_sample;
/;
