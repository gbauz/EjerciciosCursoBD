--Ejemplo de procedimiento almacenado
--Actualizando el campo LifeExpectancy 
DELIMITER //
CREATE PROCEDURE Sp_ActualizarEdad()
BEGIN 
update country SET LifeExpectancy= 50;
END //
DELIMITER;

CALL Sp_ActualizarEdad();

DELIMITER //

--Ejemplo de procedimiento almacenado con el parametro IN
CREATE PROCEDURE Sp_BuscarPais(
IN Name_param Varchar(255)
     )
BEGIN
SELECT * FROM country WHERE Name=Name_param;
END //
DELIMITER;

CALL Sp_BuscarPais("Argentina");



--Ejemplo de procedimiento almacenado con el parametro ON

DELIMITER //
CREATE PROCEDURE Sp_CalcularCuadrado (IN Population Int, OUT resultado Int)
BEGIN
 SET resultado=Population*Population;
END //
DELIMITER;

CALL Sp_CalcularCuadrado(5,@resultado);
SELECT @resultado AS cuadrado

--ELIMINAR PROCEDIMIENTO ALMACENADO

CALL Sp_CalcularCuadrado(5,@resultado);

--EJEMPLO DE FUNCION CASE

DELIMITER//
CREATE FUNCTION F_Descripcioncontinente(pais_codigo CHAR(3))
RETURNS VARCHAR(100)
BEGIN
DECLARE Continente_descripcion Varchar(100);

SELECT
CASE Continent
WHEN 'Asia' THEN 'Es pais es asiatico.'
WHEN 'Europe' THEN 'Es pais es europeo,'
WHEN 'Africa' THEN 'Es un pais africano'
WHEN 'Oceania' THEN 'Es un pais oceanico'
WHEN 'South America' THEN 'Es un pais sudamericano'
WHEN 'North America' THEN 'Es una pais norteamericano'
WHEN 'Antarctica' Then 'Es un pais antartico'
ELSE 'Continente desconocido'
END INTO continente_descripcion
FROM country
WHERE Code=pais_codigo;
RETURN continente_descripcion;
END//
DELIMITER;

SELECT F_Descripcioncontinente('Argentina');

--EJEMPLO DE FUNCION CON IF

DELIMITER //

CREATE FUNCTION F_verificarPoblacion(pais_codigo char(3),poblacion_limite INT)
RETURNS VARCHAR(100)
BEGIN
DECLARE mensaje varchar(100);
IF(SELECT Population FROM country where Code=pais_codigo)>poblacion_limite THEN
SET mensaje='La poblacion supera el maximo';
ELSE
SET mensaje='La poblacion no supera el limite';
END IF;
RETURN mensaje;
END//
DELIMITER;

Select F_verificarPoblacion('USA',50000);
