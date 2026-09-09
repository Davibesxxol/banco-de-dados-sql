## Aula 02: Classificação SQL e Definição Estrutural (DDL)

A linguagem SQL é segmentada em subconjuntos operacionais, cada um direcionado a um propósito específico dentro da arquitetura do banco de dados.

### Divisão da Linguagem SQL
* **DDL (Data Definition Language):** Monta a estrutura dos objetos do banco (`CREATE`, `ALTER`, `DROP`).
* **DQL (Data Query Language):** Busca e exibe as informações (`SELECT`).
* **DML (Data Manipulation Language):** Gerencia os registros inseridos nas tabelas (`INSERT`, `UPDATE`, `DELETE`).
* **DCL (Data Control Language):** Administra as permissões de acesso (`GRANT`, `REVOKE`).
* **TCL (Transaction Control Language):** Controla os salvamentos e a integridade das transações (`COMMIT`, `ROLLBACK`, `SAVEPOINT`).

### Prática de DDL
A DDL não manipula o dado em si, mas constrói o "contêiner" onde ele será armazenado.

```sql
-- 1. CREATE: Instancia a tabela e define a tipagem das colunas
CREATE TABLE produtos (
  id_produto INT,
  nome_produto VARCHAR(100)
);

-- 2. ALTER: Modifica a estrutura adicionando uma nova coluna
ALTER TABLE produtos ADD preco DECIMAL(10,2);

-- 3. DROP: Destrói a estrutura e os dados permanentemente
DROP TABLE produtos;
Aula 03: Manipulação de Dados (DML)Após a construção do esquema estrutural, a DML é utilizada para gerenciar o conteúdo interno, alterando os dados reais salvos nas tabelas.Comandos Principais de DMLINSERT: Adiciona novas linhas de dados. Pode ser feito via entrada manual (VALUES) ou copiando dados de outra tabela via consulta (SELECT).UPDATE: Altera informações já cadastradas. Exige obrigatoriamente a cláusula WHERE para evitar a alteração acidental de toda a tabela.DELETE: Apaga registros específicos. Assim como o update, o uso do WHERE é crítico para a segurança dos dados.Aula 04.1: Chave Estrangeira (Foreign Key)A chave estrangeira é um campo que aponta para a chave primária de outra tabela, servindo para criar o relacionamento lógico entre elas.  Por que utilizar? Sem chaves estrangeiras, as tabelas ficam isoladas, não há garantia de que os dados combinam e podem existir registros "órfãos" (dados sem relação real).  Vantagem: O banco de dados passa a garantir a integridade referencial, evitando inconsistências e representando relações do mundo real.  SQL-- Exemplo Prático da Aula: Relacionamento Cliente -> Pedido
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    clienteId INT,
    total DECIMAL(16,2),
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (clienteId) REFERENCES clientes(id)
);
Aula 05: Combinação de Dados (JOINS e SET)Existem duas formas primárias de combinar resultados de diferentes tabelas no banco de dados.JOINS (Combinação Horizontal)Conecta tabelas lateralmente através de uma coluna comum (chave).  Inner Join: Retorna apenas o que existe em ambas as tabelas.  Left Join: Mantém tudo da tabela à esquerda e traz o que houver correspondência da direita.  Right Join: Mantém tudo da direita e traz o que houver correspondência da esquerda.  Full Join: Traz tudo de ambos os lados, independentemente de haver correspondência.  Operadores SET (Combinação Vertical)Empilha resultados de consultas diferentes, exigindo que tenham a mesma estrutura de colunas.  UNION: Combina os resultados e remove automaticamente os duplicados.  UNION ALL: Combina todos os resultados, incluindo duplicados, tornando a execução mais rápida.  EXCEPT / MINUS: Retorna o que existe no primeiro conjunto, mas não no segundo.  INTERSECT: Retorna estritamente o que é comum a ambos os conjuntos.  
