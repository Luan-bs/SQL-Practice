-- Trabalhando com JOINs

-- 1. Pedidos e respectivos clientes
SELECT O.OrderID, C.CustomerName
FROM Orders O
INNER JOIN Customers C ON C.CustomerID = O.CustomerID;

-- 2. Clientes + total de pedidos (inclui os sem pedidos)
SELECT C.CustomerName, COUNT(O.OrderID) AS OrdersCount
FROM Customers C
LEFT JOIN Orders O ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName;

-- 3. Todos os pedidos + clientes (RIGHT JOIN)
SELECT O.OrderID, C.CustomerName
FROM Customers C
RIGHT JOIN Orders O ON C.CustomerID = O.CustomerID;

-- 4. FULL OUTER JOIN (simulado com UNION no W3Schools)
SELECT O.OrderID, C.CustomerName
FROM Orders O
LEFT JOIN Customers C ON C.CustomerID = O.CustomerID
UNION
SELECT O.OrderID, C.CustomerName
FROM Orders O
RIGHT JOIN Customers C ON C.CustomerID = O.CustomerID;

-- 5. Produtos + fornecedores
SELECT S.SupplierName, P.ProductName
FROM Products P
INNER JOIN Suppliers S ON P.SupplierID = S.SupplierID;
