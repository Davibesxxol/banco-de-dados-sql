# 🗄️ Resumo da Aula: Tipos de Comandos SQL e Foco em DDL

A linguagem SQL é dividida em subconjuntos baseados na finalidade dos comandos[cite: 1]. Abaixo está o detalhamento de cada categoria e um aprofundamento prático na linguagem de definição de dados.

## 1. Visão Geral das Categorias SQL

*   **DDL (Linguagem de Definição de Dados):** Usada para definir ou modificar a estrutura (o esqueleto) do banco de dados[cite: 1].
    *   `CREATE`: Cria novos bancos de dados ou tabelas[cite: 1].
    *   `ALTER`: Modifica a estrutura existente[cite: 1].
    *   `DROP`: Deleta um banco ou tabela[cite: 1].

*   **DQL (Linguagem de Consulta de Dados):** Usada para recuperar informações[cite: 1].
    *   `SELECT`: O comando principal para buscar e visualizar dados[cite: 1].

*   **DML (Linguagem de Manipulação de Dados):** Usada para gerenciar os dados em si, dentro das tabelas[cite: 1].
    *   `INSERT`: Adiciona novos registros[cite: 1].
    *   `UPDATE`: Modifica registros já existentes[cite: 1].
    *   `DELETE`: Remove registros[cite: 1].

*   **DCL (Linguagem de Controle de Dados):** Usada para gerenciar as permissões e a segurança do sistema[cite: 1].
    *   `GRANT`: Concede privilégios de acesso aos usuários[cite: 1].
    *   `REVOKE`: Revoga privilégios concedidos[cite: 1].

*   **TCL (Linguagem de Controle de Transações):** Usada para gerenciar as transações e garantir a integridade dos processos[cite: 1].
    *   `COMMIT`: Salva as mudanças permanentemente[cite: 1].
    *   `ROLLBACK`: Desfaz mudanças caso ocorra um erro durante a transação[cite: 1].
    *   `SAVEPOINT`: Define um ponto específico para permitir um retorno (rollback) parcial[cite: 1].

---

## 2. Aprofundamento: DDL (Data Definition Language)

Enquanto o DQL consulta e o DML manipula, o DDL permite gerenciar a planta estrutural (*blueprint*) do nosso banco de dados. É com ele que moldamos os objetos para receber os dados.

### A. CREATE (Criando Objetos)
Usado para construir novos contêineres e tabelas do zero. Ao criar uma tabela, é obrigatório definir as colunas e seus respectivos tipos de dados.

```sql
-- Criação de um novo banco de dados (contêiner)
CREATE DATABASE Sales;

-- Criação de uma tabela estruturada
CREATE TABLE Products (
  ProductID INT,
  ProductName VARCHAR(100),
  Price DECIMAL
);
