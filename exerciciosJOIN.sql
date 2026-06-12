-- exercicio1 --
SELECT 
    e.last_name, 
    j.job_title,
    d.department_name
FROM hr.employees e
INNER JOIN hr.jobs j ON e.job_id = j.job_id
INNER JOIN hr.departments d ON e.department_id = d.department_id;

-- exercicio2 --
SELECT 
    e.last_name, 
    c.country_name,
    d.department_name
FROM hr.employees e
INNER JOIN hr.departments d ON e.department_id = d.department_id
INNER JOIN hr.locations l ON d.location_id = l.location_id
INNER JOIN hr.countries c ON l.country_id = c.country_id;

-- exercicio3 --
SELECT 
    d.department_name,
    e.first_name
FROM hr.departments d
LEFT JOIN hr.employees e ON d.department_id = e.department_id;

-- exercicio4 --
SELECT 
    f.first_name AS "Funcionário",
    c.first_name AS "Chefe"
FROM hr.employees f
INNER JOIN hr.employees c ON f.manager_id = c.employee_id;

-- exercicio4 --
SELECT 
    e.last_name AS "Sobrenome",
    e.salary AS "Salário",
    j.job_title AS "Cargo",
    CASE   -- sujestão da IA --
        WHEN e.salary >= (j.min_salary + j.max_salary) / 2 THEN 'Alto'  
        ELSE 'Baixo'
    END AS "Nível Salarial"
FROM hr.employees e
INNER JOIN hr.jobs j ON e.salary BETWEEN j.min_salary AND j.max_salary;

