-- Group [Group]
create table "pg_catalog"."group" (
   "oid"  int4  not null,
   "groupname"  varchar(255),
  primary key ("oid")
);


-- Module [Module]
create table "pg_catalog"."module" (
   "oid"  int4  not null,
   "moduleid"  varchar(255),
   "modulename"  varchar(255),
  primary key ("oid")
);


-- User [User]
create table "pg_catalog"."user" (
   "oid"  int4  not null,
   "username"  varchar(255),
   "password"  varchar(255),
   "email"  varchar(255),
  primary key ("oid")
);


-- Proveedor [ent2]
create table "pg_catalog"."proveedor" (
   "oid"  int4  not null,
  primary key ("oid")
);


-- Comic [ent3]
create table "pg_catalog"."comic" (
   "oid"  int4  not null,
  primary key ("oid")
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table "pg_catalog"."group"  add column  "module_oid"  int4;
alter table "pg_catalog"."group"   add constraint fk_group_module foreign key ("module_oid") references "pg_catalog"."module" ("oid");


-- Group_Module [Group2Module_Module2Group]
create table "pg_catalog"."group_module" (
   "group_oid"  int4 not null,
   "module_oid"  int4 not null,
  primary key ("group_oid", "module_oid")
);
alter table "pg_catalog"."group_module"   add constraint fk_group_module_group foreign key ("group_oid") references "pg_catalog"."group" ("oid");
alter table "pg_catalog"."group_module"   add constraint fk_group_module_module foreign key ("module_oid") references "pg_catalog"."module" ("oid");


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table "pg_catalog"."user"  add column  "group_oid"  int4;
alter table "pg_catalog"."user"   add constraint fk_user_group foreign key ("group_oid") references "pg_catalog"."group" ("oid");


-- User_Group [User2Group_Group2User]
create table "pg_catalog"."user_group" (
   "user_oid"  int4 not null,
   "group_oid"  int4 not null,
  primary key ("user_oid", "group_oid")
);
alter table "pg_catalog"."user_group"   add constraint fk_user_group_user foreign key ("user_oid") references "pg_catalog"."user" ("oid");
alter table "pg_catalog"."user_group"   add constraint fk_user_group_group foreign key ("group_oid") references "pg_catalog"."group" ("oid");


-- Proveedor_Comic [rel1]
alter table "pg_catalog"."proveedor"  add column  "comic_oid"  int4;
alter table "pg_catalog"."proveedor"   add constraint fk_proveedor_comic foreign key ("comic_oid") references "pg_catalog"."comic" ("oid");


