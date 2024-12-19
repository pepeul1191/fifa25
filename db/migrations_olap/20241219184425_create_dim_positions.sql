-- migrate:up

CREATE TABLE dim_positions (
  id SERIAL PRIMARY KEY,
  name VARCHAR(4)
);

-- migrate:down

DROP TABLE IF EXISTS dim_positions;