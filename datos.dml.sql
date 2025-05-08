use sistema_barberia;

/* rename table es para cambiar el nombre de una tabla*/
rename table servicios to servicio;
rename table cita_servicios to cita_servicio;

/*alter table para agregar una nueva columna*/
alter table servicio add marca varchar(30);

/*alter table ____ change column para cambiar el nombre de una columna*/
alter table servicio change column marca Marca varchar(30);

insert into barbero values (1, "samuel", 1234567890, "samuel@gmail.com");
insert into cita values (1, "2025-10-20 09:30:00", 'disponible', 1, 1, 1);
insert into cita_servicio  values (1, 1);
insert into estado values (1, "disponible"), (2,"ocupado"), (3,"reservado"), (4,"cancelado"), (5,"en espera");
insert into factura values (1, "2025-10-20 08:30:00", 2000, 1, 1);
insert into factura_servicio values (1, 1);
insert into producto values (1, "shampoo", "producto para el cabello", 25000, 1, "Limpieza capilar", 00 );
insert into rol values (1, "cliente"), (2, "barbero"); 
insert into servicios values (1,"Corte de cabello", 25000, "50 minutos ",  "cortes de cabello ");
insert into servicios (Nombre,Precio,Duracion,Categoria) values ("arreglo de barba", 25000, "20 minutos ",  "afeitado y arreglo de barba "), ("lavado de cabello  ", 55000, "1 hora y media",  "tratamiento capilar"),("Trenzas", 25000, "2 horas",  "Peinados femeninos"), ("asesoria de imagen",99000, "2 horas",  "Imagen");

insert into tipodoc values (1, "CC");
insert into tipodoc values (2, "TI"), (3, "PASAPORTE"), (4, "CE");
insert into usuario values (1, "reyna", "322548552", "reyna@gmail.com", 1103500205, "123");



 

