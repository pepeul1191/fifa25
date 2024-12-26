CREATE TABLE dim_locations (
  id INT PRIMARY KEY,
  league_name	NVARCHAR(80),
  nation_league_name	NVARCHAR(80),
  team_name	NVARCHAR(80),
  nation NVARCHAR(100)
);

CREATE TABLE dim_skills (
  id INT PRIMARY KEY,
  foot	NVARCHAR(10),
  position NVARCHAR(40),
  extra_positions NVARCHAR(200),
  styles	NVARCHAR(200)
);

CREATE TABLE dim_players (
  id INT PRIMARY KEY,
  name NVARCHAR(60),
  sex NVARCHAR(10),
  url NVARCHAR(120)
);

CREATE TABLE fact_events (
    location_id INT,
    player_id INT, -- INTEGER se convierte en INT en SQL Server
    skill_id INT,
    overall INT,
    velocity INT,
    shooting INT,
    passing INT,
    dribbling INT,
    defending INT,
    physicality INT,
    diving INT, -- INTEGER se convierte en INT en SQL Server
    handling INT,
    kicking INT,
    positioning INT,
    reflexes INT,
    skill_moves INT,
    weak_foot INT,
    ranking INT,
    height INTEGER,
    weight INTEGER,
    age INTEGER,
    CONSTRAINT fk_location FOREIGN KEY (location_id) REFERENCES dim_locations(id),
    CONSTRAINT fk_player FOREIGN KEY (player_id) REFERENCES dim_players(id),
    CONSTRAINT fk_skill FOREIGN KEY (skill_id) REFERENCES dim_skills(id),
);

DROP TABLE fact_events;
DROP TABLE dim_locations;
DROP TABLE dim_skills;
DROP TABLE dim_players;