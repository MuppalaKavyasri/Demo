CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."LOADMLBPLAYERS" AS
-- PGV moved types start

-- PGV moved types end

  t_id NUMBER;

  CURSOR mlb_players IS
  select distinct
    decode(TRIM(mlb_team_long),'Anaheim Angels', 'Los Angeles Angels',mlb_team_long) t_name
    ,TRIM(mlb_name) name
    ,substr(TRIM(mlb_name),1,instr(mlb_name,' ')) l_name
    ,substr(TRIM(mlb_name),instr(mlb_name,' ')) f_name
  from mlb_data;

BEGIN
  FOR trec IN mlb_players LOOP
    SELECT id INTO t_id FROM sport_team
    WHERE sport_type_name = 'baseball'
    AND   sport_league_short_name = 'MLB'
    AND   name = trec.t_name;

    insert into player(sport_team_id, last_name, first_name, full_name)
    values(t_id, trec.l_name, trec.f_name, trec.name);
  END LOOP;
END;
/
