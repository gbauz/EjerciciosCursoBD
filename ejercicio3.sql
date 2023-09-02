insert into registros values(31,'Pedro Moncayo','no');

create table nomina(
id int PRIMARY KEY,
nombre varchar(50) not null,
presidencia varchar(50) not null
);

Select * from nomina ORDER BY nombre ASC;


Select * from nomina ORDER BY nombre DESC;


select * from nomina where nombre LIKE '%chenche%';

select * from registros where nombre='Giovanni Bauz';

select * from nomina where id=20;

update registros set nombre='Roberto Carlos' WHERE id=3;

select * from registros where id BETWEEN 5 AND 11;
