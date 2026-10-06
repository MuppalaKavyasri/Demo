CREATE OR REPLACE EDITIONABLE TYPE "YODA"."TABLE_STATS_TYP" 
                                         
AS OBJECT 
(
    insertedCount int,
    updatedCount  int,
    deletedCount  int,
    unchangedCount int,
    startTm date,
    completionTm date,
    
    MEMBER PROCEDURE RESET,
    
    MEMBER PROCEDURE PLUS_EQUAL( value2 IN TABLE_STATS_TYP ),
    
    MEMBER FUNCTION TO_STRING RETURN  VARCHAR2,
    
    STATIC FUNCTION CREATE_NEW RETURN  TABLE_STATS_TYP
);
/
CREATE OR REPLACE EDITIONABLE TYPE BODY "YODA"."TABLE_STATS_TYP" 
AS
    STATIC FUNCTION CREATE_NEW RETURN  TABLE_STATS_TYP IS
    BEGIN
    	return TABLE_STATS_TYP(
    		0,
    		0,
    		0,
    		0,
    		sysdate,
    		null
       );
    END CREATE_NEW;

    MEMBER PROCEDURE RESET IS
    BEGIN
    	insertedCount := 0;
    	updatedCount := 0;
    	deletedCount := 0;
    	unchangedCount := 0;
    	startTm := null;
    	completionTm := null;
    END RESET;

    MEMBER PROCEDURE PLUS_EQUAL( value2 IN TABLE_STATS_TYP ) IS
    BEGIN
    	insertedCount  := insertedCount  + value2.insertedCount;
    	updatedCount   := updatedCount   + value2.updatedCount;
    	deletedCount   := deletedCount   + value2.deletedCount;
    	unchangedCount := unchangedCount + value2.unchangedCount;
    END PLUS_EQUAL;


    MEMBER FUNCTION TO_STRING 
    RETURN  VARCHAR2 IS
    BEGIN
    	RETURN
    	        'Successfully '
    		||  '  inserted => ' || insertedCount
    		||  ', updated => ' || updatedCount
    		||  ', deleted => ' || deletedCount
    		||  ', unchanged => ' || unchangedCount;
    END TO_STRING;

END;
/
