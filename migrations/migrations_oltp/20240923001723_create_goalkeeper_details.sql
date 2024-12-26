-- migrate:up

CREATE TABLE goalkeeper_details (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  diving INTEGER,
  handling INTEGER,
  kicking INTEGER,
  positioning INTEGER,
  reflexes INTEGER,
  player_id	INTEGER NOT NULL,
  FOREIGN KEY (player_id) REFERENCES players (id)
);

-- migrate:down

DROP TABLE IF EXISTS goalkeeper_details;
