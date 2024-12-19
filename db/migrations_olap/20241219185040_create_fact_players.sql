-- migrate:up

CREATE TABLE fact_players (
  player_id INTEGER,
  team_id INTEGER,
  position_id INTEGER,
  nation_id INTEGER,
  foot_id INTEGER,
  sex_id INTEGER,
  goalkeeper_detail_id INTEGER,
  league_id INTEGER,
  nation_league_id INTEGER,
  ranking INTEGER,
  overall INTEGER,
  velocity INTEGER,
  shooting INTEGER,
  passing INTEGER,
  dribbling INTEGER,
  defending INTEGER,
  physicality INTEGER,
  FOREIGN KEY (player_id) REFERENCES dim_players(id),
  FOREIGN KEY (team_id) REFERENCES dim_teams(id),
  FOREIGN KEY (position_id) REFERENCES dim_positions(id),
  FOREIGN KEY (nation_id) REFERENCES dim_nations(id),
  FOREIGN KEY (foot_id) REFERENCES dim_foots(id),
  FOREIGN KEY (sex_id) REFERENCES dim_sexs(id),
  FOREIGN KEY (goalkeeper_detail_id) REFERENCES dim_goalkeeper_details(id),
  FOREIGN KEY (league_id) REFERENCES dim_leagues(id),
  FOREIGN KEY (nation_league_id) REFERENCES dim_nations(id)
);

-- migrate:down

DROP TABLE IF EXISTS fact_players;
