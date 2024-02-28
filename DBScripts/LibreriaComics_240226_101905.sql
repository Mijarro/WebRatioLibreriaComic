-- Categorias [ent4]
create table "public"."categorias" (
   "oid"  int4  not null,
   "nombrecategoria"  varchar(255),
  primary key ("oid")
);


-- Proveedor [ent2]
alter table "public"."proveedor"  add column  "nombreproveedor"  varchar(255);


-- Comic [ent3]
alter table "public"."comic"  add column  "titulocomic"  varchar(255);


