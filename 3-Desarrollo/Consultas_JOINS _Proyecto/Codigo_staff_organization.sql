use staff_organization;

-- Tipo de documento--
insert into tipo_documento(id_tipo_documento,abreviacion,nombre_documento)
values (1,'T.I','Tarjeta de identidad'),
       (2,'C.C','cedula de ciudadania'),
       (3,'P.T','pasaporte');
 
-- Tipo de donación --
insert into tipo_donacion(id_tipo_donacion,nombre_donacion,id_donacion)
values (001,'diezmo',01),
	   (002,'ofrenda',02),
       (003,'donacion',03);
       
-- Donación --
insert into donacion(id_donacion,valor_donacion,fecha_donacion,hora_donacion,id_tipo_donacion,id_numero_documento,id_tipo_documento)
values (01,2000,'2017-10-02','07:02:15',001,1001331816,'1'), 
	   (02,3000,'2016-12-18','09:20:20',002,52191527,'2'),
	   (03,4000,'2014-05-20','10:30:25',003,1022382612,'3'),
	   (04,5000,'2010-08-16','10:22:02',001,79126086,'3'),
	   (05,6000,'2012-07-17','12:26:03',002,1001747433,'2'),
	   (06,7000,'2002-01-15','02:52:05',003,1001066787,'2'),
       (07,8000,'2013-06-17','03:25:05',001,1001174856,'3'),
	   (08,9000,'1993-07-14','05:47:58',003,1152121212,'3'),
       (09,10000,'2003-02-15','09:59:45',003,1002115464,'2'),
       (10,11000,'2014-08-17','08:38:25',002,1310202332,'1'),
       (11,12000,'2004-09-18','10:45:05',002,1166161300,'2'),
       (12,13000,'2002-10-17','07:30:25',001,1000212155,'1'),
       (13,14000,'1994-11-18','04:45:50',002,1015115510,'3'),
       (14,15000,'2014-12-09','05:55:25',003,1061311311,'2'),
       (15,16000,'2011-07-17','08:45:40',001,1036489245,'1'),
       (16,17000,'2012-06-28','09:59:25',003,1002235489,'1'),
       (17,18000,'2014-03-17','03:45:58',002,1815100154,'2'),
       (18,19000,'2014-01-19','07:15:25',003,1031151841,'3'),
       (19,20000,'2004-11-27','08:45:12',001,1852121200,'2'),
       (20,21000,'2015-10-19','06:25:16',002,1002544876,'1');
	
-- rol --
insert into rol(id_rol,nombre_rol)
values (011,'privileged account'),
	   (012,'work account'),
	   (013,'sight account');

-- usuario --
insert into usuario (id_numero_documento, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, telefono, email, contraseña, fecha_nacimiento, estado_civil, id_tipo_documento, id_sede, id_rol )
values (1001331816,'yeferson','feryan','baron','rueda',3195909792,'yfbaron6@misena.edu.co','7pñ42','1989-02-05-','casado',1,030,011),
       (52191527,'janeth','','rueda','garcia',3125884390,'jane.th75@hotmail.com','14ñp45','1999-02-05','casado',2,032,012),
	   (1022382612,'ervin','duvan','baron','rueda',3124255573,'dbaron6@gmail.com','16ñp','2002-06-05','soltero',3,030,012),
	   (79126086,'fernando','','baron','blanco',3114859551,'ferbaron63@hotmail.com','78ñp6','2008-06-05','soltero',3,030,011),
	   (1001747433,'Anderson','Dario','Quiros','Ramirez',3228551923,'andersoqo2018@gmail.com','12ñp45','2001-05-08','soltero',2,032,013),
	   (1001066787,'Andres','Felipe','Olaya','Cadena',3155685661,'aolaya79@misena.edu.co','12pñ56','1980-07-08','casado',1,032,012),
	   (1001174856,'devid','sebastian','bareño','leon',3222327114,'dsbareno65@misena.edu.co','45ñp92','2004-04-04','soltero',3,030,012),
	   (1152121212,'yenifer','yulieth','fonseca','perez',3124564892,'yenifer12@gmail.com','466ñ16','1997-09-08','casado',2,030,011),
	   (1002115464,'carlos','eduardo','vargas','guevara',3111556455,'carlitos12e@gmail.com','78pñ42','2003-01-01','soltero',3,032,013),
	   (1310202332,'ramiro','fabian','lopez','mina',3245589682,'ramiroian12@hotmail.com','78ñp42','1995-05-05','casado',1,031,012),
	   (1166161300,'catalina','isabel','mendoza','miranda',3145699945,'ctamemiranda@hotmail.com','78ñ42','1998-02-08','casaddo',1,031,011),
	   (1000212155,'ximena','','baron','rodriguez',3044895623,'ximena12@gmail.com','pñp','1996-08-06','casada',2,031,011),
	   (1015115510,'yeison','adrian','fernandez','rosa',3154856521,'yeifer167@gmail.com','78pñ42','1995-10-08','casado',3,030,011),
	   (1061311311,'cristian','','henao','santos',3210244596,'ycristianhe28@hotmail.com','78pñ','1999-10-01','casado',2,030,012),
	   (1036489245,'camila','','toro','quintero',3200014810,'camiquintero93@gmail.com','78pñ42','1970-09-09','casado',1,032,013),
	   (1002235489,'carolina','fernanda','hernandez','ochoa',3185641025,'gochoahe@gmail.com','789ñ42','1980-09-06','soltero',2,031,012),
	   (1815100154,'miguel','santiago','beltran','ospina',3191212458,'miguelospi125@hotmail.com','78pñ42','1985-02-09','soltero',3,032,013),
	   (1031151841,'sandro','felipe','zaragoza','perez',3061235474,'sfelipoza@misena.edu.co','789ñ42','1999-10-05','casado',3,031,013),
	   (1852121200,'david','sebastian','caro','rueda',3213105476,'dsebastianw23@hotmail.com','789ñp42','1988-04-08','soltero',2,030,012),
	   (1002544876,'juliana','valentina','chacon','mendez',3222378940,'valeentiina12@gmail.com','78pñ42','2015-02-06','casada',1,030,011);
       
