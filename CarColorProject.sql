CREATE DATABASE CarColorProject;
USE CarColorProject;

--- Car Section

CREATE TABLE Cars
(
CarNo int,
CarBrand varchar(8000)
);

INSERT INTO Cars VALUES (1, 'BMW');
INSERT INTO Cars VALUES (2, 'Volvo');
INSERT INTO Cars VALUES (3, 'Audi');
INSERT INTO Cars VALUES (4, 'Nissan');
INSERT INTO Cars VALUES (5, 'Tofas');
INSERT INTO Cars VALUES (6, 'Toyota');
INSERT INTO Cars VALUES (7, 'Ferrari');
INSERT INTO Cars VALUES (8, 'Fiat');

SELECT * FROM Cars
ORDER BY CarNo;

--- Color Section

CREATE TABLE Colors
(
ColorNo int,
ColorName varchar(8000)
);

INSERT INTO Colors VALUES (4, 'Red');
INSERT INTO Colors VALUES (7, 'Red');
INSERT INTO Colors VALUES (8, 'Red');

INSERT INTO Colors VALUES (2, 'Green');
INSERT INTO Colors VALUES (4, 'Green');

INSERT INTO Colors VALUES (3, 'Yellow');

INSERT INTO Colors VALUES (1, 'Black');
INSERT INTO Colors VALUES (2, 'Black');
INSERT INTO Colors VALUES (3, 'Black');
INSERT INTO Colors VALUES (4, 'Black');
INSERT INTO Colors VALUES (5, 'Black');
INSERT INTO Colors VALUES (6, 'Black');
INSERT INTO Colors VALUES (7, 'Black');
INSERT INTO Colors VALUES (8, 'Black');

INSERT INTO Colors VALUES(1, 'Gray');
INSERT INTO Colors VALUES(4, 'Gray');
INSERT INTO Colors VALUES(6, 'Gray');
INSERT INTO Colors VALUES(7, 'Gray');

INSERT INTO Colors VALUES (6, 'Purple');

INSERT INTO Colors VALUES (2, 'White');
INSERT INTO Colors VALUES (3, 'White');
INSERT INTO Colors VALUES (4, 'White');
INSERT INTO Colors VALUES (5, 'White');
INSERT INTO Colors VALUES (6, 'White');
INSERT INTO Colors VALUES (7, 'White');
INSERT INTO Colors VALUES (8, 'White');

SELECT * FROM Colors
Order by ColorNo;

SELECT Cars.CarBrand, Colors.ColorName 
FROM Cars
JOIN Colors
ON Cars.CarNo = Colors.ColorNo;




