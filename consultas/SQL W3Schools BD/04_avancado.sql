-- Consultas Avançadas

-- 1. Produtos nunca pedidos
SELECT P.ProductID, P.ProductName
FROM Products P
LEFT JOIN OrderDetails OD ON P.ProductID = OD.ProductID
WHERE OD.ProductID IS NULL;

-- 2. Clientes com mais de 10 pedidos
SELECT C.CustomerName, COUNT(O.OrderID) AS OrdersCount
FROM Orders O
INNER JOIN Customers C ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
HAVING COUNT(O.OrderID) > 10;

-- 3. Pedido mais caro
SELECT TOP 1 *
FROM (
    SELECT OD.OrderID, SUM(P.Price * OD.Quantity) AS TotalOrder
    FROM OrderDetails OD
    INNER JOIN Products P ON OD.ProductID = P.ProductID
    GROUP BY OD.OrderID
) AS T
ORDER BY TotalOrder DESC;

-- 4. Top 5 clientes em número de pedidos
SELECT TOP 5 C.CustomerName, COUNT(O.OrderID) AS TotalOrders
FROM Orders O
INNER JOIN Customers C ON C.CustomerID = O.CustomerID
GROUP BY C.CustomerName
ORDER BY TotalOrders DESC;

-- 5. Produtos + média de preços por fornecedor
SELECT P.ProductName,
       P.Price,
       S.SupplierName,
       (SELECT AVG(P2.Price)
        FROM Products P2
        WHERE P2.SupplierID = P.SupplierID) AS AvgPriceBySupplier
FROM Products P
INNER JOIN Suppliers S ON P.SupplierID = S.SupplierID;
