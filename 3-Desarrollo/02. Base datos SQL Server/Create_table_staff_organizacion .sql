create database staff_organization;
use staff_organization;

create table tipo_documento(
id_tipo_documento smallint not null,
abreviacion varchar (5) not null,
nombre_documento varchar (30) not null,
primary key (id_tipo_documento)
);

create table rol(
id_rol int  not null,
nombre_rol varchar (30),
primary key (id_rol)
);

create table tipo_donacion(
id_tipo_donacion int not null,
nombre_donacion varchar (20) not null,
primary key (id_tipo_donacion)
);

create table donacion(
valor_donacion int not null,
fecha_donacion datetime not null,
id_tipo_donacion int not null,
id_numero_documento varchar(30) not null,
id_tipo_documento smallint not null
);

create table sede(
id_sede int not null,
direccion varchar (25) not null,
propietario varchar (10) not null,
telefono bigint  not null,
primary key (id_sede)
);

create table mantenimiento_sede(
id_mantenimiento_sede int not null,
nombre_mantenimiento varchar(55) not null,
costo int not null,
descripcion varchar(55) not null,
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
fecha datetime not null,
id_reunion int not null,
primary key (id_horarios)
);

create table usuario(
id_numero_documento varchar(30) not null,
primer_nombre varchar(25) not null,
segundo_nombre  varchar(25),
primer_apellido varchar (25) not null,
segundo_apellido varchar(25),
telefono bigint  not null,
email varchar(50) not null unique,
contraseña varchar(50) not null,
fecha_nacimiento datetime not null,
estado_civil varchar(25) not null,
id_tipo_documento smallint not null,
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
alter table usuario add constraint fk_rol_usuario foreign key (id_rol) references rol(id_rol) on update cascade;
alter table usuario add constraint fk_sede_usuario foreign key (id_sede) references sede(id_sede) on update cascade;
alter table usuario add primary key (id_tipo_documento, id_numero_documento);

-- Usuario/donacion--
alter table donacion add constraint fk_donacion_usuario foreign key (id_tipo_documento, id_numero_documento) references usuario(id_tipo_documento, id_numero_documento) on update cascade;
alter table donacion add constraint fk_donacion_tipo_donacion foreign key (id_tipo_donacion) references tipo_donacion(id_tipo_donacion) on update cascade;
alter table donacion add primary key (id_tipo_donacion);

-- Usuario/reunion --
alter table reunion add constraint fk_sede_reunion foreign key (id_sede) references sede(id_sede) on update cascade;


-- Usuario/horario --
alter table horarios add constraint fk_horario_reunion foreign key (id_reunion) references reunion(id_reunion) on update cascade;


-- Usuario/mantenimiento_sede --
alter table mantenimiento_sede add constraint fk_mantenimiento_sede_sede foreign key (id_sede) references sede(id_sede) on update cascade;
