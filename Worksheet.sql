/* 

Relational Databases:

SQL Server is a data management system that uses
the relational model to store and manage data. 

Each table holds information about just one thing. 

Someone might ask to see all the orders placed by a particular customer. You use SQL Server to get this
information by relating these tables to one another.

In addition to the databases that are created to store information, SQL Server includes five system
databases:
- master: the system configuration database.
- model: the template database. SQL Server will apply any changes made in model to new databases.
- msdb: used by SQL Server Agent to schedule jobs and alerts.
- tempDb: a temporary store for data such as work tables. This database is dropped and recreated
each time SQL Server restarts, which means that any temporary tables will be lost when SQL Server
closes down.
- resource: a hidden, read-only database that contains all the system objects for other databases.

---------

Client Server Databases:

In production environments, the client software runs on a separate machine to the database engine.
Indeed, there could be multiple clients accessing the same server database engine. 

---------

Queries:

Only after it has retrieved the table does SQL Server
filter data to produce a subset of the table, if that is
what the query has requested. This makes SQL
Server highly efficient in dealing with large volumes
of data, but it means you have to think in sets to
write efficient T-SQL code. 

Inside each file, you can divide the script
into batches.

SQL Server runs each batch in its entirety before it starts the next one.

If you try to create the table and populate it with data
without the GO keyword in between, the statement will fail. 

---------

Transact-SQL yani T-SQL Microsoft SQL Server veritabaný için kullanýlan sorgulama diline verilen isimdir.

---------

Getting Started with SQL Server Management Studio:

SSMS allows you to create and save T-SQL code in
text files with a .sql file extension.

Introducing T-SQL:

An important concept to understand when working with T-SQL 
is that it is not a procedural language but
a set-based and declarative language.

--

DML (Data Manipulation Language):

- Focuses on: querying and modifying data

SELECT, INSERT, UPDATE, DELETE

--

DDL (Data Definition Language):

- handles the definition and life cycle of database objects,
such as tables, views, and procedures.

CREATE, ALTER, DROP

--

DCL (Data Control Language):

- Manage security permissions for users and objects

GRANT, REVOKE, DENY

Predicates supported by T-SQL include the
following:

IN: used to determine whether a value
matches any value in a list or subquery.
For example, WHERE day IN (1,5,6,10).

BETWEEN: used to specify a range of values.
For example, WHERE rate BETWEEN 3 AND 7.

LIKE: used to match characters against a pattern.
For example, WHERE surname LIKE ‘%mith%’.


Operators include several common categories:

Comparison. For equality and inequality tests: =, <, >, >=, <=, !=, !>, !< (Note that !>, !< and != are
not ISO standard—it is best practice to use standard options when they exist.)

Logical. For testing the validity of a condition: AND, OR, NOT.

Arithmetic. For performing mathematical operations: +, -, *, /, % (modulo).

Concatenation. For combining character strings: +.

Assignment. For setting a value: =.

--------------------

String functions:

SUBSTRING, LEFT, RIGHT, LEN, DATALENGTH,
REPLACE, REPLICATE, UPPER, LOWER, RTRIM,
LTRIM, STUFF, SOUNDEX


Date and time functions:

GETDATE, SYSDATETIME, GETUTCDATE
DATEADD, DATEDIFF
YEAR, MONTH, DAY
DATENAME, DATEPART
ISDATE


Aggregate functions:

SUM, MIN, MAX, AVG
COUNT, COUNT_BIG
STDEV, STDEVP
VAR 


Mathematical functions
RAND, ROUND, POWER, ABS
CEILING, FLOOR


---------

T-SQL Language Elements: Variables Like many programming languages, T-SQL
provides a means of temporarily storing a value of
a specific data type. However, unlike other
programming environments, all user-created
variables are local to the T-SQL batch that created
them—and are visible only to that batch. There
are no global or public variables available to SQL
Server users. (@ will come before the variable name)Character Variable:DECLARE @search varchar(30) = 'Match%';Date Variable:DECLARE @CurrentDate date;
SET @CurrentDate = GETDATE(); ---------

T-SQL Language Elements: ExpressionsT-SQL provides combinations of identifiers,
symbols, and operators that are evaluated by SQL
Server to return a single result. These
combinations are known as expressions, offering a
useful and powerful tool for your queries. In
SELECT statements, you may use expressions:

- In the SELECT clause to operate on and/or
manipulate columns.

- As CASE expressions to replace values
matching a logical expression with another
value.

- In the WHERE clause to construct predicates for filtering rows.

- As table expressions to create temporary sets used for further processing. Note that user-declared variables are considered local to the batch in which they are declared. If a
variable is declared in one batch and referenced in another, the second batch would fail. Insert a GO
batch separator between the two CREATE statements to resolve the previous error.


Set Theory and SQL Server:Set theory is one of the mathematical foundations
of the relational model and is fundamental to
working with SQL Server. While you might be able
to make progress writing queries in T-SQL without
an appreciation of sets, you may eventually have
difficulty expressing some of them in a single,
well-performing statement. - You still need to sort your query output. Applying the Logical Order of Operations to Writing SELECT Statements:Decide which tables to query first, in addition
to any table aliases you will apply. This will
determine the FROM clause. Decide which set or subset of rows will be
retrieved from the table(s) in the FROM
clause, and how you will express your
predicate. This will determine your WHERE clause
If you intend to group rows, decide which columns will be grouped. Remember that only columns in
the GROUP BY clause, in addition to aggregate functions such as COUNT, may ultimately be included
in the SELECT clause.

 If you need to filter out groups, decide on your predicate and build a HAVING clause. The results of
this phase become the input to the SELECT clause.

-------------

SELECT DISTINCT:

SELECT DISTINCT will filter out duplicates in the
result set. SELECT DISTINCT specifies that the
result set must contain only unique rows. 

-------------

AS:

SELECT DISTINCT Country AS Countries
FROM Customers;

(Changes the name of the column Country to Countries)

-------------

Forms of CASE Expressions:

Simple CASE expressions, the subject of this lesson,
compare an input value to a list of possible
matching values:

If a match is found, the first matching value is
returned as the result of the CASE expression.
Multiple matches are not permitted.

If no match is found, a CASE expression
returns the value found in an ELSE clause, if
one exists.

If no match is found and no ELSE clause is present, the CASE expression returns a NULL. 




