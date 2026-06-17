start transaction;
insert into hr.departments (department_id,department_name)
values (181, 'pesquisa');
commit;

start transaction;

update hr.employees
set salary = salary * 1.15 
where employee_id = 60;

commit;

START TRANSACTION;

INSERT INTO hr.devs_backup
SELECT * FROM hr.employees
WHERE job_id = 'IT_PROG';

COMMIT;

START TRANSACTION;

delete from hr.departments
where department_id = 80;
commit;

START TRANSACTION; 

SAVEPOINT antesdoaumento;

UPDATE hr.employees
SET salary = salary * 1.5;

ROLLBACK TO SAVEPOINT antesdoaumento;

COMMIT;

