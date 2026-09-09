Aula 02: Classificação SQL e Definição Estrutural (DDL)
A linguagem SQL é segmentada em subconjuntos operacionais, cada um direcionado a um propósito específico dentro da arquitetura do banco de dados.

Divisão da Linguagem SQL
DDL (Data Definition Language): Monta a estrutura dos objetos do banco (CREATE, ALTER, DROP).

DQL (Data Query Language): Busca e exibe as informações (SELECT).

DML (Data Manipulation Language): Gerencia os registros inseridos nas tabelas (INSERT, UPDATE, DELETE).

DCL (Data Control Language): Administra as permissões de acesso (GRANT, REVOKE).

TCL (Transaction Control Language): Controla os salvamentos e a integridade das transações (COMMIT, ROLLBACK, SAVEPOINT).

Prática de DDL
A DDL não manipula o dado em si, mas constrói o "contêiner" onde ele será armazenado.

-- 1. CREATE: Instancia a tabela e define a tipagem das colunas
CREATE TABLE produtos (
  id_produto INT,
  nome_produto VARCHAR(100)
);

-- 2. ALTER: Modifica a estrutura adicionando uma nova coluna
ALTER TABLE produtos ADD preco DECIMAL(10,2);

-- 3. DROP: Destrói a estrutura e os dados permanentemente
DROP TABLE produtos;
