--> Tipos de documento

INSERT INTO TipoDoc VALUES ('CC','Cedula');
INSERT INTO TipoDoc VALUES ('TI','Tarjeta de identidad');
INSERT INTO TipoDoc VALUES ('TE','Tarjeta de extrangeria');
INSERT INTO TipoDoc VALUES ('CE','Cedula de extrangeria');
INSERT INTO TipoDoc VALUES ('NT','Nit');
INSERT INTO TipoDoc VALUES ('PS','Pasaporte');

--> Tipo persona

INSERT INTO tipopersona VALUES ('CL','Cliente');
INSERT INTO tipopersona VALUES ('PV','Proveedor');

--> Depencias 

INSERT INTO dependencia VALUES ('00001','Comercio',1);
INSERT INTO dependencia VALUES ('00002','recursos humanos',1);
INSERT INTO dependencia VALUES ('00003','contabilidad',1);
INSERT INTO dependencia VALUES ('00004','producción ',1);
INSERT INTO dependencia VALUES ('00005','dirección',1);

--> Cargos

INSERT INTO cargo VALUES ('00011','00001',null,'Director comercial',1);
INSERT INTO cargo VALUES ('00010','00001',null,'Director comercial',0);
INSERT INTO cargo VALUES ('00021','00001',null,'Gerente de ventas',1);
INSERT INTO cargo VALUES ('00031','00001',null,'Representante de Ventas',1);
INSERT INTO cargo VALUES ('00041','00001',null,'Vendedor',1);
INSERT INTO cargo VALUES ('00051','00001',null,'Gerente de Compras',1);
INSERT INTO cargo VALUES ('00061','00001',null,'Auxiliar de Compras',1);

--> empleados

INSERT INTO empleado VALUES ('00001','Juan', 'Perez', 'juan.perez@email.com');
INSERT INTO empleado VALUES ('00002','Maria', 'Gomez', 'maria.gomez@email.com');
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

--> Direccion 

INSERT INTO COMPONENTEDIRECC VALUES ('1','Tipo_via','1');
INSERT INTO COMPONENTEDIRECC VALUES ('2','N_via','1');
INSERT INTO COMPONENTEDIRECC VALUES ('3','Letras_via','0');
INSERT INTO COMPONENTEDIRECC VALUES ('4','PREFIJO_BIS','0');
INSERT INTO COMPONENTEDIRECC VALUES ('5','Letras_prefijo','0');
INSERT INTO COMPONENTEDIRECC VALUES ('6','Cuadrante','1');
INSERT INTO COMPONENTEDIRECC VALUES ('7','N_via_Generadora','0');
INSERT INTO COMPONENTEDIRECC VALUES ('8','Letra_via_Generadora','1');
INSERT INTO COMPONENTEDIRECC VALUES ('9','Sufijo_BIS','0');
INSERT INTO COMPONENTEDIRECC VALUES ('10','Letra_Sufijo','0');
INSERT INTO COMPONENTEDIRECC VALUES ('11','N_placa','1');
INSERT INTO COMPONENTEDIRECC VALUES ('12','Cuadrante','1');
INSERT INTO COMPONENTEDIRECC VALUES ('13','Barrio','1');
INSERT INTO COMPONENTEDIRECC VALUES ('14','Nombre_Barrio','1');
INSERT INTO COMPONENTEDIRECC VALUES ('15','Manzana','0');
INSERT INTO COMPONENTEDIRECC VALUES ('16','Id_Manzana','0');
INSERT INTO COMPONENTEDIRECC VALUES ('17','Urbanizacion','0');
INSERT INTO COMPONENTEDIRECC VALUES ('18','Nom_urbanizacion','0');
INSERT INTO COMPONENTEDIRECC VALUES ('19','Tipo_predio','1');
INSERT INTO COMPONENTEDIRECC VALUES ('20','Id_predio','0');
INSERT INTO COMPONENTEDIRECC VALUES ('21','Complemento','0');
INSERT INTO COMPONENTEDIRECC VALUES ('22','Desc_Complemento','0');

