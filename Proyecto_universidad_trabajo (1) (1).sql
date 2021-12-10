
DROP TABLE ALUMNO CASCADE CONSTRAINTS;
DROP TABLE DOCENTE CASCADE CONSTRAINTS;
DROP TABLE TALLER CASCADE CONSTRAINTS;
DROP TABLE CITA CASCADE CONSTRAINTS;
DROP TABLE PIDE CASCADE CONSTRAINTS;
DROP TABLE CURSO CASCADE CONSTRAINTS;
DROP TABLE Seccion CASCADE CONSTRAINTS;
DROP TABLE INSCRIPCION CASCADE CONSTRAINTS;
DROP TABLE ASESORIA CASCADE CONSTRAINTS;
DROP TABLE ASISTE CASCADE CONSTRAINTS;
DROP TABLE NOTA CASCADE CONSTRAINTS;
Drop TABLE DISPONIBILIDAD;

CREATE TABLE ALUMNO(
COD_Alumno NUMBER(8,0) PRIMARY KEY NOT NULL, 
NOMBRE VARCHAR2(50),
APELLIDO VARCHAR2(50),
CORREO VARCHAR2(50),
CONTRASE�A VARCHAR2(50),
GRADO NUMBER(1),
NOMBRE_TUTOR VARCHAR2(50)
);

CREATE TABLE DOCENTE(
COD_DOCENTE NUMBER(8,0) PRIMARY KEY NOT NULL, 
NOMBRE VARCHAR2(50),
APELLIDO VARCHAR2(50),
CORREO VARCHAR2(50),
CONTRASE�A VARCHAR2(50),
CANTIDAD_CURSOS NUMBER(2),
ESPECIALIZACION VARCHAR2(50),      
A�OS_XP number(2)
);

CREATE TABLE TALLER(
ID_TALLER NUMBER(9,0) PRIMARY KEY NOT NULL,
FECHA DATE,
HORA_INICIO VARCHAR2(20),
HORA_FIN VARCHAR2(20),
COD_DOCENTE NUMBER(8,0) REFERENCES DOCENTE not null
);

CREATE TABLE CITA(
ID_CITA NUMBER(9,0) PRIMARY KEY NOT NULL,
FECHA DATE,
HORA_INICIO VARCHAR2(20),
HORA_FIN VARCHAR2(20),
COD_DOCENTE NUMBER(8,0) REFERENCES DOCENTE not null,
COD_ALUMNO NUMBER(8,0) REFERENCES ALUMNO NOT NULL 
);

CREATE TABLE PIDE(
COD_ALUMNO NUMBER(8,0) REFERENCES ALUMNO NOT NULL ,
ID_TALLER NUMBER(9,0) REFERENCES TALLER NOT NULL,
ASISTENCIA_ALUMNO VARCHAR2(10),
PRIMARY KEY(COD_ALUMNO,ID_TALLER)
);

CREATE TABLE CURSO(
COD_CURSO NUMBER(6,0) PRIMARY KEY NOT NULL,
FECHA_INICIO DATE,
FECHA_FIN DATE,
NOMBRE VARCHAR2(50),
Area VARCHAR2(50),
Peso NUMBER (2,0)
);

CREATE TABLE Seccion(
ID_SECCION NUMBER(3,0) PRIMARY KEY,
FECHA_INICIO DATE,
FECHA_FIN DATE,      
CAPACIDAD NUMBER(2),
LETRA_SECCION VARCHAR(1),
COD_CURSO NUMBER(6,0) REFERENCES CURSO NOT NULL,
COD_DOCENTE NUMBER(8,0) REFERENCES DOCENTE NOT NULL
);

CREATE TABLE INSCRIPCION(
COD_ALUMNO NUMBER(8,0) REFERENCES ALUMNO NOT NULL ,
ID_SECCION NUMBER(3,0) REFERENCES SECCION NOT NULL,
FECHA_INSCRIPCION DATE,
PRIMARY KEY(COD_ALUMNO,ID_SECCION)
);

CREATE TABLE ASESORIA(
COD_CURSO NUMBER(6,0) REFERENCES CURSO NOT NULL,
ID_ASESORIA NUMBER(9,0) PRIMARY KEY NOT NULL,
FECHA DATE,      
HORA_INICIO VARCHAR2(20),
HORA_FIN VARCHAR2(20),
TEMA VARCHAR2(120),
COD_DOCENTE NUMBER(8,0) REFERENCES DOCENTE NOT NULL
);

