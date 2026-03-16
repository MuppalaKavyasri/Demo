create or replace  function  demo."get_applicant_status"  (p_applicant_id numeric) returns varchar as $body$
declare
status varchar(50);
begin
-- retrieve the status of the applicant based on applicant_id
select status into strict status from e2edemo.naukri_job_applicants where applicant_id = p_applicant_id;
-- return the status
return status;end;
--dmap converted function completed
$body$
language plpgsql
stable;