--> Nomenclatura 

-- Tipo de via
INSERT INTO Nomenclatura VALUES('1','AU','Auto Pista');
INSERT INTO Nomenclatura VALUES('1','AV','Avenida');
INSERT INTO Nomenclatura VALUES('1','AC','Avenida Calle');
INSERT INTO Nomenclatura VALUES('1','AK','Avenida Carrera');
INSERT INTO Nomenclatura VALUES('1','BL','Bulevar');
INSERT INTO Nomenclatura VALUES('1','CL','Calle');
INSERT INTO Nomenclatura VALUES('1','KR','Carrera');
INSERT INTO Nomenclatura VALUES('1','CT','Carretera');
INSERT INTO Nomenclatura VALUES('1','CQ','Circular');
INSERT INTO Nomenclatura VALUES('1','CV','Circunvalar');
INSERT INTO Nomenclatura VALUES('1','CC','Cuentas Corridas');
INSERT INTO Nomenclatura VALUES('1','DG','Diagonal');
INSERT INTO Nomenclatura VALUES('1','PJ','Pasaje');
INSERT INTO Nomenclatura VALUES('1','PS','Paseo');
INSERT INTO Nomenclatura VALUES('1','PT','Peatonal');
INSERT INTO Nomenclatura VALUES('1','TV','Transversal');
INSERT INTO Nomenclatura VALUES('1','TC','Troncal');
INSERT INTO Nomenclatura VALUES('1','VT','Variante');
INSERT INTO Nomenclatura VALUES('1','VI','Via');

-- Cuadrante

INSERT INTO Nomenclatura VALUES('6','ESTE','Este');
INSERT INTO Nomenclatura VALUES('6','NORTE','Norte');
INSERT INTO Nomenclatura VALUES('6','OESTE','Oeste');
INSERT INTO Nomenclatura VALUES('6','SUR','Sur');
INSERT INTO Nomenclatura VALUES('12','EST','Este');
INSERT INTO Nomenclatura VALUES('12','NORT','Norte');
INSERT INTO Nomenclatura VALUES('12','OEST','Oeste');
INSERT INTO Nomenclatura VALUES('12','SU','Sur');

-- Barrio

INSERT INTO Nomenclatura VALUES('13','BR','Barrio');
INSERT INTO Nomenclatura VALUES('13','CD','Ciudadela');
INSERT INTO Nomenclatura VALUES('13','SM','Supermanzana');

-- Urbanizacion

INSERT INTO Nomenclatura VALUES('17','BQ','Bloque');
INSERT INTO Nomenclatura VALUES('17','CU','Cedula');
INSERT INTO Nomenclatura VALUES('17','CO','Conjunto Residencial');
INSERT INTO Nomenclatura VALUES('17','ET','Etapa');
INSERT INTO Nomenclatura VALUES('17','UR','Urbanización');
INSERT INTO Nomenclatura VALUES('17','SC','Sector');
INSERT INTO Nomenclatura VALUES('17','TO','Torre');
INSERT INTO Nomenclatura VALUES('17','ZN','Zona');

-- Manzana 

INSERT INTO Nomenclatura VALUES('15','MZ','Manzana');
INSERT INTO Nomenclatura VALUES('15','IN','Interior');
INSERT INTO Nomenclatura VALUES('15','SR','Sector');
INSERT INTO Nomenclatura VALUES('15','EY','Etapa');
INSERT INTO Nomenclatura VALUES('15','ED','Edificio');
INSERT INTO Nomenclatura VALUES('15','MD','Modulo');
INSERT INTO Nomenclatura VALUES('15','TY','Torre');

-- Tipo de predio

