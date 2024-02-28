-- Proveedor [ent2]
alter table "public"."proveedor"  add column  "emailproveedor"  varchar(255);
alter table "public"."proveedor"  add column  "telefonoproveedor"  int4;


-- Comic [ent3]
alter table "public"."comic"  add column  "descripcioncomic"  varchar(255);
alter table "public"."comic"  add column  "edad"  int4;
alter table "public"."comic"  add column  "fechapublicacion"  date;
alter table "public"."comic"  add column  "autor"  varchar(255);
alter table "public"."comic"  add column  "precio"  float8;


-- Categorias [ent4]
alter table "public"."categorias"  add column  "descripcioncategoria"  varchar(255);


