create table produtos(
   codigo int PRIMARY key,
   descricao VARCHAR(255) NOT NULL,
   preco DECIMAL(16, 2) not null,
   ativo BOOLEAN not null,
   data_cadastro TIMESTAMP not NULL
);

insert into 	produtos (codigo, descricao, preco, ativo, data_cadastro)values
(2,'placa de ovo', 10.20, true, now());

drop table if exists PRODUTOS;

SEELECT * from PRODUTOS