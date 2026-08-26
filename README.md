Na aula 2, aprendemos como a linguagem SQL é dividida e como estruturar nossas primeiras tabelas no banco de dados. Abaixo está o resumo dos conceitos.

1. Categorias do SQL
Aprendemos que os comandos são divididos em cinco grupos principais, dependendo da operação:

DDL (Definição): Monta a estrutura dos objetos do banco. (CREATE, ALTER, DROP)

DQL (Consulta): Busca e exibe as informações. (SELECT)

DML (Manipulação): Gerencia os registros inseridos nas tabelas. (INSERT, UPDATE, DELETE)

DCL (Controle): Administra as permissões de acesso. (GRANT, REVOKE)

TCL (Transação): Controla os salvamentos e a integridade do que foi feito. (COMMIT, ROLLBACK, SAVEPOINT)

2. Estruturando o banco com DDL
Focamos na categoria DDL (Data Definition Language). Aprendemos que ela não manipula o dado em si, mas constrói o "contêiner" onde ele vai ficar. Vimos como utilizar três comandos básicos:

CREATE: Usamos para criar tabelas do zero. É aqui que definimos o nome dos atributos (colunas) e a tipagem de cada um.

ALTER: Usamos para modificar uma estrutura que já existe. Aprendemos que dá para adicionar uma coluna nova, por exemplo, sem precisar excluir a tabela inteira.

DROP: Usamos para apagar uma tabela permanentemente, destruindo tanto a estrutura quanto os registros dentro dela.

3. Na Prática
SQL
-- 1. CREATE: Criando a tabela e definindo as colunas
CREATE TABLE produtos (
  id_produto INT,
  nome_produto VARCHAR(100)
);

-- 2. ALTER: Adicionando a coluna de preço na tabela já existente
ALTER TABLE produtos ADD preco DECIMAL(10,2);

-- 3. DROP: Excluindo a tabela e os dados de forma permanente
DROP TABLE produtos;


Aula 3

Nessa aula, a gente focou em entender como a DML (Data Manipulation Language) funciona na prática para mexer nos dados de dentro das tabelas, saindo da parte de criar estrutura (DDL).

1. DML vs DDL
DDL (Definição): É o que a gente usa para construir e definir o "recipiente" (a estrutura das tabelas e do banco).

DML (Manipulação): É o que a gente usa para gerenciar o "conteúdo" de dentro, alterando os dados reais que ficam salvos.

2. Comandos Principais de DML
Basicamente, a gente usa três comandos principais para manipular esses dados:

INSERT (Adicionar Dados)
Usado para colocar novas linhas de dados na tabela. A gente viu que dá para fazer de dois jeitos:

Método 1: Entrada Manual (VALUES)

Método 2: Inserção por Consulta (SELECT)
Dá para puxar e inserir dados em uma tabela consultando direto de outra tabela.

UPDATE (Modificar Dados)
Usado para alterar informações que já estão cadastradas.

DELETE (Remover Dados)
Usado para apagar registros que a gente não quer mais.

Cuidado importante: Do mesmo jeito que o update, a gente tem que usar o WHERE para não apagar a tabela inteira sem querer.

