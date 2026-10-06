CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."LOADNFLPLAYERS" AS
-- PGV moved types start

-- PGV moved types end

  t_id NUMBER;

  CURSOR nfl_players IS
  SELECT team
        ,name
        ,RTRIM(TRIM(SUBSTR(TRIM(name),1,instr(name,','))),',') l_name
        ,TRIM(LTRIM(TRIM(SUBSTR(TRIM(name),instr(name,','))),',')) f_name
  FROM nfl_data;
BEGIN
  FOR prec IN nfl_players LOOP
    SELECT id INTO t_id FROM sport_team
    WHERE sport_type_name = 'football'
    AND   sport_league_short_name = 'NFL'
    AND   abbreviated_name = prec.team;

    insert into player(sport_team_id, last_name, first_name, full_name)
    values(t_id, prec.l_name, prec.f_name, prec.name);

  END LOOP;
END;
/
