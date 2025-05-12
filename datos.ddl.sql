drop database if exists sistema_barberia;
create database sistema_barberia;
use sistema_barberia;

create table usuario(
Documento int PRIMARY KEY auto_increment,
    Nombre varchar (30),
    Apellido varchar (30),
    Telefono varchar (10),
    Email varchar(50),
    Id_Tipodoc int,
    Contrasenia varchar (30)
    );
 
  create table tipodoc(
  Idtipodoc int PRIMARY KEY,
  TipoDoc varchar (30)
  );
 
create table Rol (
IdRol int PRIMARY KEY,
NomRol varchar (30)
);
   
create table cita(
    IdCitas int PRIMARY KEY,
    FechaHora timestamp,
    Estado varchar(40),
    IdCliente int,
    IdEstado int,
    IdBarbero int
    );
   
create table estado(
IdEstado int PRIMARY KEY,
    NomEstado varchar(30)
    );
    
create table servicios (
IdServicio int PRIMARY KEY auto_increment, 
    Nombre Varchar (30),
    Precio int,
    Duracion varchar (30),
    Categoria varchar (30)
    );

create table cita_servicios (
    IdCitas int,
    IdServicio int,
    PRIMARY KEY (IdCitas, IdServicio)
);
   
create table barbero(
IdBarbero int PRIMARY KEY,
    Nombre varchar(30),
    Telefono int,
    Email varchar(30)
    );
   
create table producto(
 Idproducto int PRIMARY KEY auto_increment,
 Nombre varchar (30),
 Descripcion varchar (30),
 Precio int,
 Cantidad int,
 Categoria varchar(30),
 Imagen int
 );

create table factura(
 IdFactura int PRIMARY KEY,
    Fecha datetime,
    Total int,
    IdUser int,
    IdProducto int
    );

create table factura_servicios(
 IdFactura int,
IdServicio int,
PRIMARY KEY (IdFactura, IdServicio)
 );


alter table usuario 
add constraint fk_tipodoc
foreign key (Id_tipodoc) references tipodoc(Idtipodoc);

alter table cita
add constraint fk_cliente
foreign key (IdCliente) references usuario(IdUser);

alter table cita
add constraint fk_estado
foreign key (IdEstado) references estado(IdEstado);

alter table cita
add constraint fk_barbero
foreign key (IdBarbero) references barbero(IdBarbero);

alter table cita_servicios
add constraint fk_cita
foreign key (IdCitas) references cita(IdCitas);

alter table cita_servicios
add constraint fk_servicio
foreign key (IdServicio) references servicios(IdServicio);

alter table factura
add constraint fk_factura
foreign key (IdUser) references usuario(IdUser);

alter table factura
add constraint fk_producto
foreign key (Idproducto) references producto(Idproducto);

alter table factura_servicios
add constraint fk_facturaSer
foreign key (IdFactura) references factura(IdFactura);

alter table factura_servicios
add constraint fk_facturaServicio
foreign key (IdServicio) references servicios(IdServicio);





