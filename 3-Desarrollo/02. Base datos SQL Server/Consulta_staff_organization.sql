use staff_organization;

-- Lista de usuarios registrados con el tipo de documento--
select id_tipo_documento,primer_nombre,primer_apellido
from usuario;

-- Lista de usuarios registrados con el tipo de documento diferente de 'CC'--
select *
from usuario
where id_tipo_documento <> 01;

-- Cantidad de usarios registrados--
select count(*)
from usuario;

-- Lista de usuarios con rol privileged account con sus datos--
select id_rol,id_tipo_documento,primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,fecha_nacimiento,estado_civil,nombre_sede,telefono,email
from usuario
where id_rol = 011;

-- Reporte de donacion por valor, fecha, hora--
select id_donacion,valor_donacion,fecha_donacion,hora_donacion
from donacion;

-- Usuarios, la sede en la que asistio , nombre de la sede--
select id_sede,nombre_sede,primer_nombre,primer_apellido
from usuario;

-- lista de reuniones y horarios--
select *
from horarios
inner join reunion on 
reunion.id_reunion= horarios.id_reunion;

-- Cantidad total de donaciones registradas--
select count(*)
from donacion;

-- Lista de donacion de usuarios--
select *
from donacion;

-- Cantidad de sedes--
select count(*)
from sede;

-- Nombres y apellidos, documento de identidad del usuario que tiene rol con mas privilegios--
select id_tipo_documento,primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,nombre_rol
from rol
inner join usuario on
rol.id_rol = usuario.id_rol
where nombre_rol ="privileged account";

-- Nombres y apellidos, documento de identidad del usuario que tiene rol con menos privilegios--
select id_tipo_documento,primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,nombre_rol
from rol
inner join usuario on
rol.id_rol = usuario.id_rol
where nombre_rol ="sight account";

-- Nombres y apellidos, documento de identidad del usuario que no esten en la sede suba--
select id_tipo_documento,primer_nombre,segundo_nombre,primer_apellido,segundo_apellido,nombre_sede
from sede 
join usuario on
sede.id_sede = usuario.id_sede
where not nombre_sede = "suba";

-- Ordenar usuario, donacion , rol--
SELECT primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, nombre_sede, nombre_rol
FROM usuario
JOIN sede ON
usuario.id_sede = sede.id_sede
JOIN rol ON
usuario.id_rol = rol.id_rol
ORDER BY primer_nombre ASC;

-- Ordenar donacion por fecha (Desde la más actual a la más antigua)--
select *
from donacion
order by fecha_donacion DESC;

