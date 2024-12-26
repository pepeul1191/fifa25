-- migrate:up

CREATE TABLE dim_goalkeeper_details (
  id SERIAL PRIMARY KEY,
  diving INTEGER,
  handling INTEGER,
  kicking INTEGER,
  positioning INTEGER,
  reflexes INTEGER
);

-- migrate:down

DROP TABLE IF EXISTS dim_goalkeeper_details;