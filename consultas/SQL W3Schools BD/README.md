# SQL Consultas W3Schools

Repositório com consultas SQL de prática (base Northwind no [W3Schools Try SQL](https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all)).

## 📊 Database

| Tabela       | Registros |
|--------------|-----------|
| Customers    | 91        |
| Categories   | 8         |
| Employees    | 10        |
| OrderDetails | 518       |
| Orders       | 196       |
| Products     | 77        |
| Shippers     | 3         |
| Suppliers    | 29        |

## 📂 Estrutura
- `consultas/01_basico.sql` → Seleções simples e filtros
- `consultas/02_agregacao.sql` → Funções de agregação e agrupamento
- `consultas/03_joins.sql` → INNER, LEFT, RIGHT e UNION
- `consultas/04_avancado.sql` → Subqueries e consultas complexas

---

## 📝 Perguntas respondidas

### 🔹 Consultas básicas e filtragem
1. Liste todos os produtos disponíveis na tabela Products.  
2. Selecione os produtos cujo preço seja superior a 50.  
3. Encontre todos os clientes que estão localizados no Brasil.  
4. Liste os 5 produtos mais caros do banco de dados.  
5. Exiba todos os pedidos realizados no ano de 1997.  

### 🔹 Funções de agregação e agrupamento
1. Conte quantos pedidos existem na tabela Orders.  
2. Calcule a média de preço dos produtos da tabela Products.  
3. Descubra quantos clientes existem por país.  
4. Liste os fornecedores e a quantidade de produtos que cada um fornece.  
5. Encontre os 3 produtos com menor quantidade em estoque.  

### 🔹 Trabalhando com JOINs
1. Utilize INNER JOIN para listar os pedidos (Orders) e os respectivos nomes dos clientes (Customers).  
2. Use LEFT JOIN para exibir todos os clientes e seus pedidos, incluindo os clientes que nunca fizeram pedidos.  
3. Com RIGHT JOIN, liste todos os pedidos e os clientes correspondentes, garantindo que todos os pedidos tenham um cliente associado.  
4. Usando FULL OUTER JOIN (simulado no W3Schools), exiba todos os clientes e pedidos, incluindo aqueles que não possuem correspondência.  
5. Utilize INNER JOIN para listar todos os produtos e seus respectivos fornecedores.  

### 🔹 Consultas avançadas e subqueries
1. Encontre os produtos que nunca foram pedidos, usando NOT IN ou LEFT JOIN.  
2. Liste os clientes que realizaram mais de 10 pedidos.  
3. Encontre o pedido mais caro já realizado, considerando quantidade e preço unitário.  
4. Exiba os 5 clientes que mais compraram (em número de pedidos).  
5. Liste os produtos e exiba também a média de preços dos produtos por fornecedor.  