CREATE TABLE ASISTE(
COD_ALUMNO NUMBER(8,0) REFERENCES ALUMNO NOT NULL,
ID_ASESORIA NUMBER(9,0) REFERENCES ASESORIA NOT NULL,
ASISTENCIA_ALUMNO VARCHAR2(10), 
PRIMARY KEY(COD_ALUMNO,ID_ASESORIA)
);  

CREATE TABLE NOTA(
VALOR NUMBER(5,0),
COD_NOTA NUMBER(4,0) PRIMARY KEY NOT NULL,
COD_ALUMNO NUMBER(8,0) REFERENCES ALUMNO NOT NULL,
COD_CURSO NUMBER(6,0) REFERENCES CURSO NOT NULL
);
CREATE TABLE DISPONIBILIDAD(
COD_DOCENTE NUMBER(8,0) REFERENCES DOCENTE not null,
ID_D NUMBER(3,0) PRIMARY KEY NOT NULL,
HORA_INICIO VARCHAR2(20),
HORA_FIN VARCHAR2(20),
DISPONIBILIDAD VARCHAR2(35),
DIA VARCHAR2(20)
);

INSERT INTO DISPONIBILIDAD VALUES(30213795,01,'4:00pm','4:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,02,'4:30pm','5:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,03,'5:00pm','5:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,04,'5:30pm','6:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,05,'6:00pm','6:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,06,'6:30pm','7:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,07,'7:00pm','7:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,08,'7:30pm','8:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,09,'4:00pm','4:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,10,'4:30pm','5:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,11,'5:00pm','5:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,12,'5:30pm','6:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,13,'6:00pm','6:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,14,'6:30pm','7:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,15,'7:00pm','7:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,16,'7:30pm','8:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,17,'4:00pm','4:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,18,'4:30pm','5:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,19,'5:00pm','5:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,20,'5:30pm','6:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,21,'6:00pm','6:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,22,'6:30pm','7:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,23,'7:00pm','7:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,24,'7:30pm','8:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,25,'4:00pm','4:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,26,'4:30pm','5:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,27,'5:00pm','5:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,28,'5:30pm','6:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,29,'6:00pm','6:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,30,'6:30pm','7:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,31,'7:00pm','7:30pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,32,'7:30pm','8:00pm','DISPONIBLE', 'LUNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,33,'4:00pm','4:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,34,'4:30pm','5:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,35,'5:00pm','5:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,36,'5:30pm','6:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,37,'6:00pm','6:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,38,'6:30pm','7:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,39,'7:00pm','7:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,40,'7:30pm','8:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,41,'4:00pm','4:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,42,'4:30pm','5:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,43,'5:00pm','5:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,44,'5:30pm','6:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,45,'6:00pm','6:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,46,'6:30pm','7:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,47,'7:00pm','7:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,48,'7:30pm','8:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,49,'4:00pm','4:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,50,'4:30pm','5:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,51,'5:00pm','5:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,52,'5:30pm','6:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,53,'6:00pm','6:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,54,'6:30pm','7:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,55,'7:00pm','7:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,56,'7:30pm','8:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,57,'4:00pm','4:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,58,'4:30pm','5:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,59,'5:00pm','5:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,60,'5:30pm','6:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,61,'6:00pm','6:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,62,'6:30pm','7:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,63,'7:00pm','7:30pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,64,'7:30pm','8:00pm','DISPONIBLE', 'MARTES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,65,'4:00pm','4:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,66,'4:30pm','5:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,67,'5:00pm','5:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,68,'5:30pm','6:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,69,'6:00pm','6:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,70,'6:30pm','7:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,71,'7:00pm','7:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,72,'7:30pm','8:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,73,'4:00pm','4:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,74,'4:30pm','5:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,75,'5:00pm','5:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,76,'5:30pm','6:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,77,'6:00pm','6:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,78,'6:30pm','7:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,79,'7:00pm','7:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,80,'7:30pm','8:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,81,'4:00pm','4:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,82,'4:30pm','5:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,83,'5:00pm','5:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,84,'5:30pm','6:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,85,'6:00pm','6:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,86,'6:30pm','7:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,87,'7:00pm','7:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,88,'7:30pm','8:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,89,'4:00pm','4:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,90,'4:30pm','5:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,91,'5:00pm','5:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,92,'5:30pm','6:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,93,'6:00pm','6:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,94,'6:30pm','7:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,95,'7:00pm','7:30pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,96,'7:30pm','8:00pm','DISPONIBLE', 'MIERCOLES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,97,'4:00pm','4:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,98,'4:30pm','5:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,99,'5:00pm','5:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,100,'5:30pm','6:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,101,'6:00pm','6:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,102,'6:30pm','7:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,103,'7:00pm','7:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,104,'7:30pm','8:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,105,'4:00pm','4:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,106,'4:30pm','5:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,107,'5:00pm','5:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,108,'5:30pm','6:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,109,'6:00pm','6:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,110,'6:30pm','7:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,111,'7:00pm','7:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,112,'7:30pm','8:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,113,'4:00pm','4:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,114,'4:30pm','5:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,115,'5:00pm','5:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,116,'5:30pm','6:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,117,'6:00pm','6:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,118,'6:30pm','7:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,119,'7:00pm','7:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,120,'7:30pm','8:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,121,'4:00pm','4:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,122,'4:30pm','5:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,123,'5:00pm','5:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,124,'5:30pm','6:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,125,'6:00pm','6:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,126,'6:30pm','7:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,127,'7:00pm','7:30pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,128,'7:30pm','8:00pm','DISPONIBLE', 'JUEVES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,129,'4:00pm','4:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,130,'4:30pm','5:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,131,'5:00pm','5:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,132,'5:30pm','6:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,133,'6:00pm','6:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,134,'6:30pm','7:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,135,'7:00pm','7:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,136,'7:30pm','8:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,137,'4:00pm','4:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,138,'4:30pm','5:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,139,'5:00pm','5:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,140,'5:30pm','6:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,141,'6:00pm','6:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,142,'6:30pm','7:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,143,'7:00pm','7:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30216389,144,'7:30pm','8:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,145,'4:00pm','4:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,146,'4:30pm','5:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,147,'5:00pm','5:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,148,'5:30pm','6:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,149,'6:00pm','6:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,150,'6:30pm','7:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,151,'7:00pm','7:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30217561,152,'7:30pm','8:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,153,'4:00pm','4:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,154,'4:30pm','5:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,155,'5:00pm','5:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,156,'5:30pm','6:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,157,'6:00pm','6:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,158,'6:30pm','7:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,159,'7:00pm','7:30pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30218512,160,'7:30pm','8:00pm','DISPONIBLE', 'VIERNES');
INSERT INTO DISPONIBILIDAD VALUES(30213795,161,'4:00pm','4:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,162,'4:30pm','5:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,163,'5:00pm','5:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,164,'5:30pm','6:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,165,'6:00pm','6:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,166,'6:30pm','7:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,167,'7:00pm','7:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,168,'7:30pm','8:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,169,'4:00pm','4:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,170,'4:30pm','5:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,171,'5:00pm','5:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,172,'5:30pm','6:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,173,'6:00pm','6:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,174,'6:30pm','7:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,175,'7:00pm','7:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,176,'7:30pm','8:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,177,'4:00pm','4:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,178,'4:30pm','5:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,179,'5:00pm','5:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,180,'5:30pm','6:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,181,'6:00pm','6:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,182,'6:30pm','7:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,183,'7:00pm','7:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,184,'7:30pm','8:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,185,'4:00pm','4:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,186,'4:30pm','5:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,187,'5:00pm','5:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,188,'5:30pm','6:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,189,'6:00pm','6:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,190,'6:30pm','7:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,191,'7:00pm','7:30pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,192,'7:30pm','8:00pm','DISPONIBLE', 'SABADO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,193,'4:00pm','4:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,194,'4:30pm','5:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,195,'5:00pm','5:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,196,'5:30pm','6:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,197,'6:00pm','6:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,198,'6:30pm','7:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,199,'7:00pm','7:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30213795,200,'7:30pm','8:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,201,'4:00pm','4:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,202,'4:30pm','5:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,203,'5:00pm','5:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,204,'5:30pm','6:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,205,'6:00pm','6:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,206,'6:30pm','7:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,207,'7:00pm','7:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30216389,208,'7:30pm','8:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,209,'4:00pm','4:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,210,'4:30pm','5:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,211,'5:00pm','5:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,212,'5:30pm','6:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,213,'6:00pm','6:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,214,'6:30pm','7:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,215,'7:00pm','7:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30217561,216,'7:30pm','8:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,217,'4:00pm','4:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,218,'4:30pm','5:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,219,'5:00pm','5:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,220,'5:30pm','6:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,221,'6:00pm','6:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,222,'6:30pm','7:00pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,223,'7:00pm','7:30pm','DISPONIBLE', 'DOMINGO');
INSERT INTO DISPONIBILIDAD VALUES(30218512,224,'7:30pm','8:00pm','DISPONIBLE', 'DOMINGO');

SELECT * FROM ALUMNO; 
SELECT * FROM ASISTE;
SELECT * FROM CURSO;
SELECT * FROM ASESORIA;
SELECT * FROM DOCENTE;
SELECT * FROM NOTA ;