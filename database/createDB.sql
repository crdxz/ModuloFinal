/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     19/11/2023 7:47:41 p.�m.                     */
/*==============================================================*/


alter table CARGO
   drop constraint FK_CARGO_RELATIONS_DEPENDEN;

alter table CARGO
   drop constraint FK_CARGO_RELATIONS_CARGO;

alter table CARGOEMPLEADO
   drop constraint FK_CARGOEMP_CARGOEMPL_EMPLEADO;

alter table CARGOEMPLEADO
   drop constraint FK_CARGOEMP_CARGOEMPL_CARGO;

alter table CATPRODUCTO
   drop constraint FK_CATPRODU_RELATIONS_CATPRODU;

alter table CONTACTO
   drop constraint FK_CONTACTO_RELATIONS_TIPOCONT;

alter table CONTACTO
   drop constraint FK_CONTACTO_RELATIONS_PERSONA;

alter table DETALLEFACTURA
   drop constraint FK_DETALLEF_RELATIONS_PRODUCTO;

alter table DETALLEFACTURA
   drop constraint FK_DETALLEF_RELATIONS_FACTURA;

alter table DIRECCION
   drop constraint FK_DIRECCIO_RELATIONS_PERSONA;

alter table DIRECCION
   drop constraint FK_DIRECCIO_RELATIONS_DIRECCIO;

alter table DIRECCION
   drop constraint FK_DIRECCIO_RELATIONS_NOMENCLA;

alter table FACTURA
   drop constraint FK_FACTURA_RELATIONS_TIPOFACT;

alter table FACTURA
   drop constraint FK_FACTURA_RELATIONS_EMPLEADO;

alter table FACTURA
   drop constraint FK_FACTURA_RELATIONS_PERSONA;

alter table FACTURA
   drop constraint FK_FACTURA_RELATIONS_FACTURA;

alter table HISTORICOPRECIO
   drop constraint FK_HISTORIC_RELATIONS_PRODUCTO;

alter table INVENTARIO
   drop constraint FK_INVENTAR_RELATIONS_PRODUCTO;

alter table INVENTARIO
   drop constraint FK_INVENTAR_RELATIONS_INVENTAR;

alter table INVENTARIO
   drop constraint FK_INVENTAR_RELATIONS_DETALLEF;

alter table NOMENCLATURA
   drop constraint FK_NOMENCLA_RELATIONS_COMPONEN;

alter table PERSONA
   drop constraint FK_PERSONA_RELATIONS_TIPODOC;

alter table PERSONA
   drop constraint FK_PERSONA_RELATIONS_TIPOPERS;

alter table PRODUCTO
   drop constraint FK_PRODUCTO_RELATIONS_CATPRODU;

drop index RELATIONSHIP_21_FK;

drop index RELATIONSHIP_19_FK;

drop table CARGO cascade constraints;

drop index CARGOEMPLEADO_FK;

drop index CARGOEMPLEADO2_FK;

drop table CARGOEMPLEADO cascade constraints;

drop index RELATIONSHIP_15_FK;

drop table CATPRODUCTO cascade constraints;

drop table COMPONENTEDIRECC cascade constraints;

drop index RELATIONSHIP_2_FK;

drop index RELATIONSHIP_1_FK;

drop table CONTACTO cascade constraints;

drop table DEPENDENCIA cascade constraints;

drop index RELATIONSHIP_30_FK;

drop index RELATIONSHIP_29_FK;

drop table DETALLEFACTURA cascade constraints;

drop index RELATIONSHIP_27_FK;

drop index RELATIONSHIP_26_FK;

drop index RELATIONSHIP_23_FK;

drop table DIRECCION cascade constraints;

drop table EMPLEADO cascade constraints;

drop index RELATIONSHIP_22_FK;

drop index RELATIONSHIP_10_FK;

drop index RELATIONSHIP_9_FK;

drop index RELATIONSHIP_5_FK;

drop table FACTURA cascade constraints;

drop index RELATIONSHIP_18_FK;

