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
insert into producto (Nombre,Descripcion,Precio,Cantidad,Categoria,Imagen) values 
("crema de afeitar", "producto para la barba", 20000, 1, "limpieza facial ", 00 );
insert into rol values (1, "cliente"), (2, "barbero"); 
insert into servicio values (1, "Corte de cabello", 25000, "50 minutos ",  "cortes de cabello");
insert into servicio (Nombre,Precio,Duracion,Categoria) values ("arreglo de barba", 25000, "20 minutos ",  "afeitado y arreglo de barba "), 
("lavado de cabello  ", 55000, "1 hora y media",  "tratamiento capilar"),
("Trenzas", 25000, "2 horas",  "Peinados femeninos"), 
("asesoria de imagen",99000, "2 horas",  "Imagen");

/*Tipos de documentos*/
insert into tipodoc values (1, "CC");
insert into tipodoc values (2, "TI"), (3, "PASAPORTE"), (4, "CE");

/*usuarios*/
insert into usuario values (1103500205, "Reyna", "romero ", "322548552", "reyna@gmail.com", 1, "123");
insert into usuario values (1258964713, "Samuel", "Ruiz", "3205060072", "samuel@gmail.com", 2, "24565");
insert into usuario values (1548664713, "Sofia", "Romero", "3201845702", "Sofial@gmail.com", 3, "023545");
insert into usuario  (Documento, Nombre, Apellido, Telefono, Email, Contrasenia) values  (2258964713, "Samuelito",  "morales","3205060072", "samuel@gmail.com", "24565"), (0258963145, "Solanyi","moreno", "3001060072", "sol@gmail.com", "258963");




 

