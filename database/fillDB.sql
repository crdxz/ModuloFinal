-- Tipos de documento

INSERT INTO TipoDoc VALUES ('CC','Cedula');
INSERT INTO TipoDoc VALUES ('TI','Tarjeta de identidad');
INSERT INTO TipoDoc VALUES ('TE','Tarjeta de extrangeria');
INSERT INTO TipoDoc VALUES ('CE','Cedula de extrangeria');
INSERT INTO TipoDoc VALUES ('NT','Nit');
INSERT INTO TipoDoc VALUES ('PS','Pasaporte');

-- Tipo persona

INSERT INTO tipopersona VALUES ('CL','Cliente');
INSERT INTO tipopersona VALUES ('PV','Proveedor');

-- Depencias 

INSERT INTO dependencia VALUES ('00001','Comercio',1);
INSERT INTO dependencia VALUES ('00002','recursos humanos',1);
INSERT INTO dependencia VALUES ('00003','contabilidad',1);
INSERT INTO dependencia VALUES ('00004','producción ',1);
INSERT INTO dependencia VALUES ('00005','dirección',1);

-- Cargos

INSERT INTO cargo VALUES ('00011','00001',null,'Director comercial',1);
INSERT INTO cargo VALUES ('00010','00001',null,'Director comercial',0);
INSERT INTO cargo VALUES ('00021','00001',null,'Gerente de ventas',1);
INSERT INTO cargo VALUES ('00031','00001',null,'Representante de Ventas',1);
INSERT INTO cargo VALUES ('00041','00001',null,'Vendedor',1);
INSERT INTO cargo VALUES ('00051','00001',null,'Gerente de Compras',1);
INSERT INTO cargo VALUES ('00061','00001',null,'Auxiliar de Compras',1);

-- empleados

INSERT INTO empleado VALUES ('00001','Juan', 'Perez', 'juan.perez@email.com');
INSERT INTO empleado VALUES ('00002','Maria', 'Gómez', 'maria.gomez@email.com');
INSERT INTO empleado VALUES ('00003','Carlos', 'Rodriguez', 'carlos.rodriguez@email.com');
INSERT INTO empleado VALUES ('00004','Ana', 'Lopez', 'ana.lopez@email.com');
INSERT INTO empleado VALUES ('00005','Pedro', 'Martinez', 'pedro.martinez@email.com');
INSERT INTO empleado VALUES ('00006','Laura', 'Hernandez', 'laura.hernandez@email.com');
INSERT INTO empleado VALUES ('00007','Javier', 'Diaz', 'javier.diaz@email.com');
INSERT INTO empleado VALUES ('00008','Carmen', 'Gutierrez', 'carmen.gutierrez@email.com');
INSERT INTO empleado VALUES ('00009','Sergio', 'Sanchez', 'sergio.sanchez@email.com');
INSERT INTO empleado VALUES ('00010','Isabel', 'Torres', 'isabel.torres@email.com');
INSERT INTO empleado VALUES ('00011','Ricardo', 'Ramirez', 'ricardo.ramirez@email.com');
INSERT INTO empleado VALUES ('00012','Marta', 'Fernandez', 'marta.fernandez@email.com');
INSERT INTO empleado VALUES ('00013','Daniel', 'Vargas', 'daniel.vargas@email.com');

-- Asignando cargos a los empleado 

INSERT INTO CARGOEMPLEADO VALUES ('00001','00011');
INSERT INTO CARGOEMPLEADO VALUES ('00002','00010');

INSERT INTO CARGOEMPLEADO VALUES ('00003','00021');

INSERT INTO CARGOEMPLEADO VALUES ('00004','00031');
INSERT INTO CARGOEMPLEADO VALUES ('00005','00031');
INSERT INTO CARGOEMPLEADO VALUES ('00006','00031');

INSERT INTO CARGOEMPLEADO VALUES ('00007','00041');
INSERT INTO CARGOEMPLEADO VALUES ('00008','00041');
INSERT INTO CARGOEMPLEADO VALUES ('00009','00041');

INSERT INTO CARGOEMPLEADO VALUES ('00010','00051');

INSERT INTO CARGOEMPLEADO VALUES ('00011','00061');
INSERT INTO CARGOEMPLEADO VALUES ('00012','00061');
INSERT INTO CARGOEMPLEADO VALUES ('00013','00061');

--


commit;