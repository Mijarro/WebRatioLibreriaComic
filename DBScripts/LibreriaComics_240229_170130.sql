-- Comic_Proveedor [rel4]
alter table "public"."comic"  add column  "proveedor_oid"  int4;
alter table "public"."comic"   add constraint fk_comic_proveedor foreign key ("proveedor_oid") references "public"."proveedor" ("oid");


