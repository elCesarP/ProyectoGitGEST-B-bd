/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     9/6/2022 11:50:26                            */
/*==============================================================*/


drop index RELATIONSHIP_4_FK;

drop index CAMPEONATO_PK;

drop table CAMPEONATO;

drop index RELATIONSHIP_2_FK;

drop index RELATIONSHIP_1_FK;

drop index EMPLEADOS_PK;

drop table EMPLEADOS;

drop index ESPACIOS_PK;

drop table ESPACIOS;

drop index RELATIONSHIP_6_FK;

drop index FACTURA_PK;

drop table FACTURA;

drop index RELATIONSHIP_5_FK;

drop index MANTENIMIENTO_PK;

drop table MANTENIMIENTO;

drop index RELATIONSHIP_3_FK;

drop index RESERVACION_PK;

drop table RESERVACION;

drop index SERVICIOS_PK;

drop table SERVICIOS;

drop index TIPO_EMPLEADO_PK;

drop table TIPO_EMPLEADO;

/*==============================================================*/
/* Table: CAMPEONATO                                            */
/*==============================================================*/
create table CAMPEONATO (
   TIPO_IDRESERVACION   INT4                 not null,
   ID_SERVICIO          INT4                 null,
   FECHARESERVACION     DATE                 null,
   CANT_CAMPEONATOS     INT4                 null,
   NOMBRES              VARCHAR(20)          null,
   USOS                 INT4                 null,
   constraint PK_CAMPEONATO primary key (TIPO_IDRESERVACION)
);

/*==============================================================*/
/* Index: CAMPEONATO_PK                                         */
/*==============================================================*/
create unique index CAMPEONATO_PK on CAMPEONATO (
TIPO_IDRESERVACION
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on CAMPEONATO (
ID_SERVICIO
);

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS (
   ID_EMPLEADO          INT4                 not null,
   ID_TIPOEMPLEADO      INT4                 null,
   EMPLEADO_ACARGO      INT4                 null,
   EMPLEADO_NOMB        VARCHAR(20)          null,
   EMPLEADO_APELL       VARCHAR(20)          null,
   CEDIDENTIDADEMPLE    VARCHAR(10)          null,
   DIRECCION            VARCHAR(30)          null,
   FECHA_NACIM          DATE                 null,
   FECHA_INGRESO        DATE                 null,
   constraint PK_EMPLEADOS primary key (ID_EMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADOS_PK                                          */
/*==============================================================*/
create unique index EMPLEADOS_PK on EMPLEADOS (
ID_EMPLEADO
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on EMPLEADOS (
ID_TIPOEMPLEADO
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on EMPLEADOS (
EMPLEADO_ACARGO
);

/*==============================================================*/
/* Table: ESPACIOS                                              */
/*==============================================================*/
create table ESPACIOS (
   EMPLEADO_ACARGO      INT4                 not null,
   DISPONIBILIDAD       VARCHAR(2)           null,
   CAPACIDAD            INT4                 null,
   HORA_RESERVA         DATE                 null,
   constraint PK_ESPACIOS primary key (EMPLEADO_ACARGO)
);

/*==============================================================*/
/* Index: ESPACIOS_PK                                           */
/*==============================================================*/
create unique index ESPACIOS_PK on ESPACIOS (
EMPLEADO_ACARGO
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   IDF_FACTURA          INT4                 not null,
   ID_RESERVACION       INT4                 null,
   REALTOTAL            FLOAT8               null,
   constraint PK_FACTURA primary key (IDF_FACTURA)
);

/*==============================================================*/
/* Index: FACTURA_PK                                            */
/*==============================================================*/
create unique index FACTURA_PK on FACTURA (
IDF_FACTURA
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on FACTURA (
ID_RESERVACION
);

/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO (
   IDEMPLEADOMANTENIMIENTO INT4                 not null,
   EMPLEADO_ACARGO      INT4                 null,
   HORARIO              DATE                 null,
   NUM_MANTENIMIENTOS   INT4                 null,
   constraint PK_MANTENIMIENTO primary key (IDEMPLEADOMANTENIMIENTO)
);

/*==============================================================*/
/* Index: MANTENIMIENTO_PK                                      */
/*==============================================================*/
create unique index MANTENIMIENTO_PK on MANTENIMIENTO (
IDEMPLEADOMANTENIMIENTO
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on MANTENIMIENTO (
EMPLEADO_ACARGO
);

/*==============================================================*/
/* Table: RESERVACION                                           */
/*==============================================================*/
create table RESERVACION (
   ID_RESERVACION       INT4                 not null,
   ID_EMPLEADO          INT4                 null,
   FECHA_RESERVA        DATE                 null,
   TIPO_EVENTO          VARCHAR(10)          null,
   PRECIO_RESERVACION   FLOAT2               null,
   constraint PK_RESERVACION primary key (ID_RESERVACION)
);

/*==============================================================*/
/* Index: RESERVACION_PK                                        */
/*==============================================================*/
create unique index RESERVACION_PK on RESERVACION (
ID_RESERVACION
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on RESERVACION (
ID_EMPLEADO
);

/*==============================================================*/
/* Table: SERVICIOS                                             */
/*==============================================================*/
create table SERVICIOS (
   ID_SERVICIO          INT4                 not null,
   SERVICIO_DESCRIPCION VARCHAR(30)          null,
   PRECIOPORSERVICIOS   NUMERIC              null,
   constraint PK_SERVICIOS primary key (ID_SERVICIO)
);

/*==============================================================*/
/* Index: SERVICIOS_PK                                          */
/*==============================================================*/
create unique index SERVICIOS_PK on SERVICIOS (
ID_SERVICIO
);

/*==============================================================*/
/* Table: TIPO_EMPLEADO                                         */
/*==============================================================*/
create table TIPO_EMPLEADO (
   ID_TIPOEMPLEADO      INT4                 not null,
   EMPLEADODESCRIPCION  VARCHAR(50)          null,
   constraint PK_TIPO_EMPLEADO primary key (ID_TIPOEMPLEADO)
);

/*==============================================================*/
/* Index: TIPO_EMPLEADO_PK                                      */
/*==============================================================*/
create unique index TIPO_EMPLEADO_PK on TIPO_EMPLEADO (
ID_TIPOEMPLEADO
);

alter table CAMPEONATO
   add constraint FK_CAMPEONA_RELATIONS_SERVICIO foreign key (ID_SERVICIO)
      references SERVICIOS (ID_SERVICIO)
      on delete restrict on update restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_RELATIONS_TIPO_EMP foreign key (ID_TIPOEMPLEADO)
      references TIPO_EMPLEADO (ID_TIPOEMPLEADO)
      on delete restrict on update restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_RELATIONS_ESPACIOS foreign key (EMPLEADO_ACARGO)
      references ESPACIOS (EMPLEADO_ACARGO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_RESERVAC foreign key (ID_RESERVACION)
      references RESERVACION (ID_RESERVACION)
      on delete restrict on update restrict;

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_RELATIONS_ESPACIOS foreign key (EMPLEADO_ACARGO)
      references ESPACIOS (EMPLEADO_ACARGO)
      on delete restrict on update restrict;

alter table RESERVACION
   add constraint FK_RESERVAC_RELATIONS_EMPLEADO foreign key (ID_EMPLEADO)
      references EMPLEADOS (ID_EMPLEADO)
      on delete restrict on update restrict;

