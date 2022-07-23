/* 
Create a table called Inventory, with the following information:
Primary Key called OrderID
Company Name (include a NOT NULL constraint)
Address
City
Phone
Order Date in DATE format
After you created the table, you realized you forgot to include a column. Insert the column below into the Inventory table:
State
The manufacturing company has a lot of tables that hold no data and need to be removed from the database. Delete the following tables:
Table name - Old inventory
Table name - Purchases
Now add values to the Inventory table, matching the values to the proper columns:
ABC Manufacturing
111 S Street
Jacksonville
NC
8881234
2019-08-26
Create a query that checks to make sure the above company information was added.
Create a query that:
pulls all records that were ordered on 2020-09-04 and 2020-08-04
*/

CREATE TABLE Inventory (
	OrderID INT PRIMARY KEY,
	Company Name VARCHAR(355) NOT NULL,
	Address VARCHAR(355),
	City VARCHAR(355),
	Phone VARCHAR(355),
	OrderDate DATE
);

ALTER TABLE Inventory
	ADD State VARCHAR(355);

DROP TABLE 'Old Inventory';
DROP TABLE 'Purchases';

INSERT INTO Inventory (
	Company,
	Address,
	City,
	Phone,
	OrderDate,
	State)
	VALUES(
		'ABC Manufacturing',
		'111 S. Street',
		'Jacksonville',
		'8881234',
		'2019-08-26', 
		'NC');

SELECT *
	FROM Inventory;

SELECT OrderDate
	FROM Inventory
		WHERE OrderDate 
			IN ('2020-09-04','2020-08-04');
		