INSERT INTO Nomenclatura VALUES('19','AL','Altillo');
INSERT INTO Nomenclatura VALUES('19','AP','Apartamento');
INSERT INTO Nomenclatura VALUES('19','BG','Bodega');
INSERT INTO Nomenclatura VALUES('19','CS','Casa');
INSERT INTO Nomenclatura VALUES('19','CN','Consultorio');
INSERT INTO Nomenclatura VALUES('19','DP','Deposito');
INSERT INTO Nomenclatura VALUES('19','DS','Deposito Sotano');
INSERT INTO Nomenclatura VALUES('19','GA','Garaje');
INSERT INTO Nomenclatura VALUES('19','GS','Garaje Sotano');
INSERT INTO Nomenclatura VALUES('19','LC','Local');
INSERT INTO Nomenclatura VALUES('19','LM','Local Mezzanine');
INSERT INTO Nomenclatura VALUES('19','LT','Lote');
INSERT INTO Nomenclatura VALUES('19','MN','Mezzanine');
INSERT INTO Nomenclatura VALUES('19','OF','Oficina');
INSERT INTO Nomenclatura VALUES('19','PA','Parqueadero');
INSERT INTO Nomenclatura VALUES('19','PN','Pent-House');
INSERT INTO Nomenclatura VALUES('19','PL','Planta');
INSERT INTO Nomenclatura VALUES('19','PD','Predio');
INSERT INTO Nomenclatura VALUES('19','SS','Semisotano');
INSERT INTO Nomenclatura VALUES('19','SO','Sotano');
INSERT INTO Nomenclatura VALUES('19','ST','Suite');
INSERT INTO Nomenclatura VALUES('19','TZ','Terraza');
INSERT INTO Nomenclatura VALUES('19','UN','Unidad');
INSERT INTO Nomenclatura VALUES('19','UL','Unidad Residencial');

-- Complemento 

INSERT INTO Nomenclatura VALUES('21','AD','Administracion');
INSERT INTO Nomenclatura VALUES('21','AG','Agrupacion');
INSERT INTO Nomenclatura VALUES('21','ALL','Altillo');
INSERT INTO Nomenclatura VALUES('21','APP','Apartemento');
INSERT INTO Nomenclatura VALUES('21','BRR','Barrio');
INSERT INTO Nomenclatura VALUES('21','BQQ','Bloque');
INSERT INTO Nomenclatura VALUES('21','BGG','Bodega');
INSERT INTO Nomenclatura VALUES('21','CSS','Casa');
INSERT INTO Nomenclatura VALUES('21','CUU','Cedula');
INSERT INTO Nomenclatura VALUES('21','CE','Centro Comercial');
INSERT INTO Nomenclatura VALUES('21','CDD','Ciudadela');
INSERT INTO Nomenclatura VALUES('21','COO','Conjunto recidencial');
INSERT INTO Nomenclatura VALUES('21','CNN','Consultorio');
INSERT INTO Nomenclatura VALUES('21','DPP','Deposito');
INSERT INTO Nomenclatura VALUES('21','DSS','Deposito Sotano');
INSERT INTO Nomenclatura VALUES('21','MDD','Modulo');
INSERT INTO Nomenclatura VALUES('21','OFF','Oficina');
INSERT INTO Nomenclatura VALUES('21','PQ','Parque');
INSERT INTO Nomenclatura VALUES('21','PAA','Parqueadero');
INSERT INTO Nomenclatura VALUES('21','PNN','Pent-House');
INSERT INTO Nomenclatura VALUES('21','PI','Piso');
INSERT INTO Nomenclatura VALUES('21','PLL','Plante');
INSERT INTO Nomenclatura VALUES('21','PR','Porteria');
INSERT INTO Nomenclatura VALUES('21','PDD','Predio');
INSERT INTO Nomenclatura VALUES('21','PU','Puesto');
INSERT INTO Nomenclatura VALUES('21','RP','Round Point');

