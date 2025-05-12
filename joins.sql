use sistema_barberia;

select tip.TipoDoc, us.Documento, us.Nombre, us.Apellido from usuario as us
join tipodoc as tip on us.Id_Tipodoc = tip.Idtipodoc;

select us.Documento, us.Email, us.Nombre, us.Apellido from usuario as us 
left join  tipodoc as tip on us.Id_tipodoc = tip.Idtipodoc
where tip.Idtipodoc is null;

select tip.TipoDoc from usuario as us 
right join tipodoc as tip on us.Id_tipodoc = tip.Idtipodoc
where us.Id_tipodoc is null;


