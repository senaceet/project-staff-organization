create database staff_organization;
use staff_organization;

create table tipo_documento(
id_tipo_documento int  not null,
abreviacion varchar (10) not null,
nombre_documento varchar (20) not null,
primary key (id_tipo_documento)
);

create table rol(
id_rol int not null,
nombre_rol varchar (20),
primary key (id_rol)
);

create table tipo_donacion(
id_tipo_donacion int not null,
nombre_donacion varchar (20) not null,
id_donacion varchar (10)  not null,
primary key (id_tipo_donacion)
);

create table donacion(
id_donacion int not null,
valor_donacion int not null,
fecha_donacion date not null,
hora_donacion time not null,
id_tipo_donacion int not null,
id_numero_documento int not null,
id_tipo_documento int not null
);

create table sede(
id_sede int not null,
nombre_sede varchar (45) not null,
direccion varchar (25) not null,
propietario varchar (10) not null,
telefono bigint (20) not null,
primary key (id_sede)
);

create table mantenimiento_sede(
id_mantenimiento_sede int not null,
nombre_mantenimiento varchar(55) not null,
costo int not null,
descripcion varchar(55) not null,
nombre_sede varchar (25) not null,
id_sede int not null,
primary key (id_mantenimiento_sede)
);

create table reunion(
id_reunion int not null,
nombre_reunion varchar(40) not null,
id_sede int not null,
primary key (id_reunion)
);

create table horarios(
id_horarios int not null,
duracion time not null,
hora time not null,
fecha date not null,
id_reunion int not null,
primary key (id_horarios)
);

create table usuario(
id_numero_documento int not null,
primer_nombre varchar(25) not null,
segundo_nombre  varchar(25) not null,
primer_apellido varchar (25) not null,
segundo_apellido varchar(25) not null,
telefono bigint (20) not null,
email varchar(25) not null unique,
contraseña varchar(30) not null,
fecha_nacimiento date not null,
estado_civil varchar(25) not null,
id_tipo_documento int not null,
id_sede int not null,
id_rol int not null
);

create table log_error(
id_error int not null,
descripcion_error varchar(55) not null,
fecha_error date not null,
hora_error time not null,
primary key(id_error)
);

create table servidor_correo(
id_servidor int not null,
dominio_correo varchar(55) not null,
primary key(id_servidor)
);

-- Usuario/tipo documento --
alter table usuario add constraint fk_usuario_tipo_documento foreign key (id_tipo_documento) references tipo_documento(id_tipo_documento) on update cascade;
alter table usuario add index fk_usuario_tipo_documento_idx (id_tipo_documento);
alter table usuario add constraint fk_rol_usuario foreign key (id_rol) references rol(id_rol) on update cascade;
alter table usuario add index fk_rol_usuario_idx (id_rol);
alter table usuario add constraint fk_sede_usuario foreign key (id_sede) references sede(id_sede) on update cascade;
alter table usuario add index fk_sede_usuario_idx (id_sede);
alter table usuario add primary key (id_tipo_documento, id_numero_documento);

-- Usuario/donacion--
alter table donacion add constraint fk_donacion_usuario foreign key (id_tipo_documento, id_numero_documento) references usuario(id_tipo_documento, id_numero_documento) on update cascade;
alter table donacion add index fk_donacion_usuario_idx (id_tipo_documento, id_numero_documento);
alter table donacion add constraint fk_donacion_tipo_donacion foreign key (id_tipo_donacion) references tipo_donacion(id_tipo_donacion) on update cascade;
alter table donacion add index fk_donacion_tipo_donacion_idx(id_tipo_donacion);
alter table donacion add primary key (id_tipo_donacion, id_donacion);

-- Usuario/reunion --
alter table reunion add constraint fk_sede_reunion foreign key (id_sede) references sede(id_sede) on update cascade;
alter table reunion add index fk_sede_reunion_idx (id_sede);

-- Usuario/horario --
alter table horarios add constraint fk_horario_reunion foreign key (id_reunion) references reunion(id_reunion) on update cascade;
alter table horarios add index fk_horario_reunion_idx (id_reunion);

-- Usuario/mantenimiento_sede --
alter table mantenimiento_sede add constraint fk_mantenimiento_sede_sede foreign key (id_sede) references sede(id_sede) on update cascade;
alter table mantenimiento_sede add index fk_mantenimiento_sede_sede_idx (id_sede);












