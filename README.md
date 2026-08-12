# 📝 Minhas Anotações: Comandos SQL e DDL

Pelo que eu entendi nas aulas, os comandos do SQL são separados em "famílias", dependendo do que a gente quer fazer no banco de dados[cite: 1]. 

## 1. O resumão dos comandos SQL
*   **DDL (Definição):** É o que a gente usa para mexer na **estrutura** das coisas, tipo criar ou apagar tabelas e o próprio banco[cite: 1].
*   **DQL (Consulta):** Usado só para buscar e ler os dados[cite: 1]. Basicamente é o reino do comando `SELECT`[cite: 1].
*   **DML (Manipulação):** É onde a gente realmente mexe na informação[cite: 1]. Serve para adicionar (`INSERT`), atualizar (`UPDATE`) ou apagar (`DELETE`) dados lá de dentro[cite: 1].
*   **DCL (Controle):** Essa é a parte de segurança, para dar ou tirar permissão de acesso de alguém[cite: 1].
*   **TCL (Transação):** Serve para salvar as coisas em definitivo no banco ou desfazer tudo se der algum erro no meio do caminho[cite: 1].

---

## 2. Focando no DDL (A estrutura do banco)
O professor explicou que o DDL é tipo o "esqueleto" do nosso banco de dados[cite: 2]. É com ele que a gente monta o lugar onde os dados vão ficar guardados. 

Os três comandos que a gente mais usa aqui são:

*   **`CREATE` (Criar):** Usado para construir bancos ou tabelas do zero[cite: 2]. Detalhe: na hora de criar uma tabela, a gente já precisa dizer quais são as colunas e os tipos de dados que vão entrar nelas[cite: 2].
*   **`ALTER` (Alterar):** Salva muito a vida quando precisamos mudar algo numa tabela que já existe[cite: 2]. Dá para colocar uma coluna nova ou remover uma antiga sem precisar deletar a tabela inteira[cite: 2].
*   **`DROP` (Excluir):** É o botão de autodestruição! Esse comando exclui a tabela inteira de uma vez e leva todos os registros que estavam dentro dela embora[cite: 2].
