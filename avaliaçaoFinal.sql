-- Q1 --
show databases;
use academia_movimento;

-- Q2 --
show tables;

-- Q3 --
desc alunos;

-- Q4 --
select count(*) as total_pagamentos from pagamentos;

-- Q5 --
select * from planos order by valor_mensal desc;

-- Q6 --
create table equipamentos(
id int primary key auto_increment,
nome char(60) not null,
marca char(40),
data_compra date,
em_uso boolean default true
);

-- Q7 --
alter table alunos
add column telefone varchar(15);

-- Q8 --
drop table equipamentos;

-- Q9 --
insert into alunos
(nome,email,data_matricula,data_nascimento,plano_id,ativo)
 values ('Mariana Rocha','mariana.r@email.com',CURDATE(),'1995-06-15',2,TRUE);

-- Q10 --
start transaction;
update instrutores
set salario = salario * 1.08
where salario < 3700.00;
commit;

-- Q11 --
start transaction;
savepoint cancelamento;
UPDATE inscricoes
SET status = 'cancelada'
WHERE aluno_id = 4 AND status = 'ativa';
SELECT * FROM inscricoes WHERE aluno_id = 4;
commit;

-- Q12 --
select nome, email, data_matricula 
FROM alunos
where ativo = true
order by data_matricula ASC; 

-- Q13 --
select nome,salario
from instrutores
where especialidade != 'yoga'
order by salario asc;

-- Q14 --
select nome,valor_mensal
from planos
where valor_mensal between 100 and 201;

-- Q15 --
select nome
from alunos
where nome like 'a%' or nome like '%SOUSA%' ;

-- julio , fiz em um padão diferente pois pra mim tava confundindo usar somente a letra pra nomear a tabela ali sabe , ai estudando em casa usei o nome inteiro --
-- Q16 --
select alunos.nome AS nome_aluno, planos.nome AS nome_plano
FROM alunos
left join planos ON alunos.plano_id = planos.id;

-- Q17 --
select aulas.nome AS nome_aula, instrutores.nome AS nome_instrutor
from aulas
inner join instrutores ON aulas.instrutor_id = instrutores.id 
order by aulas.nome ASC; 

-- Q18 --
select alunos.nome AS nome_aluno, aulas.nome AS nome_aula,instrutores.nome AS nome_instrutor
FROM inscricoes
inner join alunos ON inscricoes.aluno_id = alunos.id
inner join aulas ON inscricoes.aula_id = aulas.id
inner join instrutores ON aulas.instrutor_id = instrutores.id
WHERE inscricoes.status = 'ativa'
order by alunos.nome ASC;

-- Q19 --
select planos.nome AS nome_plano, COUNT(alunos.id) AS quantidade_alunos
FROM planos
inner join alunos ON planos.id = alunos.plano_id
group by planos.nome;

-- Q21 --

