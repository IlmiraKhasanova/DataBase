1.1 
INSERT INTO house
VALUES (NULL, "38", "RF");

1.2
INSERT INTO contacting_realtor ( reason, price )
VALUES ("Dfk", "100000");

1.3
INSERT INTO apartment ( id_client )
SELECT (id_client)
FROM client;


2.1
DELETE *
FROM client;

2.2
DELETE *
FROM resident
WHERE name="Vasya";

2.3
TRUNCATE TABLE house;

3.1
UPDATE apartment SET housing_space = "metr";

3.2
UPDATE client SET adress = "Annikova"
WHERE name = "Ivan Petrov";

3.3
UPDATE apartment SET id_apartment = 3, id_client = 5 WHERE number_apartment = 27;

4.1 
SELECT number_house, year_of_construction
FROM house;

4.2
SELECT *
FROM house;

4.3
SELECT * FROM client WHERE name = "Pavel";