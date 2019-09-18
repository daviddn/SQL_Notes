USE Northwind
SELECT CompanyName, COUNT(Quantity) 
FROM Customers
JOIN Orders ON Orders.CustomerID = Customers.CustomerID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
WHERE City = 'Paris'
GROUP BY CompanyName

SELECT TOP 5 CompanyName, SUM(Quantity) AS 'Sum Quantity Ordered'
FROM Customers
JOIN Orders ON Orders.CustomerID = Customers.CustomerID
JOIN [Order Details] ON [Order Details].OrderID = Orders.OrderID
GROUP BY CompanyName
ORDER BY 'Sum Quantity Ordered' DESC