CREATE TABLE dim_players (
    id INT PRIMARY KEY, -- SERIAL en PostgreSQL equivale a IDENTITY en SQL Server
    name NVARCHAR(60), -- Se usa NVARCHAR para soportar caracteres Unicode
    weak_foot INT,
    skill_moves INT,
    height INT,
    weight INT,
    age INT,
    url NVARCHAR(120) -- NVARCHAR para cadenas de texto con soporte Unicode
);

CREATE TABLE dim_teams (
    id INT PRIMARY KEY, -- SERIAL en PostgreSQL equivale a IDENTITY en SQL Server
    name NVARCHAR(40) -- NVARCHAR para soporte de Unicode
);

CREATE TABLE dim_positions (
  id INT PRIMARY KEY,
  name NVARCHAR(4)
);

CREATE TABLE dim_foots (
    id INT PRIMARY KEY, -- SERIAL en PostgreSQL se convierte en IDENTITY en SQL Server
    name NVARCHAR(8) -- NVARCHAR para soporte de Unicode; usar VARCHAR si Unicode no es necesario
);

CREATE TABLE dim_sexs (
    id INT PRIMARY KEY, -- SERIAL en PostgreSQL se convierte en IDENTITY en SQL Server
    name NVARCHAR(7) -- NVARCHAR para soporte de Unicode; usar VARCHAR si Unicode no es necesario
);

CREATE TABLE dim_nations (
    id INT PRIMARY KEY, -- SERIAL en PostgreSQL se convierte en IDENTITY en SQL Server
    name NVARCHAR(80) -- NVARCHAR para soporte de Unicode; usar VARCHAR si Unicode no es necesario
);

CREATE TABLE dim_nation_leagues (
    id INT PRIMARY KEY, -- SERIAL en PostgreSQL se convierte en IDENTITY en SQL Server
    name NVARCHAR(80) -- NVARCHAR para soporte de Unicode; usar VARCHAR si Unicode no es necesario
);

CREATE TABLE dim_goalkeeper_details (
    id INT PRIMARY KEY, -- SERIAL en PostgreSQL equivale a IDENTITY en SQL Server
    diving INT, -- INTEGER se convierte en INT en SQL Server
    handling INT,
    kicking INT,
    positioning INT,
    reflexes INT
);

CREATE TABLE dim_leagues (
    id INT PRIMARY KEY, -- SERIAL en PostgreSQL se convierte en IDENTITY en SQL Server
    name NVARCHAR(40) -- NVARCHAR para soporte Unicode; usar VARCHAR si Unicode no es necesario
);

DELETE FROM dim_leagues DBCC CHECKIDENT('dim_leagues', reseed,0)

CREATE TABLE fact_players (
    player_id INT, -- INTEGER se convierte en INT en SQL Server
    team_id INT,
    position_id INT,
    nation_id INT,
    foot_id INT,
    sex_id INT,
    goalkeeper_detail_id INT NULL,
    league_id INT,
    nation_league_id INT,
    ranking INT,
    overall INT,
    velocity INT,
    shooting INT,
    passing INT,
    dribbling INT,
    defending INT,
    physicality INT,
    CONSTRAINT fk_player FOREIGN KEY (player_id) REFERENCES dim_players(id),
    CONSTRAINT fk_team FOREIGN KEY (team_id) REFERENCES dim_teams(id),
    CONSTRAINT fk_position FOREIGN KEY (position_id) REFERENCES dim_positions(id),
    CONSTRAINT fk_nation FOREIGN KEY (nation_id) REFERENCES dim_nations(id),
    CONSTRAINT fk_foot FOREIGN KEY (foot_id) REFERENCES dim_foots(id),
    CONSTRAINT fk_sex FOREIGN KEY (sex_id) REFERENCES dim_sexs(id),
    CONSTRAINT fk_goalkeeper FOREIGN KEY (goalkeeper_detail_id) REFERENCES dim_goalkeeper_details(id),
    CONSTRAINT fk_league FOREIGN KEY (league_id) REFERENCES dim_leagues(id),
    CONSTRAINT fk_nation_league FOREIGN KEY (nation_league_id) REFERENCES dim_nation_leagues(id)
);

DELETE FROM fact_players;