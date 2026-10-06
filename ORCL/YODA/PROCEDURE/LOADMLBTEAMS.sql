CREATE OR REPLACE EDITIONABLE PROCEDURE "YODA"."LOADMLBTEAMS" AS
-- PGV moved types start

-- PGV moved types end

  v_div sport_division.short_name%TYPE;

  CURSOR mlb_teams IS
  select distinct decode(TRIM(mlb_team),'AAA','LAA',mlb_team) a_name,
                decode(TRIM(mlb_team_long),'Anaheim Angels', 'Los Angeles Angels',mlb_team_long) l_name
  from mlb_data;

BEGIN
  FOR trec IN mlb_teams LOOP

    CASE
     WHEN trec.a_name IN ('BAL', 'BOS', 'TOR', 'TB', 'NYY')  THEN v_div := 'AL East';
     WHEN trec.a_name IN  ('CLE','DET','KC','CWS','MIN') THEN v_div := 'AL Central';
     WHEN trec.a_name IN  ('TEX','SEA','HOU','OAK','LAA') THEN v_div := 'AL West';
     WHEN trec.a_name IN  ('WSH','MIA','NYM','PHI','ATL')THEN v_div := 'NL East';
     WHEN trec.a_name IN  ('CHC','STL','PIT','MIL','CIN') THEN v_div := 'NL Central';
     WHEN trec.a_name IN  ('COL','SD','LAD','SF','ARI') THEN v_div := 'NL West';
    END CASE;

    insert into sport_team(name,abbreviated_name,sport_type_name,sport_league_short_name,sport_division_short_name)
    values(trec.l_name, trec.a_name, 'baseball','MLB',v_div);
  END LOOP;
END;
/
