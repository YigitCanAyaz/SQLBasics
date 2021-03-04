CREATE DATABASE Students1;
USE Students1;

CREATE TABLE StudentsInfo
(
StudentID int,
StudentName varchar(8000),
ParentName varchar(8000),
PhoneNumber bigint,
AddressOfStudent varchar(8000),
City varchar(8000),
Country varchar(8000)
);

DROP TABLE StudentsInfo; /* deleting table */

DROP DATABASE Students; /* deleting database */

ALTER TABLE StudentsInfo ADD BloodGroup varchar(8000);

ALTER TABLE StudentsInfo DROP column BloodGroup;

ALTER TABLE StudentsInfo ADD DOB DATE;

ALTER TABLE StudentsInfo ALTER COLUMN DOB datetime;

ALTER TABLE StudentsInfo DROP COLUMN DOB;

INSERT INTO StudentsInfo VALUES ('07', 'Vishal', 'Mishra', '9128312', 'Nice Road 15', 'Pune', 'India');

TRUNCATE TABLE StudentsInfo;

sp_rename 'StudentsInfo', 'InfoStudents'; /* rename table (different from other sqls) */

/*

NULL: Null value cannot be stored in a column

Unique: All values in a column are different

Check: All the values in a column satisft a specific condition

Default: Default values for a column when no value is specified

Index: This constraint is used to create and retrieve data from the database very quickly

*/

--------------------------------------

CREATE TABLE StudentsInfo
(
StudentID int,
StudentName varchar(8000) NOT NULL,
ParentName varchar(8000),
PhoneNumber bigint,
AddressOfStudent varchar(8000) NOT NULL,
City varchar(8000),
Country varchar(8000)
);

drop table StudentsInfo;

INSERT INTO StudentsInfo VALUES ('07', 'Vishal', 'Mishra', '9128312', NULL, 'Pune', 'India');

ALTER TABLE StudentsInfo ALTER COLUMN PhoneNumber int NOT NULL;

CREATE TABLE StudentsInfo
(
StudentID int UNIQUE NOT NULL,
StudentName varchar(8000) NOT NULL,
ParentName varchar(8000),
PhoneNumber bigint,
AddressOfStudent varchar(8000) NOT NULL,
City varchar(8000),
Country varchar(8000),
PRIMARY KEY (StudentID)
);

CREATE TABLE StudentsInfo
(
StudentID int NOT NULL,
StudentName varchar(8000) NOT NULL,
ParentName varchar(8000),
PhoneNumber bigint,
AddressOfStudent varchar(8000) NOT NULL,
City varchar(8000),
Country varchar(8000),
CONSTRAINT UC_StudentsInfo UNIQUE(StudentID, PhoneNumber)
);

ALTER TABLE StudentsInfo ADD UNIQUE(StudentID);

ALTER TABLE StudentsInfo 
DROP CONSTRAINT UC_StudentsInfo;


CREATE TABLE StudentsInfo
(
StudentID int NOT NULL,
StudentName varchar(8000) NOT NULL,
ParentName varchar(8000),
PhoneNumber bigint,
AddressOfStudent varchar(8000) NOT NULL,
City varchar(8000),
Country varchar(8000) check (country = 'India') /* country must be india */
);

INSERT INTO StudentsInfo VALUES ('07', 'Vishal', 'Mishra', '9128312', 'Nice Road', 'Pune', 'India');

SELECT * FROM StudentsInfo;

WITH  q AS
        (
        SELECT TOP 1 *
        FROM StudentsInfo
        /* You may want to add ORDER BY here */
        )
DELETE
FROM    q;


ALTER TABLE StudentsInfo 
ADD CHECK (Country = 'India');

ALTER TABLE StudentsInfo 
ADD CONSTRAINT CountryConstraint CHECK (Country = 'India');

ALTER TABLE StudentsInfo 
DROP CONSTRAINT CountryConstraint;

/* Default */

CREATE TABLE StudentsInfo
(
StudentID int UNIQUE NOT NULL,
StudentName varchar(8000) NOT NULL,
ParentName varchar(8000),
PhoneNumber bigint,
AddressOfStudent varchar(8000) NOT NULL,
City varchar(8000),
Country varchar(8000) DEFAULT 'India'
);

ALTER TABLE StudentsInfo
ADD CONSTRAINT DefaultCity
DEFAULT 'Mumbai' FOR City;

ALTER TABLE StudentsInfo
DROP CONSTRAINT DefaultCity;

/* INDEX */

CREATE INDEX IndexStudentName
ON StudentsInfo (StudentName);

SELECT * FROM StudentsInfo; /* show table rows */

INSERT INTO StudentsInfo VALUES ('7', 'Vishal', 'Mishra', '9128312', 'Nice Road', 'Pune', 'India');

DROP INDEX StudentsInfo.IndexStudentName;

/* UPDATE */

UPDATE StudentsInfo SET StudentName = 'Ahmet', City = 'Ankara'
WHERE StudentID = 7;

/* DELETE */

DELETE FROM StudentsInfo
WHERE StudentName = 'Ahmet';

CREATE TABLE SampleSourceTable
(StudentID int, StudentName varchar(8000), Marks int); 
CREATE TABLE SampleTargetTable
(StudentID int, StudentName varchar(8000), Marks int);

INSERT INTO SampleSourceTable VALUES ('1', 'Vihaan', '87');
INSERT INTO SampleSourceTable VALUES ('2', 'Manasa', '92');
INSERT INTO SampleSourceTable VALUES ('3', 'Anay', '74');

INSERT INTO SampleTargetTable VALUES ('1', 'Vihaan', '87');
INSERT INTO SampleTargetTable VALUES ('2', 'Manasa', '67');
INSERT INTO SampleTargetTable VALUES ('3', 'Sahur', '55');

/* <> = same as */

MERGE SampleTargetTable 
TARGET USING SampleSourceTable 
SOURCE ON (TARGET.StudentID = SOURCE.StudentID)
WHEN MATCHED AND TARGET.StudentName <> SOURCE.StudentName;
