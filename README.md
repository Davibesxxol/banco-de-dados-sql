# 🗄️ Resumo SQL: Categorias e Comandos DDL

## 1. Classificação dos Comandos SQL
A linguagem SQL é dividida em cinco categorias principais, baseadas na finalidade da operação:

*   **DDL (Definição):** Estrutura os objetos do banco de dados. (`CREATE`, `ALTER`, `DROP`)
*   **DQL (Consulta):** Recupera e visualiza as informações. (`SELECT`)
*   **DML (Manipulação):** Gerencia os registros nas tabelas. (`INSERT`, `UPDATE`, `DELETE`)
*   **DCL (Controle):** Administra permissões e acessos de usuários. (`GRANT`, `REVOKE`)
*   **TCL (Transação):** Controla a integridade das operações e salvamentos. (`COMMIT`, `ROLLBACK`, `SAVEPOINT`)

---

## 2. Foco em DDL (Data Definition Language)
A DDL atua diretamente na modelagem da estrutura (*blueprint*) do sistema. Ela não manipula os dados em si, mas sim os "contêineres" (tabelas e bancos) que vão armazená-los.

*   **`CREATE`:** Instancia novos objetos do zero. Ao criar uma tabela, é obrigatório definir os atributos (colunas) e a tipagem de dados de cada um.
*   **`ALTER`:** Modifica a estrutura de um objeto já existente (como adicionar ou remover uma coluna de uma tabela) sem precisar excluí-lo.
*   **`DROP`:** Operação destrutiva. Exclui permanentemente a estrutura do objeto e todos os registros armazenados em seu interior.

### 💻 Exemplo Prático (Sintaxe Básica):

```sql
-- 1. CREATE: Cria a tabela e define os tipos
CREATE TABLE Products (
  ProductID INT,
  ProductName VARCHAR(100)
);

-- 2. ALTER: Modifica a estrutura adicionando uma coluna
ALTER TABLE Products ADD Price DECIMAL;

-- 3. DROP: Apaga a tabela e seus dados permanentemente
DROP TABLE Products;
