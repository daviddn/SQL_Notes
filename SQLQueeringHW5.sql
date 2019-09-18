USE Northwind
SELECT ContactTitle + ', ' + ContactName AS 'Contact Name',
Phone AS 'Contact Number',
City + ', ' + Country AS 'City',
Fax AS 'Fax'
FROM Customers
WHERE Fax IS NULL