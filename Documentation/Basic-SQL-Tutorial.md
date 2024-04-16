![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍Basic SQL Tutorial🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [📝Some of the most important SQL statements](#📝some-of-the-most-important-sql-statements)
4. [📜SQL statements](#📜sql-statements)
5. [🔗Links](#🔗links)

---

## 🖖Introduction

The SQL language is the standard language for interacting with relational databases. It is designed to be used by both technical and non-technical database users. SQL is a standard language for storing, manipulating and retrieving data in databases. Our SQL tutorial will teach you how to use SQL in: MySQL, SQL Server, MS Access, Oracle, Sybase, Informix, Postgres, and other database systems.

## 📝Some of the most important SQL statements

- `SELECT` - extracts data from a database
- `UPDATE` - updates data in a database
- `DELETE` - deletes data from a database
- `INSERT INTO` - inserts new data into a database
- `CREATE DATABASE` - creates a new database
- `ALTER DATABASE` - modifies a database
- `CREATE TABLE` - creates a new table
- `ALTER TABLE` - modifies a table
- `DROP TABLE` - deletes a table
- `CREATE INDEX` - creates an index (search key)
- `DROP INDEX` - deletes an index

## 📜SQL statements

- `SELECT DISTINCT` - is used to return only different values
- `COUNT()` - is used for counting values
- `WHERE` - it is used to extract only those records (Rows) that fulfil a specified condition.

    | Operator  | Description                                                                          |
    | --------- | ------------------------------------------------------------------------------------ |
    | `=`       | Equal                                                                                |
    | `>`       | Greater than                                                                         |
    | `<`       | Less than                                                                            |
    | `>=`      | Greater than or equal to                                                             |
    | `<=`      | Less than or equal to                                                                |
    | `<>`      | Not equal. Note: In some versions of SQL this operator may be written as !=          |
    | `BETWEEN` | Between a certain range (WHERE Price BETWEEN 50 AND 60;)                             |
    | `LIKE`    | Search for a pattern (WHERE City LIKE 's%';)                                         |
    | `IN`      | To specify multiple possible values for a column (WHERE City IN ('Paris','London');) |

    - The WHERE clause can be combined with AND, OR, NOT operators.

        | Operator | Description                                                                        |
        | -------- | ---------------------------------------------------------------------------------- |
        | `AND`    | The AND operator displays a record if all the conditions separated by AND are true |
        | `OR`     | The OR operator displays a record if any of the conditions separated by OR is true |
        | `NOT`    | The NOT operator displays a record if the condition(s) is NOT true                 |

        - You can also combine the `AND`, `OR`, `NOT` operators.
        ```SQL
        SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');
        ```

- `ORDER BY` - keyword is used to sort the result-set in ascending or descending order. The `ORDER BY` keyword sorts the records in ascending order by default. To sort the records in descending order, use the `DESC` keyword.
```SQL
SELECT * FROM Customers ORDER BY Country DESC; -- ASC is default
```

- `INSERT INTO` - statement is used to insert new records in a table.
```SQL
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
```

- `UPDATE` - statement is used to modify the existing records in a table.
```SQL
UPDATE Customers SET ContactName = 'Alfred Schmidt', City= 'Frankfurt' WHERE CustomerID = 1;
```

- `DELETE` - statement is used to delete existing records in a table.
```SQL
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste' AND ContactName='Maria Anders';
```

- `SELECT TOP` - statement is used to specify the number of records to return.
```SQL
SELECT TOP 3 * FROM Customers;
```

- `MIN()` - function returns the smallest value of the selected column.
```SQL
SELECT MIN(Price) AS SmallestPrice FROM Products;
```

- `MAX()` - function returns the largest value of the selected column.
```SQL
SELECT MAX(Price) AS LargestPrice FROM Products;
```

- `COUNT()` - function returns the number of rows that matches a specified criteria.
```SQL
SELECT COUNT(ProductID) AS NumberOfProducts FROM Products;
```

- `AVG()` - function returns the average value of a numeric column.
```SQL
SELECT AVG(Price) AS AveragePrice FROM Products;
```

- `SUM()` - function returns the total sum of a numeric column.
```SQL
SELECT SUM(Quantity) AS TotalItemsOrdered FROM OrderDetails;
```

- `LIKE` - operator is used in a WHERE clause to search for a specified pattern in a column.
```SQL
SELECT * FROM Customers WHERE CustomerName LIKE 'a%'; -- Starts with 'a'
SELECT * FROM Customers WHERE CustomerName LIKE '%a'; -- Ends with 'a'
SELECT * FROM Customers WHERE CustomerName LIKE '%or%'; -- Contains 'or'
SELECT * FROM Customers WHERE CustomerName LIKE '_r%'; -- Any character in place of the underscore
SELECT * FROM Customers WHERE CustomerName LIKE 'a_%_%'; -- Starts with 'a' and is at least 3 characters long
SELECT * FROM Customers WHERE ContactName LIKE 'a%o'; -- Starts with 'a' and ends with 'o'
```

- `IN` - operator allows you to specify multiple values in a WHERE clause.
```SQL
SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK');
```

- `BETWEEN` - operator selects values within a given range. The values can be numbers, text, or dates.
```SQL
SELECT * FROM Products WHERE Price BETWEEN 10 AND 20;
```

- `AS` - keyword is used to rename a table or a column heading.
```SQL
SELECT CustomerName AS Customer, ContactName AS [Contact Person] FROM Customers;
```

- `JOIN` - keyword is used in an SQL statement to query data from two or more tables, based on a relationship between certain columns in these tables.
    - Different types of the `JOIN` keyword:
        - `INNER JOIN` - returns records that have matching values in both tables.
            ```SQL
            SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
            ```
        - `LEFT JOIN` - returns all records from the left table, and the matched records from the right table.
            ```SQL
            SELECT Customers.CustomerName, Orders.OrderID FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID ORDER BY Customers.CustomerName;
            ```
        - `RIGHT JOIN` - returns all records from the right table, and the matched records from the left table.
            ```SQL
            SELECT Orders.OrderID, Employees.LastName, Employees.FirstName FROM Orders RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID ORDER BY Orders.OrderID;
            ```
        - `FULL JOIN` - returns all records when there is a match in either left or right table.
            ```SQL
            SELECT Customers.CustomerName, Orders.OrderID FROM Customers FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID ORDER BY Customers.CustomerName;
            ```

- `UNION` - operator is used to combine the result-set of two or more SELECT statements.
```SQL
SELECT City FROM Customers UNION SELECT City FROM Suppliers ORDER BY City;
```

- `UNION ALL` - operator is used to combine the result-set of two or more SELECT statements. The `UNION ALL` operator is equal to the `UNION` operator, except that `UNION ALL` selects all values.
```SQL
SELECT City FROM Customers UNION ALL SELECT City FROM Suppliers ORDER BY City;
```

- `GROUP BY` - statement is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) to group the result-set by one or more columns.
```SQL
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country;
```

- `HAVING` - clause was added to SQL because the WHERE keyword could not be used with aggregate functions.
```SQL
SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 5;
```

- `EXISTS` - operator is used to test for the existence of any record in a subquery.
```SQL
SELECT ProductName FROM Products WHERE EXISTS (SELECT ProductName FROM Products WHERE Price < 20);
```

- `ANY` - operator compares a value to a set of values. The `ANY` operator returns `TRUE` if any of the subquery values meet the condition.
```SQL
SELECT ProductName FROM Products WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);
```

- `ALL` - operator compares a value to a set of values. The `ALL` operator returns `TRUE` if all of the subquery values meet the condition.
```SQL
SELECT ProductName FROM Products WHERE ProductID = ALL (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);
```

- `CASE` - statement goes through conditions and returns a value when the first condition is met (like an `IF-THEN-ELSE` statement).
```SQL
SELECT OrderID, Quantity, CASE WHEN Quantity > 30 THEN 'The quantity is greater than 30' WHEN Quantity = 30 THEN 'The quantity is 30' ELSE 'The quantity is under 30' END AS QuantityText FROM OrderDetails;
```

- `CREATE DATABASE` - statement is used to create a new SQL database.
```SQL
CREATE DATABASE TestDB;
```

- `DROP DATABASE` - statement is used to delete a SQL database.
```SQL
DROP DATABASE TestDB;
```

- `CREATE TABLE` - statement is used to create a new table in a database.
```SQL
CREATE TABLE Customers (CustomerID int, CustomerName varchar(255), ContactName varchar(255), Address varchar(255), City varchar(255), PostalCode varchar(255), Country varchar(255));
```

- `DROP TABLE` - statement is used to delete a table in a database.
```SQL
DROP TABLE Customers;
```

- `ALTER TABLE` - statement is used to add, delete, or modify columns in an existing table.
    - `ADD` - keyword is used to add columns in a table.
    ```SQL
    ALTER TABLE Customers ADD Email varchar(255);
    ```
    - `DROP COLUMN` - keyword is used to delete columns in a table.
    ```SQL
    ALTER TABLE Customers DROP COLUMN Email;
    ```
    - `ALTER COLUMN` - keyword is used to change or modify the datatype of an existing column in a table.
    ```SQL
    ALTER TABLE Customers ALTER COLUMN Email varchar(255);
    ```
    - `RENAME TO` - keyword is used to rename a table.
    ```SQL
    ALTER TABLE Customers RENAME TO CustomersNew;
    ```
    - `RENAME COLUMN` - keyword is used to rename a column in a table.
    ```SQL
    ALTER TABLE Customers RENAME COLUMN Email TO EmailAddress;
    ```
    - `ADD CONSTRAINT` - keyword is used to add constraint to an existing table.
    ```SQL
    ALTER TABLE Persons ADD CONSTRAINT PK_Person PRIMARY KEY (ID,LastName);
    ```
    - `DROP CONSTRAINT` - keyword is used to delete constraint in an existing table.
    ```SQL
    ALTER TABLE Persons DROP CONSTRAINT FK_PersonOrder;
    ```
    - `NOT NULL` - keyword is used to specify that a column must NOT contain NULL values.
    ```SQL
    ALTER TABLE Persons MODIFY City varchar(255) NOT NULL;
    ```
    - `UNIQUE` - keyword is used to specify that a column must contain unique values.
    ```SQL
    ALTER TABLE Persons ADD UNIQUE (ID);
    ```
    - `PRIMARY KEY` - keyword is used to uniquely identify each row in a table.
    ```SQL
    ALTER TABLE Persons ADD PRIMARY KEY (ID);
    ```
    - `FOREIGN KEY` - keyword is used to uniquely identify a row/record in another table.
    ```SQL
    ALTER TABLE Orders ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);
    ```
    - `CHECK` - keyword is used to limit the value range that can be placed in a column.
    ```SQL
    ALTER TABLE Persons ADD CHECK (Age>=18);
    ```
    - `DEFAULT` - keyword is used to insert a default value into a column.
    ```SQL
    ALTER TABLE Persons ALTER COLUMN City SET DEFAULT 'Sandnes';
    ```
    - `AUTO_INCREMENT` - keyword is used to generate a unique number automatically when a new record is inserted into a table.
    ```SQL
    ALTER TABLE Persons AUTO_INCREMENT=100;
    ```
    - `INDEX` - keyword is used to create and retrieve data from the database very quickly.
    ```SQL
    CREATE INDEX idx_lastname ON Persons (LastName);
    ```
    - `DROP INDEX` - keyword is used to delete an index in a table.
    ```SQL
    DROP INDEX idx_lastname ON Persons;
    ```
    - `CREATE VIEW` - statement is used to create a virtual table based on the result-set of an SQL statement.
    ```SQL
    CREATE VIEW [Current Product List] AS SELECT ProductID, ProductName FROM Products WHERE Discontinued=No;
    ```
    - `DROP VIEW` - statement is used to delete a view.
    ```SQL
    DROP VIEW [Current Product List];
    ```
    - `CREATE PROCEDURE` - statement is used to create a stored procedure.
    ```SQL
    CREATE PROCEDURE SelectAllCustomers AS SELECT * FROM Customers;
    ```
    - `DROP PROCEDURE` - statement is used to delete a stored procedure.
    ```SQL
    DROP PROCEDURE SelectAllCustomers;
    ```
    - `CREATE FUNCTION` - statement is used to create a user-defined function.
    ```SQL
    CREATE FUNCTION [dbo].[udfGetStockStatus] (@OrderQty int, @StockQty int) RETURNS varchar(50) AS BEGIN DECLARE @StockStatus varchar(50) IF (@OrderQty > @StockQty) SET @StockStatus = 'The product is out of stock' ELSE SET @StockStatus = 'The product is in stock' RETURN @StockStatus END;
    ```
    - `DROP FUNCTION` - statement is used to delete a user-defined function.
    ```SQL
    DROP FUNCTION udfGetStockStatus;
    ```

- `TRUNCATE TABLE` - statement is used to delete the data inside a table, but not the table itself.
```SQL
TRUNCATE TABLE Customers;
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com