
-------------------------------------------------------------------------------
INSERT INTO public.campeonato(
	tipo_idreservacion, fechareservacion, cant_campeonatos, nombres, usos,servicio)
	VALUES 
	(1, '03/06/2022', 4, 'basquet', 16, 501),
	 (2, '03/06/2022', 6, 'basquet', 4, 503),
	  (3, '04/06/2022', 8, 'basquet', 8, 505),
	   (4, '04/06/2022', 10, 'basquet', 12, 506),
	   (5, '05/06/2022', 6, 'basquet', 8, 504) 
		(6, '03/02/2021', 3, 'futbol', 6, 502),
(7, '03/05/2022', 4, 'volley', 6, 503),
(8, '04/03/2021', 7, 'futbol', 2, 504),  
(9, '04/04/2020', 4, 'basquet', 3, 505),
(10, '05/06/2021', 2, 'volley', 6, 506) 
;

-------------------------------------------------------------------------------
INSERT INTO  public.empleados(
	id_empleado, id_tipoempleado, empleado_nomb, empleado_apell, cedidentidademple, direccion, fecha_nacim, fecha_ingreso)
	VALUES 
	(1, 1010, 'juan', 'casanova', '1325342543', 'calle 12', '05/04/1982', '02/07/2016'),
	(2, 1011, 'andres', 'marquez', '1926352436', 'calle 17', '08/04/1992', '03/03/2018'),
	(3, 1012, 'maria', 'alonso', '1829374653', 'calle 26', '07/08/1989', '04/08/2019'),
	(4, 1013, 'agustin', 'pin', '1372536360', 'calle 52', '06/02/1999', '08/04/2020')
	
	;
-------------------------------------------------------------------------------

select * from espacios
insert into espacios values('6','no','50','08/08/2020');
insert into espacios values('4','no','50','10/12/2021');
insert into espacios values('1','si','50','07/09/2019');
insert into espacios values('5','no','50','19/08/2022');
insert into espacios values('3','si','50','01/01/2018');
insert into espacios values('0','no','50','25/08/2019');
insert into espacios values('7','si','50','16/11/2017');
insert into espacios values('8','no','50','30/04/2021')

-------------------------------------------------------------------------------



INSERT INTO public.factura(
idf_factura, id_reservacion, realtotal)
VALUES 
(1, 6666, 45.4),
(2, 6664, 120.0),
(3, 6665, 150.0),
(4, 6667, 200.0),
(5, 6668, 250.0),
(6, 6669, 800.0),
(7, 6610, 75.0),
(8, 6611, 330.0);
		

-------------------------------------------------------------------------------

INSERT INTO public.mantenimiento(
idempleadomantenimiento, num_mantenimientos, horario, id_empleado)
VALUES 
(1, 2, '03/12/2021',1),
(2, 3, '01/05/2022',2),
(3, 4, '09/02/2020',4),
(4, 2, '01/08/2019',3),
(5, 1, '21/11/2020',1),
(6, 4,'28/09/2017',3),
(7, 6, '28/03/2018',4),
(8, 5, '15/06/2020',2);
------------------------------------------------------------------------------------

INSERT INTO public.reservacion(
id_reservacion, fecha_reservacion, tipo_evento, precio_reservacion)
VALUES 
(6666, '2020-03-01','basquet', 100.00),
(6664, '2021-08-07', 'futbol',110.00),
(6665, '2020-04-05','volley',90.00),
(6667, '2019-05-23','futbal',75.00),
(6668, '2021-08-21','volley',90.00),
(6669, '2021-09-15','basquet',115.00),
(6610, '2020-12-15','futbol',70.00),
(6611, '2021-05-15','futbol',95.00);


------------------------------------------------
INSERT INTO public.servicios(
id_servicio, servicio_descripcion,precioporservicios)
VALUES 
(501, 'comida', 50.00),
(502, 'hidratacion',60.00),
(503, 'premiacion',70.00),
(504, 'arbitraje',40.00),
(505, 'hidratacion',30.00),
(506, 'arbitraje',60.00),
(507, 'comida',75.00),
(508, 'arbitraje',30.00);
(509, 'arbitraje',30.00);

----------------------------------------------------------------------
INSERT INTO public.tipo_empleado(
id_tipoempleado, empleadodescripcion)
VALUES 
(1010, 'mantenimiento'),
(1011, 'atencion al cliente'),
(1012, 'mantenimiento'),
(1013, 'atencion al cliente'),
(1014, 'mantenimiento' ),
(1015, 'atencion al cliente' ),
(1016, 'mantenimiento'),
(1017, 'mantenimiento');
(1018, 'atencion al cliente');
		








