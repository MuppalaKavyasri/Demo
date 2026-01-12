CREATE OR REPLACE NONEDITIONABLE PROCEDURE "DEMO"."ACCELYA_RT_CALC" (x_intdoc_id IN number) as
-- PGV moved types end

                        cnt   number:=0;
                        v_src varchar2(5) ;
                        v_dst  varchar2(5) ;
                        v_nxt_dst varchar2(5) ;
                        v_docmst_id number;
                        v_loop_cnt number;
                 Begin
                        select orig,dest,docmst_id
                        into   v_src,v_dst,v_docmst_id
                        from   cra_docmst a
                        where  a.intdoc_id = x_intdoc_id;
                        --where  docmst_id=x_docmst_id;
                  For x in 1..25
                  loop
                    select count(1) into v_loop_cnt
                    from   cra_bkg
                    where  docmst_id = v_docmst_id
                    and    nvl(route_seq,0) =0;
                  If v_loop_cnt >0 then
                       dbms_output.put_line('Runseq X- ......'||x);
                        Declare
-- PGV moved types start

                              Cursor c1 is
                              select seg_dep,seg_arr,route_seq ,docmst_id
                              from   cra_bkg
                              where  docmst_id = v_docmst_id;
                         Begin
                         For n in c1
                            loop
                                If n.seg_dep = v_src and n.route_seq is null then
                                        update cra_bkg set route_seq=cnt+1
                                        where  seg_dep = v_src
                                        and    route_seq is null
                                        and    docmst_id=n.docmst_id;
--                                        and rownum=1;--commented on 08-DEC-20 for AMOV issue
                                        v_nxt_dst :=n.seg_arr;
                                        cnt := cnt+1;
                                End if;
                                If n.seg_dep = v_nxt_dst then
                                        update cra_bkg set route_seq=cnt+1
                                        where  seg_dep = v_nxt_dst
                                        and    route_seq is null
                                        and    docmst_id=n.docmst_id;
--                                        and rownum=1;--commented on 08-DEC-20 for AMOV issue
                                        v_nxt_dst :=n.seg_arr;
                                       cnt := cnt+1;
                                End if;
                                commit;
                                dbms_output.put_line('Next_dest...'||v_nxt_dst);
                            End loop;
                          End;
                      End if;
                    End loop;
                    end;
/
