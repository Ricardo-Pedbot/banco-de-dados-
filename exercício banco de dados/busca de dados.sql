1) Selecionar o banco de dados da biblioteca para executar os próximos códigos: 
use library;

2) Mostrar todas as tabelas do banco de dados:
show tables;

3) No banco da biblioteca. Buscar todos os livros de id igual a 1, 6, 10 e 20 sem utilizar o comando "and" dentro do where:
select id, titule from books where id in (1,6,10,20);

4) No banco da biblioteca. Buscar todos os livros que o nome começa com "O":
select titule from books where titule like 'o%';

5) Com base na query anterior, buscar qual o nome do autor desses livros:
select a.name, b.titule from books as b right join authors as a on a.id = b.author_id where titule like 'o%';

6) No banco estoque, trazer nome do cliente, do produto e do funcionário de cada venda realizade:
select r.id, c.name, e.name, p.name from requests as r join products as p on r.product_id = p.id join employees as e on r.employee_id = e.id join costumers as c on r.costumer_id = c.id order by r.id asc;

7) No banco estoque, retornar a venda mais cara:
select max(p.price) from requests as r join products as p on r.product_id = p.id;

8) No banco estoque, retornar a venda mais barata:
select min(p.price) from requests as r join products as p on r.product_id = p.id;

9) No banco estoque, retornar a quantidade de vendas:
select count(*) from requests as r join products as p on r.product_id = p.id;

10) No banco estoque, retornar todas as vendas realizadas entre o período de 01/01/2022 até 12/12/2022:
select r.id, c.name, p.name, r.date from requests as r join products as p on r.product_id = p.id join costumers as c on r.costumer_id = c.id where date between '2022/01/01' and '2022/12/12' order by date asc;
