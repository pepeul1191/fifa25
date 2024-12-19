-- migrate:up

CREATE TABLE dim_foots (
  id SERIAL PRIMARY KEY,
  name VARCHAR(8)
);

-- migrate:down

DROP TABLE IF EXISTS dim_foots;