-- migrate:up

CREATE TABLE dim_leagues (
  id SERIAL PRIMARY KEY,
  name VARCHAR(40)
);

-- migrate:down

DROP TABLE IF EXISTS dim_leagues;