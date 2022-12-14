CREATE TABLE empleados (
	codigo		NUMBER(5,0),
	nombre		VARCHAR2(30) NOT NULL,
	hijos		NUMBER(2,0) NOT NULL,
	retencion	NUMBER(2,0) NOT NULL,
	cuenta		CHAR(20) NOT NULL UNIQUE,
	PRIMARY KEY (codigo));
CREATE TABLE departamentos (
	codigo		NUMBER(5,0),
	nombre		VARCHAR2(20) NOT NULL UNIQUE,
	PRIMARY KEY (codigo));
CREATE TABLE trabajan (
	cod_emp		NUMBER(5,0),
	cod_dep		NUMBER(5,0),
	funcion		VARCHAR2(30) NOT NULL,
	PRIMARY KEY (cod_emp, cod_dep),
	FOREIGN KEY (cod_emp) REFERENCES empleados(codigo),
	FOREIGN KEY (cod_dep) REFERENCES departamentos(codigo));
CREATE TABLE just_nominas (
	mes		NUMBER(2,0),
	ejercicio	NUMBER(4,0),
	ingreso		NUMBER(8,0) NOT NULL,
	descuento	NUMBER(8,0) NOT NULL,
	cod_emp		NUMBER(5,0),
	PRIMARY KEY (mes, ejercicio, cod_emp),
	FOREIGN KEY (cod_emp) REFERENCES empleados(codigo));
CREATE TABLE lineas (
	numero		NUMBER(5,0),
	cantidad	NUMBER(8,0) NOT NULL,
	base		NUMBER(8,0),
	porcentaje	NUMBER(2,0),
	mes		NUMBER(2,0),
	ejercicio	NUMBER(4,0),
	cod_emp		NUMBER(5,0),
	PRIMARY KEY (numero, mes, ejercicio, cod_emp),
	FOREIGN KEY (mes, ejercicio, cod_emp) REFERENCES just_nominas(mes, ejercicio, cod_emp));

//empleados
INSERT INTO empleados VALUES (00011, 'Juan Ignacio Martinez', 0, 10, '12341234121234567890');
INSERT INTO empleados VALUES (00001, 'Jos� Luis P�rez', 2, 12, '12342233121122334455');
INSERT INTO empleados VALUES (02341, 'Fernando Romero D�as', 1, 8, '21341234560987654321');
INSERT INTO empleados VALUES (11223, 'Manuel Lopez Mar�n', 0, 10, '55443322110099887766');
INSERT INTO empleados VALUES (67890, 'Alfonso Gutierrez Lopez', 1, 12, '12563478001234567890');
INSERT INTO empleados VALUES (00111, 'Encarna Lopez Lopez', 0, 10, '99118822773344665500');
INSERT INTO empleados VALUES (02031, 'Ines Montero Zafra', 1, 8, '42341534129234567890');
INSERT INTO empleados VALUES (09876, 'Rosa Lorite Lopez', 0, 10, '52341234521214567890');
INSERT INTO empleados VALUES (96352, 'Lola Martinez Contreras', 1, 11, '22341224121224567820');
INSERT INTO empleados VALUES (76543, 'Francisca Colate Gonzalez', 3, 7, '12343234121334567893');
INSERT INTO empleados VALUES (73152, 'Mar�a Pascual Rojo', 3, 7, '12351234151234567590');
INSERT INTO empleados VALUES (64738, 'Andr�s Morales Mart�n', 3, 7, '22341154116231563690');

//departamentos
INSERT INTO departamentos VALUES (00001, 'Ventas');
INSERT INTO departamentos VALUES (00002, 'Compras');
INSERT INTO departamentos VALUES (00003, 'Marketing');
INSERT INTO departamentos VALUES (00004, 'Recursos Humanos');
INSERT INTO departamentos VALUES (00005, 'Administraci�n');
INSERT INTO departamentos VALUES (00006, 'Direcci�n');

