create or replace procedure demo."infinite_loop_example"  () as $body$
declare
/* dmap converted statement goto label my_label start */

goto_my_label_infinite_flag boolean := true;

/* dmap converted statement goto label my_label end */
counter integer := 0;
begin
begin
perform dbms_output.put_line('Hi: ');
perform dbms_output.put_line('hello: ');
/* dmap converted statement goto label my_label start */

/*goto my_label;*/

begin

    while goto_my_label_infinite_flag loop

    goto_my_label_infinite_flag:= false;

        begin

    null;

end;

counter := counter + 1;

        perform dbms_output.put_line( concat('Counter: ', counter)) ;

        if counter >= 10 then
            
            begin

    null;

end;

return;

        end if;

        
goto_my_label_infinite_flag := true;

continue;

        
end loop;

end;

perform dbms_output.put_line('END OF BEGIN');

--<<end_of_program>>
begin
    null;
end;
--end;
return; 
/* dmap converted statement goto label my_label end */
perform dbms_output.put_line('Hi: ');
<<my_label>>

/* dmap converted statement goto label my_label start */

while goto_my_label_infinite_flag loop

	goto_my_label_infinite_flag:= false;
 
/* dmap converted statement goto label my_label end */
begin
 
null;
end;
counter := counter + 1;
/* dmap converted statement start */
perform dbms_output.put_line( concat('Counter: ', counter)) ;
/* dmap converted statement end */
-- exit the loop if counter exceeds 10
if counter >= 10 then
/* dmap converted statement goto label end_of_program start */

/*goto end_of_program;*/

begin

    null;

end;

return;
 
/* dmap converted statement goto label end_of_program end */
end if;
-- jump back to the beginning of the loop
/* dmap converted statement goto label my_label start */

/*goto my_label;*/

goto_my_label_infinite_flag := true;

continue;

/* dmap converted statement goto label my_label end */
/* dmap converted statement goto label my_label start */

end loop;

/* dmap converted statement goto label my_label end */

end;
perform dbms_output.put_line('END OF BEGIN');
<<end_of_program>>
begin
 
null;
end;
end;
$body$
language plpgsql
;
