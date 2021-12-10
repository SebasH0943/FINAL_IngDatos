--El sistema debe permitirle al alumno poder visualizar sus notas de cada curso de manera didáctica, además de mostrarle
--al profesor del curso, el peso de la asignatura y el área al que pertenece cada curso.
SELECT a.nombre||' '||a.apellido alumno, n.valor NOTA, c.nombre CURSO, D.NOMBRE||' '||D.APELLIDO DOCENTE, s.id_seccion||' '||s.letra_seccion SECCION, c.area, c.peso
FROM ALUMNO A, NOTA N, CURSO C, DOCENTE D, SECCION S
WHERE A.COD_ALUMNO = N.COD_ALUMNO AND N.COD_CURSO = C.COD_CURSO AND C.COD_CURSO = S.COD_CURSO AND s.cod_docente = d.cod_docente AND A.COD_ALUMNO = 20210695;


--Así mismo, el sistema debe permitirle al profesor
--insertar las notas de cada alumno de cada uno de los cursos que enseña de una manera ordenada.
UPDATE NOTA
--aqui el profe selecciona la nota que debe inserta
SET valor = 20
--Aqui selecciona el codigo del alumno
WHERE cod_alumno = 20210695
--Aqui selecciona el curso
AND cod_curso = 240008;


--El alumno debe poder solicitar una cita con cualquier docente seleccionando una hora y fecha para la cita.
INSERT INTO CITA
VALUES (104, '21/12/21', '1:00pm', '1:30pm', 30218512, 20210695);

--El sistema debe permitirle al docente poder revisar las citas solicitadas de cada uno  de los alumnos,
--además de la fecha y hora de la cita.
SELECT D.NOMBRE||' '||D.APELLIDO DOCENTE, C.FECHA, C.HORA_INICIO, C.HORA_FIN, a.nombre||' '||a.apellido alumno
FROM ALUMNO A, CITA C, DOCENTE D
WHERE A.COD_ALUMNO = C.COD_ALUMNO AND C.cod_docente = d.cod_docente AND d.cod_docente = 30213795;

--El sistemas debe permitirle al alumno ver que días realizan su asesoría cada docente.
SELECT D.NOMBRE||' '||D.APELLIDO DOCENTE, A.TEMA, a.FECHA Fecha_Asesoria, a.HORA_INICIO, a.HORA_FIN
FROM Asesoria A, DOCENTE D
WHERE A.cod_docente = d.cod_docente;


CREATE OR REPLACE PROCEDURE CONFIRMAASISTASESO(codalum ASISTE.cod_alumno%TYPE, idaseso ASISTE.id_asesoria%TYPE)
AS
BEGIN
UPDATE ASISTE SET ASISTENCIA_ALUMNO ='Presente' WHERE cod_alumno = codalum AND id_asesoria = idaseso; 
END;
/
Select * from ASISTE;

--El sistema debe permitirle al docente poder registrar los talleres que realizará.
--Además podrá ingresar la fecha y hora en la que se realizará el taller.
INSERT INTO Taller
--aqui se inserta el codigo del docente que crea el taller
VALUES (115, '21/12/21', '1:00pm', '1:30pm', 30218512);

--El alumno podrá confirmar su participación en los talleres que realizarán los docentes.
SELECT D.NOMBRE||' '||D.APELLIDO DOCENTE, t.FECHA Fecha_Taller, t.HORA_INICIO, t.HORA_FIN
FROM Taller t, DOCENTE D
WHERE T.cod_docente = d.cod_docente;
--aqui escogemos el codigo del docente el cual deseamos saber sobre su asesoria

CREATE OR REPLACE PROCEDURE CONFIRMAASISTTALL(codalum PIDE.cod_alumno%TYPE, idtall pide.id_taller%TYPE)
AS
BEGIN
UPDATE PIDE SET ASISTENCIA_ALUMNO ='Presente' WHERE cod_alumno = codalum AND id_taller = idtall; 
END;
/
