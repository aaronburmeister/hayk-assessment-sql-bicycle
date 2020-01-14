DROP TABLE IF EXISTS owners;
DROP TABLE IF EXISTS bicycles;

-- Create a table, `owners`
CREATE TABLE owners (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER
);

-- Create a related table, `bicycles`
CREATE TABLE bicycles (
    id INTEGER PRIMARY KEY,
    color TEXT,
    owner_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);

-- Create 3 bicycles and 2 owners
INSERT INTO owners(name, age) VALUES ("Aaron", 28);
INSERT INTO owners(name, age) VALUES ("Corey", 31);
INSERT INTO bicycles(owner_id, color) VALUES (1, "Blue");
INSERT INTO bicycles(owner_id, color) VALUES (2, "Yellow");
INSERT INTO bicycles(owner_id, color) VALUES (2, "Green");

-- Update the properties of one of the bicycles
UPDATE bicycles SET color = "Black" WHERE color = "Yellow";

-- List all the bicycles
SELECT * FROM bicycles;

-- List all the bicycles with their owners
SELECT * FROM bicycles inner join owners on bicycles.owner_id = owners;

-- Delete one of the bicycles
DELETE FROM bicycles WHERE color = "Green";

