/******************************************************************************
* Autor: Sebastián Santana
* Fecha: 18-08-2021
* Version: 1.0
******************************************************************************/
-- SP para insertar los datos de un paciente 
-- Parámetros IN:
--  _idpaciente = rut del paciente
-- _nomre = nombre paciente
-- _telefono = telefono paciente
-- _correo = email paciente

delimiter $$
create procedure sp_insertarpaciente
	(
    in _idpaciente varchar(12),
    in _nombre varchar(100),
    in _telefono varchar(12),
    in _correo varchar(100)
    )
begin
	insert into paciente (idpaciente, nombre, telefono, correo)
    values (_idpaciente, _nombre, _telefono, _correo);
end
$$
