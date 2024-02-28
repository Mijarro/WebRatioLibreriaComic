-- Proveedor_Comic [rel1]
alter table "public"."proveedor"  add column  "comic_oid"  int4;
alter table "public"."proveedor"   add constraint fk_proveedor_comic foreign key ("comic_oid") references "public"."comic" ("oid");


