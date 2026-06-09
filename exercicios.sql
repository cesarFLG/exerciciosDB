-- exercicio1 --
SELECT * FROM 
hr.employees;

-- exercicio2 --
select department_name, location_id FROM 
hr.departments;

-- exercicio3 --
select job_id,job_title,max_salary from
hr.jobs;

-- exercicio4 --
select job_title, max_salary, job_id from
hr.jobs;

-- exercicio5 --
select first_name,last_name,email,phone_number from
hr.employees;

-- exercicio6 --
select last_name, salary, salary + 500 from 
hr.employees;

-- exercicio7 --
select last_name, salary, salary * 12 from 
hr.employees;

-- exercicio8 --
select  salary * 12 + 1000, salary *(12 + 1000) from
hr.employees;
-- porque o que esta dentro dos parenteses acontece antes da multiplicação -- 

-- exercicio9 --
select last_name, job_id, salary, commission_pct,salary * 12 * commission_pct from
hr.employees;
-- para os funcionarios que não recebem comissão o valor retornado na coluna salario *12* comissão é nulo pois qualquer valor vezes null retorna null --

-- exercicio10 --
select last_name as "Sobrenome", salary as "Salário Mensal", salary * 12 as "Salário Anual" from 
hr.employees;

-- exercicio11 --
SELECT CONCAT_WS(' ', first_name, last_name) AS Nome_Completo, CONCAT('E-mail: ', email) AS Identificacao FROM 
    hr.employees;
   
-- exercicio12 --
select concat_ws(' ', last_name, ' trabalha no cargo ', job_id, ' e ganha ', salary, ' por mês.') as "Apresentação do Funcionario" from
hr.employees;

-- exercicio13 --
select concat_ws(' ', job_title, ' R$', min_salary,' Até ', ' R$', max_salary) as "faixa Salarial" from 
hr.jobs;

-- exercicio14 --
select distinct department_id from
hr.employees;

-- exercicio15 --
select distinct job_id from 
hr.employees;

-- exercicio16 --
select distinct job_id, department_id from 
hr.employees;

-- exercicio17 --
SELECT  CONCAT(last_name, ', ', first_name) AS "Funcionário",
    job_id AS "Cargo", salary AS "Salário Mensal", salary * 12 AS "Salário Anual",
    salary * 12 * commission_pct AS "Comissão Anual", (salary * 12) + (salary * 12 * commission_pct) AS "Remuneração Anual Total" FROM 
    hr.employees;