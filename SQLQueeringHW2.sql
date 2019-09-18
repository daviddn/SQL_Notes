USE Northwind
SELECT COUNT(*) AS 'Orders Shipped Rio de Janeiro'
FROM Orders
WHERE ShipCity = 'Rio de Janeiro'