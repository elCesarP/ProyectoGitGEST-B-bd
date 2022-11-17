-------------------------------------------------------------------------------------------
1era 

/*Mostrar el historico de eventos reservados en un mes en especifico*/
SELECT extract(MONTH from fecha_reserva), count (extract(MONTH from fecha_reserva))
 	FROM plublic.reservacion where extract (MONTH from fecha_reserva)=4
		group by extract (MONTH from fecha_reserva)
;




-------------------------------------------------------------------------------------------
2da 

codigo de consultas 

/*Histórico anual de recaudaciones por tipo de evento. 
En una columna debe aparecer el año,  en otra el tipo 
de evento, en otra columna la cantidad de dinero recolectada. */
/*
SELECT extract(year from fecha_reserva),count(extract(year from fecha_reserva)), tipo_evento, sum(realtotal)
 FROM public.factura inner join reservacion 
	on reservacion.id_reservacion=factura.id_reservacion
	group by extract(year from fecha_reserva), tipo_evento
	; 
	*/	
select * from campeonato

-------------------------------------------------------------------------------------------
3era

/*· Histórico de número de tipos de 
campeonatos celebrados en el centro deportivo. 
En una columna debe aparecer el año, en otra columna el tipo de evento deportivo, 
en otra columna la cantidad de campeonatos 
para esa disciplina que se han jugado*/
SELECT extract(year from fechareservacion),nombres,count( nombres)
FROM public.campeonato group by extract(year from fechareservacion),nombres;

-------------------------------------------------------------------------------------------
4ta.
/*· Histórico de mantenimientos realizados al año por cada empleado. 
En una columna debe aparecer el año,  
y en otra la cantidad de mantenimientos que ese empleado ha dado. 
*/

SELECT extract(year from horario),count(extract(year from horario)) from mantenimiento
inner join empleados on mantenimiento.id_empleado=empleados.id_empleado 
group by extract(year from horario) order by extract(year from horario)



-------------------------------------------------------------------------------------------
5ta



/*
Historico de cantidad de veces que se ha jugado en total
algún tipo de juego y cuanto dinero se ha recogido
en una columna debe aparecer el tipo de juego,
en otra columna el total del dinero recogido 
*/
SELECT nombres as tipo_de_jueggo, sum(realtotal) as dinero_recogido
 FROM campeonato inner join factura
	on campeonato.tipo_idreservacion=factura.idf_factura
	group by nombres
	; 




-------------------------------------------------------------------------------------------