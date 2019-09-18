USE Northwind
SELECT ShipCity AS 'Ship City',
OrderDate AS 'Order Date',
ShippedDate AS 'Shipped Date',
CASE WHEN DATEDIFF(d, OrderDate, ShippedDate)<10
THEN 'On Time'
ELSE 'Overdue'
END AS 'Number of Overdue Orders'
FROM Orders
WHERE ShipCity = 'Paris'
