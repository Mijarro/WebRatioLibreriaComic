-- Proveedor_Comic [rel1]
alter table "public"."proveedor"  add column  "comic_oid"  int4;
alter table "public"."proveedor"   add constraint fk_proveedor_comic foreign key ("comic_oid") references "public"."comic" ("oid");


-- Categorias_Comic [rel2]
create table "public"."categorias_comic" (
   "categorias_oid"  int4 not null,
   "comic_oid"  int4 not null,
  primary key ("categorias_oid", "comic_oid")
);
alter table "public"."categorias_comic"   add constraint fk_categorias_comic_categorias foreign key ("categorias_oid") references "public"."categorias" ("oid");
alter table "public"."categorias_comic"   add constraint fk_categorias_comic_comic foreign key ("comic_oid") references "public"."comic" ("oid");


