CREATE DATABASE CarColorProject;
USE CarColorProject;

CREATE TABLE Cars (
CarNo int,
CarBrand varchar(8000)
);

CREATE TABLE Colors (
ColorNo int,
ColorName varchar(8000)
);

INSERT INTO Cars VALUES(1, 'Fiat');
INSERT INTO Cars VALUES(2, 'Volvo');
INSERT INTO Cars VALUES(3, 'Audi');
INSERT INTO Cars VALUES(2, 'Toyota');
INSERT INTO Cars VALUES(2, 'Mercedes');
INSERT INTO Cars VALUES(3, 'BMW');

SELECT * FROM Cars;

INSERT INTO Colors VALUES(1, 'Black');
INSERT INTO Colors VALUES(2, 'Gray');
INSERT INTO Colors VALUES(3, 'White');

SELECT * FROM Colors;

SELECT *
FROM Cars
CROSS JOIN Colors;

UPDATE Cars
SET CarNo = 4
WHERE CarBrand = 'Toyota';

UPDATE Cars
SET CarNo = 5
WHERE CarBrand = 'Mercedes';

UPDATE Cars
SET CarNo = 6
WHERE CarBrand = 'BMW';

