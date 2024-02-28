-- Proveedor [ent2]
create table "public"."proveedor" (
   "oid"  int4  not null,
   "nombreproveedor"  varchar(255),
   "emailproveedor"  varchar(255),
   "telefonoproveedor"  int4,
  primary key ("oid")
);


-- Comic [ent3]
create table "public"."comic" (
   "oid"  int4  not null,
   "titulocomic"  varchar(255),
   "precio"  float8,
   "descripcioncomic"  varchar(255),
   "edad"  int4,
   "fechapublicacion"  date,
   "autor"  varchar(255),
  primary key ("oid")
);


-- Categorias [ent4]
alter table "public"."categorias"  add column  "descripcioncategoria"  varchar(255);


