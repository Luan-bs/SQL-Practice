-- Funções de Agregação e Agrupamento

-- 1. Quantidade de pedidos
SELECT COUNT(OrderID) FROM Orders;

-- 2. Média de preço dos produtos
SELECT AVG(Price) FROM Products;

-- 3. Clientes por país
SELECT Country, COUNT(CustomerID) AS CustomerCount
FROM Customers
GROUP BY Country;

-- 4. Fornecedores e quantidade de produtos
SELECT S.SupplierID, COUNT(P.ProductID) AS ProductCount
FROM Products P
INNER JOIN Suppliers S ON P.SupplierID = S.SupplierID
GROUP BY S.SupplierID;

-- 5. 3 produtos com menor estoque
SELECT TOP 3 ProductName, Unit
FROM Products
ORDER BY Unit ASC;
