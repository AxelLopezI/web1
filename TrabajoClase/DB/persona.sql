/*Si la bases de datos existe eliminala*/
DROP SCHEMA IF EXISTS `fes_ico`;

/*Creación de la base de Datos*/

CREATE SCHEMA IF NOT EXISTS `fes_ico` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;

/*unsamos nuestra base de datos*/
USE `fes_ico`;

/*creacion de una tabla*/

CREATE TABLE `alumno`(
    `nombre_usuario` text not null,
    `carrera` text not null,
    `no_cuenta` int (10) not null,
    `direccion` text not null,
    `telefono`varchar (8) not null,
    `email` text not null,
    `password` varchar (8) not null,
    `fecha_registro` datetime not null default current_timestamp,
    `permisos` int (11) not null default '1'

)ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Agregar registros*/
INSERT INTO `alumno` (`nombre_usuario`, `carrera`, `no_cuenta`, `dirección`, `telefono`, `email`, `password`, `fecha_registro`, `permisos`)values
(`Axel López`, `ICO`, `317075767`, `Callejón la Gloria #15`, `5572202633`, `axelopez@gmail.com`, `12345`),
(`Juan Pérez`, `Derecho`, `316061668`, `Plaza Sésamo`, `5522232425`, `juan_67@hotmail.com`, `c0ntr4s3ñ4`, `2020-01-28 13:45:02`), 
(`Nicole Sánchez`, `Arquitectura`, `312265543`, `Avenida Juárez #56`, `5531702688`, `nicole.sncz@outlook.com`, `vsx070395`, `2020-03-15 15:04:49`, `3`);


/*definir la llave primaria */

ALTER TABLE `alumno`
    ADD PRIMARY KEY (`no_cuenta`);