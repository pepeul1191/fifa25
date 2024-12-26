-- Configuración inicial para SQL Server
go

SET ANSI_NULLS ON;
SET QUOTED_IDENTIFIER ON;
SET ANSI_PADDING ON;
go

-- Tabla `play_styles`
CREATE TABLE play_styles (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(30) NULL
);
go

-- Tabla `sexs`
CREATE TABLE sexs (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(7) NULL
);
go

-- Tabla `nations`
CREATE TABLE nations (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(40) NULL
);
go

-- Tabla `positions`
CREATE TABLE positions (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(10) NULL
);
go

-- Tabla `foots`
CREATE TABLE foots (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(6) NULL
);
go

-- Tabla `leagues`
CREATE TABLE leagues (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(30) NULL,
  nation_id INT NULL,
  FOREIGN KEY (nation_id) REFERENCES nations(id)
);
go

-- Tabla `teams`
CREATE TABLE teams (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(40) NULL,
  league_id INT NOT NULL,
  FOREIGN KEY (league_id) REFERENCES leagues(id)
);
go

-- Tabla `players`
CREATE TABLE players (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name NVARCHAR(60) NULL,
  ranking INT NULL,
  weak_foot INT NULL,
  skill_moves INT NULL,
  heigth INT NULL,
  weight INT NULL,
  age INT NULL,
  url NVARCHAR(120) NULL,
  foot_id INT NOT NULL,
  sex_id INT NOT NULL,
  position_id INT NOT NULL,
  nation_id INT NOT NULL,
  team_id INT NOT NULL,
  FOREIGN KEY (foot_id) REFERENCES foots(id),
  FOREIGN KEY (sex_id) REFERENCES sexs(id),
  FOREIGN KEY (position_id) REFERENCES positions(id),
  FOREIGN KEY (nation_id) REFERENCES nations(id),
  FOREIGN KEY (team_id) REFERENCES teams(id)
);
go

-- Tabla `common_details`
CREATE TABLE common_details (
  id INT IDENTITY(1,1) PRIMARY KEY,
  overall INT NULL,
  velocity INT NULL,
  shooting INT NULL,
  passing INT NULL,
  dribbling INT NULL,
  defending INT NULL,
  physicality INT NULL,
  player_id INT NOT NULL,
  FOREIGN KEY (player_id) REFERENCES players(id)
);
go

-- Tabla `goalkeeper_details`
CREATE TABLE goalkeeper_details (
  id INT IDENTITY(1,1) PRIMARY KEY,
  diving INT NULL,
  handling INT NULL,
  kicking INT NULL,
  positioning INT NULL,
  reflexes INT NULL,
  player_id INT NOT NULL,
  FOREIGN KEY (player_id) REFERENCES players(id)
);
go

-- Tabla `players_play_styles`
CREATE TABLE players_play_styles (
  id INT IDENTITY(1,1) PRIMARY KEY,
  play_style_id INT NOT NULL,
  player_id INT NOT NULL,
  FOREIGN KEY (play_style_id) REFERENCES play_styles(id),
  FOREIGN KEY (player_id) REFERENCES players(id)
);
go

-- Tabla `players_positions`
CREATE TABLE players_positions (
  id INT IDENTITY(1,1) PRIMARY KEY,
  position_id INT NOT NULL,
  player_id INT NOT NULL,
  FOREIGN KEY (position_id) REFERENCES positions(id),
  FOREIGN KEY (player_id) REFERENCES players(id)
);
go