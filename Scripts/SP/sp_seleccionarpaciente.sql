/******************************************************************************
* Autor: Sebasti�n Santana
* Fecha: 18-08-2021
* Version: 1.0
******************************************************************************/
-- SP para seleccionar los datos de un paciente a trav�s del rut
-- Par�metros IN:
--  _idpaciente = rut del paciente

delimiter $$
create procedure sp_seleccionarpaciente
	( in _idpaciente varchar(12) )
begin
	select nombre, telefono, correo
    from paciente
    where idpaciente = _idpaciente;
end
$$
