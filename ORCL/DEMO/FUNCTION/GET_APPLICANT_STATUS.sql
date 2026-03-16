CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."GET_APPLICANT_STATUS" (p_applicant_id NUMBER) RETURN VARCHAR2 IS
-- PGV moved types start

-- PGV moved types end

    status VARCHAR2(50);
BEGIN
    -- Retrieve the status of the applicant based on applicant_id
    SELECT status INTO status FROM e2edemo.Naukri_Job_Applicants WHERE applicant_id = p_applicant_id;

    -- Return the status
    RETURN status;
END get_applicant_status;
/
--Source_DDLS

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "DEMO"."GET_APPLICANT_STATUS" (p_applicant_id NUMBER) RETURN VARCHAR2 IS
-- PGV moved types start

-- PGV moved types end

    status VARCHAR2(50);
BEGIN
    -- Retrieve the status of the applicant based on applicant_id
    SELECT status INTO status FROM e2edemo.Naukri_Job_Applicants WHERE applicant_id = p_applicant_id;

    -- Return the status
    RETURN status;
END get_applicant_status;
/
