-- Consultas Básicas

-- 1. Liste todos os produtos disponíveis
SELECT * FROM Products;

-- 2. Produtos com preço > 50
SELECT * FROM Products WHERE Price > 50;

-- 3. Clientes do Brasil
SELECT * FROM Customers WHERE Country = 'Brazil';

-- 4. 5 produtos mais caros
SELECT TOP 5 * FROM Products ORDER BY Price DESC;

-- 5. Pedidos de 1997
SELECT * FROM Orders WHERE YEAR(OrderDate) = 1997;
