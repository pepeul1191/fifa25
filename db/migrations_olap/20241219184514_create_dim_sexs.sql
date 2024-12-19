-- migrate:up

CREATE TABLE dim_sexs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(7)
);

-- migrate:down

DROP TABLE IF EXISTS dim_sexs;