//trabajan
INSERT INTO trabajan VALUES (00001, 00001, 'Vendedor');
INSERT INTO trabajan VALUES (00001, 00003, 'Dise�ador');
INSERT INTO trabajan VALUES (02341, 00005, 'Administrativo');
INSERT INTO trabajan VALUES (11223, 00006, 'Asesor Direcci�n');
INSERT INTO trabajan VALUES (11223, 00005, 'Administrativo');
INSERT INTO trabajan VALUES (11223, 00004, 'Selecci�n de Personal');
INSERT INTO trabajan VALUES (67890, 00002, 'Gestor de compras');
INSERT INTO trabajan VALUES (00111, 00001, 'Vendedor');
INSERT INTO trabajan VALUES (02031, 00001, 'Vendedor');
INSERT INTO trabajan VALUES (09876, 00006, 'Director');
INSERT INTO trabajan VALUES (96352, 00003, 'Publicista');
INSERT INTO trabajan VALUES (96352, 00004, 'Encuestador');
INSERT INTO trabajan VALUES (96352, 00005, 'Secretaria de Direcci�n');
INSERT INTO trabajan VALUES (76543, 00001, 'Vendedor');
INSERT INTO trabajan VALUES (73152, 00005, 'Administrativo');
INSERT INTO trabajan VALUES (73152, 00003, 'Publicista');
INSERT INTO trabajan VALUES (64738, 00001, 'Vendedor');
INSERT INTO trabajan VALUES (64738, 00004, 'Selecci�n de Personal');
INSERT INTO trabajan VALUES (64738, 00002, 'Gestor de compras');
INSERT INTO trabajan VALUES (64738, 00003, 'Dise�ador');
INSERT INTO trabajan VALUES (00011, 00003, 'Dise�ador');

//justificantes de n�minas
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 00001);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 00001);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 00001);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 00001);
INSERT INTO just_nominas VALUES (10, 2006, 1500, 300, 02341);
INSERT INTO just_nominas VALUES (11, 2006, 1500, 300, 02341);
INSERT INTO just_nominas VALUES (12, 2006, 1500, 300, 02341);
INSERT INTO just_nominas VALUES (01, 2007, 1500, 300, 02341);
INSERT INTO just_nominas VALUES (10, 2006, 1000, 100, 11223);
INSERT INTO just_nominas VALUES (11, 2006, 1000, 100, 11223);
INSERT INTO just_nominas VALUES (12, 2006, 1000, 100, 11223);
INSERT INTO just_nominas VALUES (01, 2007, 1000, 100, 11223);
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 67890);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 67890);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 67890);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 67890);
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 00111);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 00111);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 00111);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 00111);
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 02031);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 02031);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 02031);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 02031);
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 09876);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 09876);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 09876);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 09876);
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 96352);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 96352);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 96352);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 96352);
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 76543);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 76543);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 76543);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 76543);
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 73152);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 73152);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 73152);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 73152);
INSERT INTO just_nominas VALUES (10, 2006, 1200, 200, 64738);
INSERT INTO just_nominas VALUES (11, 2006, 1200, 200, 64738);
INSERT INTO just_nominas VALUES (12, 2006, 1200, 200, 64738);
INSERT INTO just_nominas VALUES (01, 2007, 1200, 200, 64738);

