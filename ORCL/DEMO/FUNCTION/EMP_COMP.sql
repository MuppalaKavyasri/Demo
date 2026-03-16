CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."EMP_COMP" (
    p_sal           NUMBER,
    p_comm          NUMBER
) RETURN NUMBER
IS
-- PGV moved types start

-- PGV moved types end

BEGIN
    RETURN (p_sal + NVL(p_comm, 0)) * 24;
END;




/
--Source_DDLS

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."EMP_COMP" (
    p_sal           NUMBER,
    p_comm          NUMBER
) RETURN NUMBER
IS
-- PGV moved types start

-- PGV moved types end

BEGIN
    RETURN (p_sal + NVL(p_comm, 0)) * 24;
END;




/