-- Sede--
insert into sede(id_sede,nombre_sede,direccion,propietario,telefono)
values (030,'suba','','jose',3193909292),
	   (031,'villao','','maria',3114849551),
       (032,'funza','','murri',3124884390);

-- Reunion --
insert into reunion(id_reunion,nombre_reunion,id_sede)
values (0020,'adulto mayor',030),
	   (0021,'adulto',030),
       (0022,'jovenes',031),
       (0023,'niños',032),
       (0024,'profesores',031),
       (0025,'consolidacion',032),
       (0026,'servidores del redil',030),
       (0027,'ministerio de ayudas',030),
       (0028,'ministerio de ujueres',031),
       (0029,'ministerio de seguridad',032),
       (0030,'ministerio de alabanza',030),
       (0031,'ministerio de iglesia infantil',030),
       (0032,'ministerio de directiva de jovenes',031),
       (0033,'ministerio de logistica',031),
       (0034,'ministerio de ujieres jovenes',030),
       (0035,'ministerio de audio visuales',032),
       (0036,'ministerio de la consola',031),
       (0037,'ministerio de pastores',030),
       (0038,'ministerio de gedeones',031),
       (0039,'ministerio de TNT',032);
       
-- horarios --
insert into horarios(id_horarios,duracion,hora,fecha,id_reunion)    
values (100,'03:00:00','07:00:00','2014-05-14','0020'),
       (101,'03:00:00','09:00:00','2018-05-17','0021'),
       (102,'03:00:00','11:00:00','2017-05-14','0022'),
       (103,'03:00:00','12:00:00','2016-05-14','0023'),
       (104,'03:00:00','13:00:00','2015-07-14','0024'),
       (105,'03:00:00','14:00:00','2014-06-14','0025'),
       (106,'03:00:00','15:00:00','2013-05-14','0026'),
       (107,'03:00:00','16:00:00','2012-10-14','0027'),
       (108,'03:00:00','17:00:00','2011-05-14','0028'),
       (109,'03:00:00','18:00:00','2010-05-14','0029'),
       (110,'03:00:00','19:00:00','2017-05-10','0030'),
       (111,'03:00:00','20:00:00','2015-05-14','0031'),
       (112,'03:00:00','21:00:00','2012-10-14','0032'),
       (113,'03:00:00','22:00:00','2016-1-18','0033'),
       (114,'03:00:00','23:00:00','2018-05-14','0034'),
       (115,'03:00:00','24:00:00','2016-06-01','0035'),
       (116,'03:00:00','06:30:00','2017-06-14','0036'),
       (117,'02:00:00','07:30:00','2018-05-28','0037'),
       (118,'02:00:00','08:00:00','2017-05-13','0038'), 
       (119,'02:00:00','09:30:00','2019-09-24','0039');
       
-- log error --
insert into log_error(id_error,descripcion_error,fecha_error,hora_error)
values   (300,'Se evidencia el error al ingresar contraseña','2001-05-06','21:15:43'),  
         (301,'Se evidencia el error al registrar el correo','2005-01-07','23:02:36'),  
         (302,'Se evidencia el error al editar el personal ','2015-11-05','11:02:40');
         
-- servidor_correo --
insert into servidor_correo(id_servidor,dominio_correo)
values  (0400,'dominio administrador'),
		(0402,'dominio usuario'),
        (0403,'dominio cliente');
         
-- mantenimiento_sede--
insert into mantenimiento_sede(id_mantenimiento_sede,nombre_mantenimiento,costo,descripcion,nombre_sede,id_sede)
values (500,'aseo baños',40000,'limpieza interna del sector','suba',030),
	   (501,'aseo piso',10000,'limpieza interna del sector','villao',030),
       (502,'aseo ventanas',50000,'limpieza interna del sede','funza',031),
       (503,'aseo puertas',19000,'limpieza interna del sede','villao',032),
       (504,'aseo luces',14000,'limpieza interna del sede','suba',032),
       (505,'aseo computadores',54000,'limpieza interna del sede','funza',031),
       (506,'aseo tv',20000,'limpieza interna del sede','villao',031),
       (507,'aseo paredes',6000,'limpieza interna del sede','suba',030),
       (508,'aseo escaleras',52000,'limpieza interna del sede','funza',032),
       (509,'aseo techo',33000,'limpieza interna del sede','funza',032),
       (510,'aseo ventiladores',66000,'limpieza interna del sede','suba',031),
       (511,'aseo sillas',60000,'limpieza interna del sede','funza',032),
       (512,'aseo cargadores',70000,'limpieza interna del sede','villao',030),
       (513,'aseo telefonos',56000,'limpieza interna del sede','suba',032),
       (514,'aseo piso',30000,'limpieza interna del sede','suba',032),
       (515,'aseo mesas',40000,'limpieza interna del sede','funza',031),
       (516,'aseo escritorios',62000,'limpieza interna del sede','villao',032),
       (517,'aseo cafeteria',50000,'limpieza interna del sede','funza',031),
       (518,'aseo trajes de seguridad',60000,'limpieza interna del sede','funza',032),
       (519,'aseo cascos de seguridad',200000,'limpieza interna del sede','suba',030),
       (520,'aseo sistema de elctricidad',205000,'limpieza interna del sede','villao',030);
       