INSERT INTO Nomenclatura VALUES('21','EDD','Edificio');
INSERT INTO Nomenclatura VALUES('21','EN','Entrada');
INSERT INTO Nomenclatura VALUES('21','EQ','Esquina');
INSERT INTO Nomenclatura VALUES('21','ES','Estacion');
INSERT INTO Nomenclatura VALUES('21','ETT','Etapa');
INSERT INTO Nomenclatura VALUES('21','EX','Exterior');
INSERT INTO Nomenclatura VALUES('21','FI','Finca');
INSERT INTO Nomenclatura VALUES('21','GAA','Garaje');
INSERT INTO Nomenclatura VALUES('21','GSS','Garaje Sotano');
INSERT INTO Nomenclatura VALUES('21','INN','Interior');
INSERT INTO Nomenclatura VALUES('21','KM','Kilometro');
INSERT INTO Nomenclatura VALUES('21','LCC','Local');
INSERT INTO Nomenclatura VALUES('21','LMM','Local Mezzanine');
INSERT INTO Nomenclatura VALUES('21','LTT','Lote');
INSERT INTO Nomenclatura VALUES('21','MZZ','Manzana');
INSERT INTO Nomenclatura VALUES('21','MNN','Mezzanine');
INSERT INTO Nomenclatura VALUES('21','SCC','Sector');
INSERT INTO Nomenclatura VALUES('21','SSS','Semisotano');
INSERT INTO Nomenclatura VALUES('21','SOO','Sotano');
INSERT INTO Nomenclatura VALUES('21','STT','Suite');
INSERT INTO Nomenclatura VALUES('21','SMM','Supermanzana');
INSERT INTO Nomenclatura VALUES('21','TZZ','Terraza');
INSERT INTO Nomenclatura VALUES('21','TOO','Torre');
INSERT INTO Nomenclatura VALUES('21','UNN','Unidad');
INSERT INTO Nomenclatura VALUES('21','ULL','Unidad Residencial');
INSERT INTO Nomenclatura VALUES('21','URR','Urbanizacion');
INSERT INTO Nomenclatura VALUES('21','ZNN','Zona');


--> Productos 



-- Categorias de productos

INSERT INTO CATPRODUCTO VALUES('001',null,'Alimentos');
INSERT INTO CATPRODUCTO VALUES('101','001','Dulces');
INSERT INTO CATPRODUCTO VALUES('102','001','Chocolates');
INSERT INTO CATPRODUCTO VALUES('103','001','Chicles');
INSERT INTO CATPRODUCTO VALUES('104','001','Snacks');
INSERT INTO CATPRODUCTO VALUES('105','001','Cereales y Granolas');
INSERT INTO CATPRODUCTO VALUES('106','001','Cafe y Te');
INSERT INTO CATPRODUCTO VALUES('107','001','Aceites');
INSERT INTO CATPRODUCTO VALUES('108','001','Arinas');
INSERT INTO CATPRODUCTO VALUES('109','001','Condimentos');
INSERT INTO CATPRODUCTO VALUES('110','001','Frutas');
INSERT INTO CATPRODUCTO VALUES('111','001','Vegetales');

INSERT INTO CATPRODUCTO VALUES('002',null,'Licores');
INSERT INTO CATPRODUCTO VALUES('003',null,'Automotriz');
INSERT INTO CATPRODUCTO VALUES('004',null,'Electronicos');
INSERT INTO CATPRODUCTO VALUES('005',null,'Moda y accesorios');
INSERT INTO CATPRODUCTO VALUES('006',null,'Ferreteria');
INSERT INTO CATPRODUCTO VALUES('007',null,'Salud y belleza');
INSERT INTO CATPRODUCTO VALUES('008',null,'Oficina');
INSERT INTO CATPRODUCTO VALUES('009',null,'Exteriores');
INSERT INTO CATPRODUCTO VALUES('010',null,'Muebles');
INSERT INTO CATPRODUCTO VALUES('011',null,'Hogar');

--> Facturas 

INSERT INTO TIPOFACTURA VALUES('VE','Venta');
INSERT INTO TIPOFACTURA VALUES('CO','Compra');
INSERT INTO TIPOFACTURA VALUES('DV','Devolucion de Venta');
INSERT INTO TIPOFACTURA VALUES('DC','Devolucion de compra');

commit;