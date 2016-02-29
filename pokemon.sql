CREATE TABLE pokemon (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  owner_id INTEGER,

  FOREIGN KEY(owner_id) REFERENCES human(id)
);

CREATE TABLE humans (
  id INTEGER PRIMARY KEY,
  fname VARCHAR(255) NOT NULL,
  lname VARCHAR(255) NOT NULL,
  house_id INTEGER,

  FOREIGN KEY(house_id) REFERENCES human(id)
);

CREATE TABLE houses (
  id INTEGER PRIMARY KEY,
  address VARCHAR(255) NOT NULL
);

INSERT INTO
  houses (id, address)
VALUES
  (1, "Fort Lee"),
  (2, "Pallet Town"),
  (3, "Cerulean City"),
  (4, "Pewter City");

INSERT INTO
  humans (id, fname, lname, house_id)
VALUES
  (1, "Andrew", "Park", 1),
  (2, "Ash", "Ketchum", 2),
  (3, "Misty", "Moon", 3),
  (4, "Brock", "Benson", 4);

INSERT INTO
  pokemon (id, name, owner_id)
VALUES
  (1, "Pikachu", 2),
  (2, "Charizard", 2),
  (2, "Staryu", 3),
  (2, "Psyduck", 3),
  (2, "Geodude", 4),
  (2, "Onix", 4),
  (3, "Gyarados", 1),
  (4, "Treeko", 1),
  (6, "Lugia", NULL);