drop table HISTORICOPRECIO cascade constraints;

drop index RELATIONSHIP_28_FK;

drop index RELATIONSHIP_25_FK;

drop index RELATIONSHIP_17_FK;

drop table INVENTARIO cascade constraints;

drop index RELATIONSHIP_24_FK;

drop table NOMENCLATURA cascade constraints;

drop index RELATIONSHIP_4_FK;

drop index RELATIONSHIP_3_FK;

drop table PERSONA cascade constraints;

drop index RELATIONSHIP_14_FK;

drop table PRODUCTO cascade constraints;

drop table TIPOCONTACTO cascade constraints;

drop table TIPODOC cascade constraints;

drop table TIPOFACTURA cascade constraints;

drop table TIPOPERSONA cascade constraints;

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   CODCARGO             VARCHAR2(5)           not null,
   CODDEPENDENCIA       VARCHAR2(5)           not null,
   CAR_CODCARGO         VARCHAR2(5),
   NOMCARGO             VARCHAR2(40)          not null,
   OBLIGATORIEDAD       SMALLINT              not null,
   constraint PK_CARGO primary key (CODCARGO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_19_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_19_FK on CARGO (
   CODDEPENDENCIA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_21_FK on CARGO (
   CAR_CODCARGO ASC
);

/*==============================================================*/
/* Table: CARGOEMPLEADO                                         */
/*==============================================================*/
create table CARGOEMPLEADO (
   CODEMPLEADO          VARCHAR2(5)           not null,
   CODCARGO             VARCHAR2(5)           not null,
   constraint PK_CARGOEMPLEADO primary key (CODEMPLEADO, CODCARGO)
);

/*==============================================================*/
/* Index: CARGOEMPLEADO2_FK                                     */
/*==============================================================*/
create index CARGOEMPLEADO2_FK on CARGOEMPLEADO (
   CODCARGO ASC
);

/*==============================================================*/
/* Index: CARGOEMPLEADO_FK                                      */
/*==============================================================*/
create index CARGOEMPLEADO_FK on CARGOEMPLEADO (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Table: CATPRODUCTO                                           */
/*==============================================================*/
create table CATPRODUCTO (
   IDCATPRODUCTO        VARCHAR2(3)           not null,
   CAT_IDCATPRODUCTO    VARCHAR2(3),
   DESCCATPRODUCTO      VARCHAR2(30)          not null,
   constraint PK_CATPRODUCTO primary key (IDCATPRODUCTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_15_FK on CATPRODUCTO (
   CAT_IDCATPRODUCTO ASC
);

/*==============================================================*/
/* Table: COMPONENTEDIRECC                                      */
/*==============================================================*/
create table COMPONENTEDIRECC (
   POSICION             NUMBER(2)             not null,
   DESCPOSICION         VARCHAR2(30)          not null,
   OBLIGATORIEDAD       SMALLINT              not null,
   constraint PK_COMPONENTEDIRECC primary key (POSICION)
);

/*==============================================================*/
/* Table: CONTACTO                                              */
/*==============================================================*/
create table CONTACTO (
   CONSECCONTACTO       NUMBER(4,0)           not null,
   IDTIPOCONTACTO       VARCHAR2(2)           not null,
   DESCTIPOCONTACTO     VARCHAR2(15)          not null,
   IDTIPOPERSONA        VARCHAR2(2)           not null,
   IDTIPODOC            VARCHAR2(2)           not null,
   NDOCUMENTO           VARCHAR2(12)          not null,
   DESCCONTACTO         VARCHAR2(20)          not null,
   constraint PK_CONTACTO primary key (CONSECCONTACTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on CONTACTO (
   IDTIPOCONTACTO ASC,
   DESCTIPOCONTACTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on CONTACTO (
   IDTIPOPERSONA ASC,
   IDTIPODOC ASC,
   NDOCUMENTO ASC
);

/*==============================================================*/
/* Table: DEPENDENCIA                                           */
/*==============================================================*/
create table DEPENDENCIA (
   CODDEPENDENCIA       VARCHAR2(5)           not null,
   NOMDEPENDENCIA       VARCHAR2(30)          not null,
   ESTADODEPEN          SMALLINT              not null,
   constraint PK_DEPENDENCIA primary key (CODDEPENDENCIA)
);

/*==============================================================*/
/* Table: DETALLEFACTURA                                        */
/*==============================================================*/
create table DETALLEFACTURA (
   IDTIPOFAC            VARCHAR2(3)           not null,
   NFACTURA             VARCHAR2(5)           not null,
   ITEM                 NUMBER(3,0)           not null,
   IDCATPRODUCTO        VARCHAR2(3)           not null,
   REFPRODUCTO          VARCHAR2(5)           not null,
   CANTIDAD             NUMBER(3,0)           not null,
   PRECIO               NUMBER(4,2)           not null,
   constraint PK_DETALLEFACTURA primary key (IDTIPOFAC, NFACTURA, ITEM)
);

/*==============================================================*/
/* Index: RELATIONSHIP_29_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_29_FK on DETALLEFACTURA (
   IDCATPRODUCTO ASC,
   REFPRODUCTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_30_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_30_FK on DETALLEFACTURA (
   IDTIPOFAC ASC,
   NFACTURA ASC
);

/*==============================================================*/
/* Table: DIRECCION                                             */
/*==============================================================*/
create table DIRECCION (
   IDDIRECCION          NUMBER(3,0)           not null,
   IDTIPOPERSONA        VARCHAR2(2)           not null,
   IDTIPODOC            VARCHAR2(2)           not null,
   NDOCUMENTO           VARCHAR2(12)          not null,
   DIR_IDDIRECCION      NUMBER(3,0),
   POSICION             NUMBER(2)             not null,
   IDNOM                VARCHAR2(5)           not null,
   constraint PK_DIRECCION primary key (IDDIRECCION)
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_23_FK on DIRECCION (
   IDTIPOPERSONA ASC,
   IDTIPODOC ASC,
   NDOCUMENTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_26_FK on DIRECCION (
   DIR_IDDIRECCION ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_27_FK on DIRECCION (
   POSICION ASC,
   IDNOM ASC
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   CODEMPLEADO          VARCHAR2(5)           not null,
   NOMEMPLEADO          VARCHAR2(30)          not null,
   APELLEMPLEADO        VARCHAR2(30)          not null,
   CORREO               VARCHAR2(50)          not null,
   constraint PK_EMPLEADO primary key (CODEMPLEADO)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   IDTIPOFAC            VARCHAR2(3)           not null,
   NFACTURA             VARCHAR2(5)           not null,
   IDTIPOPERSONA        VARCHAR2(2)           not null,
   IDTIPODOC            VARCHAR2(2)           not null,
   NDOCUMENTO           VARCHAR2(12)          not null,
   FAC_IDTIPOFAC        VARCHAR2(3),
   FAC_NFACTURA         VARCHAR2(5),
   CODEMPLEADO          VARCHAR2(5)           not null,
   FECHAFACTURA         DATE                  not null,
   TOTALFACTURA         NUMBER(7,2),
   constraint PK_FACTURA primary key (IDTIPOFAC, NFACTURA)
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on FACTURA (
   IDTIPOPERSONA ASC,
   IDTIPODOC ASC,
   NDOCUMENTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_9_FK on FACTURA (
   FAC_IDTIPOFAC ASC,
   FAC_NFACTURA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_10_FK on FACTURA (
   IDTIPOFAC ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_22_FK on FACTURA (
   CODEMPLEADO ASC
);

/*==============================================================*/
/* Table: HISTORICOPRECIO                                       */
/*==============================================================*/
create table HISTORICOPRECIO (
   IDCATPRODUCTO        VARCHAR2(3)           not null,
   REFPRODUCTO          VARCHAR2(5)           not null,
   CONSECPRECIO         NUMBER(4,0)           not null,
   FECHAINICIO          DATE                  not null,
   FECHAFIN             DATE,
   constraint PK_HISTORICOPRECIO primary key (IDCATPRODUCTO, REFPRODUCTO, CONSECPRECIO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on HISTORICOPRECIO (
   IDCATPRODUCTO ASC,
   REFPRODUCTO ASC
);

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   CONSECINVEN          NUMBER(5)             not null,
   IDCATPRODUCTO        VARCHAR2(3)           not null,
   REFPRODUCTO          VARCHAR2(5)           not null,
   INV_CONSECINVEN      NUMBER(5),
   IDTIPOFAC            VARCHAR2(3)           not null,
   NFACTURA             VARCHAR2(5)           not null,
   ITEM                 NUMBER(3,0)           not null,
   FECHAINVEN           DATE                  not null,
   SALEN                NUMBER(5,0),
   ENTRAN               NUMBER(5,0),
   EXISTENCIA           NUMBER(5)             not null,
   constraint PK_INVENTARIO primary key (CONSECINVEN)
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_17_FK on INVENTARIO (
   IDCATPRODUCTO ASC,
   REFPRODUCTO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_25_FK on INVENTARIO (
   INV_CONSECINVEN ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_28_FK on INVENTARIO (
   IDTIPOFAC ASC,
   NFACTURA ASC,
   ITEM ASC
);

/*==============================================================*/
/* Table: NOMENCLATURA                                          */
/*==============================================================*/
create table NOMENCLATURA (
   POSICION             NUMBER(2)             not null,
   IDNOM                VARCHAR2(5)           not null,
   DESCNOMEN            VARCHAR2(25)          not null,
   constraint PK_NOMENCLATURA primary key (POSICION, IDNOM)
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_24_FK on NOMENCLATURA (
   POSICION ASC
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   IDTIPOPERSONA        VARCHAR2(2)           not null,
   IDTIPODOC            VARCHAR2(2)           not null,
   NDOCUMENTO           VARCHAR2(12)          not null,
   NOMBRE               VARCHAR2(30)          not null,
   APELLIDO             VARCHAR2(30)          not null,
   constraint PK_PERSONA primary key (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on PERSONA (
   IDTIPODOC ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on PERSONA (
   IDTIPOPERSONA ASC
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   IDCATPRODUCTO        VARCHAR2(3)           not null,
   REFPRODUCTO          VARCHAR2(5)           not null,
   NOMPRODUCTO          VARCHAR2(30)          not null,
   constraint PK_PRODUCTO primary key (IDCATPRODUCTO, REFPRODUCTO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_14_FK on PRODUCTO (
   IDCATPRODUCTO ASC
);

/*==============================================================*/
/* Table: TIPOCONTACTO                                          */
/*==============================================================*/
create table TIPOCONTACTO (
   IDTIPOCONTACTO       VARCHAR2(2)           not null,
   DESCTIPOCONTACTO     VARCHAR2(15)          not null,
   constraint PK_TIPOCONTACTO primary key (IDTIPOCONTACTO, DESCTIPOCONTACTO)
);

/*==============================================================*/
/* Table: TIPODOC                                               */
/*==============================================================*/
create table TIPODOC (
   IDTIPODOC            VARCHAR2(2)           not null,
   DESCTIPODOC          VARCHAR2(20)          not null,
   constraint PK_TIPODOC primary key (IDTIPODOC)
);

/*==============================================================*/
/* Table: TIPOFACTURA                                           */
/*==============================================================*/
create table TIPOFACTURA (
   IDTIPOFAC            VARCHAR2(3)           not null,
   DESCTIPOFAC          VARCHAR2(30)          not null,
   constraint PK_TIPOFACTURA primary key (IDTIPOFAC)
);

/*==============================================================*/
/* Table: TIPOPERSONA                                           */
/*==============================================================*/
create table TIPOPERSONA (
   IDTIPOPERSONA        VARCHAR2(2)           not null,
   DESCTIPOPERSONA      VARCHAR2(20)          not null,
   constraint PK_TIPOPERSONA primary key (IDTIPOPERSONA)
);

alter table CARGO
   add constraint FK_CARGO_RELATIONS_DEPENDEN foreign key (CODDEPENDENCIA)
      references DEPENDENCIA (CODDEPENDENCIA);

alter table CARGO
   add constraint FK_CARGO_RELATIONS_CARGO foreign key (CAR_CODCARGO)
      references CARGO (CODCARGO);

alter table CARGOEMPLEADO
   add constraint FK_CARGOEMP_CARGOEMPL_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table CARGOEMPLEADO
   add constraint FK_CARGOEMP_CARGOEMPL_CARGO foreign key (CODCARGO)
      references CARGO (CODCARGO);

alter table CATPRODUCTO
   add constraint FK_CATPRODU_RELATIONS_CATPRODU foreign key (CAT_IDCATPRODUCTO)
      references CATPRODUCTO (IDCATPRODUCTO);

alter table CONTACTO
   add constraint FK_CONTACTO_RELATIONS_TIPOCONT foreign key (IDTIPOCONTACTO, DESCTIPOCONTACTO)
      references TIPOCONTACTO (IDTIPOCONTACTO, DESCTIPOCONTACTO);

alter table CONTACTO
   add constraint FK_CONTACTO_RELATIONS_PERSONA foreign key (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO);

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_RELATIONS_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO);

alter table DETALLEFACTURA
   add constraint FK_DETALLEF_RELATIONS_FACTURA foreign key (IDTIPOFAC, NFACTURA)
      references FACTURA (IDTIPOFAC, NFACTURA);

alter table DIRECCION
   add constraint FK_DIRECCIO_RELATIONS_PERSONA foreign key (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO);

alter table DIRECCION
   add constraint FK_DIRECCIO_RELATIONS_DIRECCIO foreign key (DIR_IDDIRECCION)
      references DIRECCION (IDDIRECCION);

alter table DIRECCION
   add constraint FK_DIRECCIO_RELATIONS_NOMENCLA foreign key (POSICION, IDNOM)
      references NOMENCLATURA (POSICION, IDNOM);

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_TIPOFACT foreign key (IDTIPOFAC)
      references TIPOFACTURA (IDTIPOFAC);

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_EMPLEADO foreign key (CODEMPLEADO)
      references EMPLEADO (CODEMPLEADO);

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_PERSONA foreign key (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO)
      references PERSONA (IDTIPOPERSONA, IDTIPODOC, NDOCUMENTO);

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_FACTURA foreign key (FAC_IDTIPOFAC, FAC_NFACTURA)
      references FACTURA (IDTIPOFAC, NFACTURA);

alter table HISTORICOPRECIO
   add constraint FK_HISTORIC_RELATIONS_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO);

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_PRODUCTO foreign key (IDCATPRODUCTO, REFPRODUCTO)
      references PRODUCTO (IDCATPRODUCTO, REFPRODUCTO);

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_INVENTAR foreign key (INV_CONSECINVEN)
      references INVENTARIO (CONSECINVEN);

alter table INVENTARIO
   add constraint FK_INVENTAR_RELATIONS_DETALLEF foreign key (IDTIPOFAC, NFACTURA, ITEM)
      references DETALLEFACTURA (IDTIPOFAC, NFACTURA, ITEM);

alter table NOMENCLATURA
   add constraint FK_NOMENCLA_RELATIONS_COMPONEN foreign key (POSICION)
      references COMPONENTEDIRECC (POSICION);

alter table PERSONA
   add constraint FK_PERSONA_RELATIONS_TIPODOC foreign key (IDTIPODOC)
      references TIPODOC (IDTIPODOC);

alter table PERSONA
   add constraint FK_PERSONA_RELATIONS_TIPOPERS foreign key (IDTIPOPERSONA)
      references TIPOPERSONA (IDTIPOPERSONA);

alter table PRODUCTO
   add constraint FK_PRODUCTO_RELATIONS_CATPRODU foreign key (IDCATPRODUCTO)
      references CATPRODUCTO (IDCATPRODUCTO);


create sequence BASE_PERSONAS;