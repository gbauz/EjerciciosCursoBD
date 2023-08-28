create table mascota(
id int AUTO_INCREMENT PRIMARY KEY,
nombre varchar(50),
raza varchar(50),
color varchar(50),
sexo varchar(50)
);

create table programas(
id_nombre int AUTO_INCREMENT PRIMARY KEY,
descripcion varchar(50),
conductores varchar(50),
horario_inicio time,
horario_fin time
);