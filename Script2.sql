create table produtos(
   codigo int PRIMARY key,
   descricao VARCHAR(255) NOT NULL,
   preco DECIMAL(16, 2) not null,
   ativo BOOLEAN not null,
   data_cadastro TIMESTAMP not NULL
);

insert into 	produtos (codigo, descricao, preco, ativo, data_cadastro)values
(3,'peito de farango', 20.00, true, now());

drop table if exists PRODUTOS;

SELECT * from produtos 
update produtos set preco = 16.25
where codigo != 0 order by descricao desc 	

select distinct descricao from produtos p

select* from produtos limit 1;

