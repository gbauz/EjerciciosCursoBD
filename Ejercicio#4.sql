alter table cliente add email varchar(20);
--Ejemplo de funcion de minimo
select MIN(Population) as minimo_poblacion from city;

--Ejemplo de funcion de maximo

select MAX(Population) as maximo_poblacion from city;

--Ejemplo de funcion de promedio 

select AVG(Population) as promedio from city;

---Ejemplo de funcion de suma

select SUM(Population) as suma_poblacion from city;

--Ejmplo de sentencia group by 
--Group by me permite agrupar todos los valores de una unica columna
select District from city GROUP BY District;

--CREACION DE USUARIO Y CONTRASEÑA EN MYSQL 

CREATE USER 'gbauz'@'localhost' IDENTIFIED BY 'maderol123*';

--OTORGAR PRIVILEGIOS A USUARIO 
GRANT ALL PRIVILEGES on. TO 'gbauz'@'localhost';

--OTORGAR PRIVILEGIOS A USUARIO A UN BASE DE DATOS ESPECIFICA
GRANT ALL PRIVILEGES ON world.* TO 'gbauz'@'localhost';