//lineas
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 00001);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 00001);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 00001);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 00001);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 00001);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 00001);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 00001);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 00001);
INSERT INTO lineas VALUES (00001, 1500, NULL, NULL, 10, 2006, 02341);
INSERT INTO lineas VALUES (00002, -300, 1200, 10, 10, 2006, 02341);
INSERT INTO lineas VALUES (00001, 1500, NULL, NULL, 11, 2006, 02341);
INSERT INTO lineas VALUES (00002, -300, 1200, 10, 11, 2006, 02341);
INSERT INTO lineas VALUES (00001, 1500, NULL, NULL, 12, 2006, 02341);
INSERT INTO lineas VALUES (00002, -300, 1200, 10, 12, 2006, 02341);
INSERT INTO lineas VALUES (00001, 1500, NULL, NULL, 01, 2007, 02341);
INSERT INTO lineas VALUES (00002, -300, 1200, 10, 01, 2007, 02341);
INSERT INTO lineas VALUES (00001, 1000, NULL, NULL, 10, 2006, 11223);
INSERT INTO lineas VALUES (00002, -100, 1200, 10, 10, 2006, 11223);
INSERT INTO lineas VALUES (00001, 1000, NULL, NULL, 11, 2006, 11223);
INSERT INTO lineas VALUES (00002, -100, 1200, 10, 11, 2006, 11223);
INSERT INTO lineas VALUES (00001, 1000, NULL, NULL, 12, 2006, 11223);
INSERT INTO lineas VALUES (00002, -100, 1200, 10, 12, 2006, 11223);
INSERT INTO lineas VALUES (00001, 1000, NULL, NULL, 01, 2007, 11223);
INSERT INTO lineas VALUES (00002, -100, 1200, 10, 01, 2007, 11223);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 67890);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 67890);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 67890);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 67890);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 67890);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 67890);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 67890);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 67890);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 00111);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 00111);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 00111);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 00111);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 00111);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 00111);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 00111);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 00111);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 02031);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 02031);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 02031);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 02031);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 02031);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 02031);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 02031);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 02031);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 09876);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 09876);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 09876);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 09876);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 09876);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 09876);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 09876);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 09876);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 96352);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 96352);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 96352);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 96352);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 96352);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 96352);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 96352);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 96352);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 76543);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 76543);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 76543);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 76543);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 76543);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 76543);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 76543);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 76543);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 73152);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 73152);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 73152);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 73152);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 73152);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 73152);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 73152);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 73152);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 10, 2006, 64738);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 10, 2006, 64738);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 11, 2006, 64738);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 11, 2006, 64738);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 12, 2006, 64738);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 12, 2006, 64738);
INSERT INTO lineas VALUES (00001, 1200, NULL, NULL, 01, 2007, 64738);
INSERT INTO lineas VALUES (00002, -200, 1200, 10, 01, 2007, 64738);

ALTER SESSION SET nls_date_format='DD/MM/YYYY';
ALTER TABLE empleados ADD fnacimiento DATE;

UPDATE empleados SET fnacimiento = TO_DATE('01/02/1960', 'DD/MM/YYYY') WHERE codigo = 00011;
UPDATE empleados SET fnacimiento = TO_DATE('12/04/1964', 'DD/MM/YYYY') WHERE codigo = 00001;
UPDATE empleados SET fnacimiento = TO_DATE('25/09/1955', 'DD/MM/YYYY') WHERE codigo = 02341;
UPDATE empleados SET fnacimiento = TO_DATE('13/12/1963', 'DD/MM/YYYY') WHERE codigo = 11223;
UPDATE empleados SET fnacimiento = TO_DATE('05/11/1967', 'DD/MM/YYYY') WHERE codigo = 67890;
UPDATE empleados SET fnacimiento = TO_DATE('15/03/1968', 'DD/MM/YYYY') WHERE codigo = 00111;
UPDATE empleados SET fnacimiento = TO_DATE('22/02/1972', 'DD/MM/YYYY') WHERE codigo = 02031;
UPDATE empleados SET fnacimiento = TO_DATE('18/08/1975', 'DD/MM/YYYY') WHERE codigo = 09876;
UPDATE empleados SET fnacimiento = TO_DATE('09/03/1975', 'DD/MM/YYYY') WHERE codigo = 96352;
UPDATE empleados SET fnacimiento = TO_DATE('02/03/1969', 'DD/MM/YYYY') WHERE codigo = 76543;
UPDATE empleados SET fnacimiento = TO_DATE('09/12/1973', 'DD/MM/YYYY') WHERE codigo = 73152;
UPDATE empleados SET fnacimiento = TO_DATE('20/01/1964', 'DD/MM/YYYY') WHERE codigo = 64738;

COMMIT;

