-- migrate:up

CREATE TABLE dim_players (
  id SERIAL PRIMARY KEY,
  name VARCHAR(60),
  weak_foot INTEGER,
  skill_moves INTEGER,
  height INTEGER,
  weight INTEGER,
  age INTEGER,
  url VARCHAR(120)
);

-- migrate:down

DROP TABLE IF EXISTS dim_players;