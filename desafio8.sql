SELECT c.ContactName AS `Nome de contato`,
s.ShipperName AS `Empresa que fez o envio`,
o.OrderDate AS `Data do pedido`
FROM w3schools.customers AS c
INNER JOIN w3schools.orders AS o
ON o.CustomerID = c.CustomerID
INNER JOIN w3schools.shippers AS s
ON s.ShipperID = o.ShipperID
WHERE ShipperName = 'Speedy Express' OR ShipperName = 'United Package'
ORDER BY ContactName, ShipperName, OrderDate;
