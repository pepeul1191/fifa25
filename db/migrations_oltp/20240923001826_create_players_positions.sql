-- migrate:up

CREATE TABLE players_positions (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  position_id	INTEGER NOT NULL,
  player_id	INTEGER NOT NULL,
  FOREIGN KEY (position_id) REFERENCES positions (id),
  FOREIGN KEY (player_id) REFERENCES players (id)
);

-- migrate:down

DROP TABLE IF EXISTS players_positions;
