/* 
	Nombre de la práctica: Sistema de base de datos (EnglishTec)
	Tema de referencia: Lenguaje de manipulación de datos (DML)
	Objetivo de la práctica: Desarrollar un sistema de base de datos, 
	el cual implemente normas de integridad de datos, así como 
	establecer de forma correcta y completa técnicas de manipulación de datos. 
	Materia: Taller de Bases De Datos.
	Alumnos:
		Isabel Esmeralda Carrillo Rodríguez
		Elienai Azucena Avitia Muñiz
		Héctor Adair Jiménez Ibarra
		Yohel Ceniceros Cabrera.			
*/



---CREACIÓN DE TABLAS.

-- Creación de Base de Datos llamada EnglisTec.
CREATE DATABASE EnglishTec
-- Usar la Base de datos EnglishTec.
USE EnglishTec
--1.- Se creó la tabla Departamento la cual contiene los siguentes campos...
CREATE TABLE Departamento (
	idDepartamento INT IDENTITY,		--Campo denominado idDepartamento con tipo de dato INT, más KW: identity.
	nombreDepartamento VARCHAR (50),	--Campo denominado nombreDepartamento tipo de dato VARCHAR.
	horaEntrada TIME(0),				--Campo denominado horaEntrada con tipo de dato TIME.
	horaSalida TIME(0),					--Campo denominado horaSalida con tipo de dato TIME.
	
	CONSTRAINT PK_Departamento_idDepartamento PRIMARY KEY (idDepartamento)  --Creación de restricción tipo PK en el campo idDepartamento.
)

--2.- Se creó la tabla Alumnos la cual contiene los siguientes campos...
CREATE TABLE Alumnos (
	matricula INT IDENTITY (220000,1),	--Campo denominado matricula con tipo de dato INT, más kw: identity.			
	idNivel INT,						--Campo denominado idNivel con tipo de dato INT que funge como FK.
	nombreAlumno VARCHAR (30),			--Campo denominado nombreAlumno con tipo de dato VARCHAR.
	primerApellido VARCHAR (30),		--Campo denominado primerApellido con tipo de dato VARCHAR.
	segundoApellido VARCHAR (30),		--Campo denominado segundoApellido con tipo de dato VARCHAR.
	NSS CHAR (11),						--Campo denominado NSS con tipo de dato CHAR.
	CURP CHAR (18),						--Campo denominado CURP con tipo de dato CHAR.
	pago MONEY,							--Campo denominado pago con tipo de dato MONEY.

	CONSTRAINT PK_Alumnos_matricula PRIMARY KEY (matricula),	--Creación de restricción tipo PK en el campo matricula.
	CONSTRAINT UQ_Alumnos_CURP UNIQUE(CURP),					--Creación de restricción tipo UQ en el campo CURP.
	CONSTRAINT UQ_Alumnos_NSS UNIQUE(NSS)						--Creación de restricción tipo UQ en el campo NSS.
)

--3.- Se creó la tabla Empleado la cual contiene los siguientes campos...
CREATE TABLE Empleado (
	dniEmpleado INT IDENTITY (110000,1),--Campo denominado dniEmpleado con tipo de dato INT, más kw: identity.
	idDepartamento INT,					--Campo denominado idDepartamento con tipo de dato INT que funge como FK.
	especialidad VARCHAR (60),			--Campo denominado especialidad con tipo de dato VARCHAR.
	nombreEmpleado VARCHAR (30),		--Campo denominado nombreEmpleado con tipo de dato VARCHAR.
	primerApellido VARCHAR (30),		--Campo denominado primerApellido con tipo de dato VARCHAR.
	segundoApellido VARCHAR (30),		--Campo denominado segundoApellido con tipo de dato VARCHAR.
	puesto VARCHAR (30),				--Campo denominado puesto con tipo de dato VARCHAR.
	sueldoPorHora MONEY,				--Campo denominado sueldoPorHora con tipo de dato MONEY.
	NSS CHAR (11),						--Campo denominado NSS con tipo de dato CHAR.
	CURP CHAR (18),						--Campo denominado CURP con tipo de dato CHAR.

	CONSTRAINT PK_Empleado_dniEmpleado PRIMARY KEY (dniEmpleado),	--Creación de restricción tipo PK en el campo dniEmpleado.
	CONSTRAINT UQ_Empleado_CURP UNIQUE(CURP),						--Creación de restricción tipo UQ en el campo CURP.
	CONSTRAINT UQ_Empleado_NSS UNIQUE(NSS)							--Creación de restricción tipo UQ en el campo NSS.
)

--4.- Se creó la tabla HorasTrabajadas la cual contiene los siguientes campos...
CREATE TABLE HorasTrabajadas(
	idHorasTrabajadas INT IDENTITY,		--Campo denominado idHorasTrabajadas con tipo de dato INT, más kw: identity.
	horaEntrada TIME(0),				--Campo denominado horaEntrada con tipo de dato TIME.
	horaSalida TIME(0),					--Campo denominado horaSalida con tipo de dato TIME.
	fecha DATE,							--Campo denominado fecha con tipo de dato DATE.
	dniEmpleado INT,					--Campo denominado dniEmpleado con tipo de dato INT que funge como FK.
	retardo BIT,						--Campo denominado retardo con tipo de dato BIT.
	retardoJustificado BIT,				--Campo denominado retardoJustificado con tipo de dato BIT.
	horasCubiertas INT,					--Campo denominado horasCubieras con tipo de dato INT.

	CONSTRAINT PK_HorasTrabajadas_idHorasTrabajadas PRIMARY KEY (idHorasTrabajadas)--Creación de restricción tipo PK en el campo idHorasTrabajadas.
)
--Creación de restricción en la tabla ExpedienteEmpleado tipo DF. 
ALTER TABLE HorasTrabajadas
		ADD CONSTRAINT DF_HorasTrabajadas_fecha DEFAULT GETDATE() FOR fecha; --Que  la fecha sea por default la fecha actual.

--5.- Se creó la tabla ExpedienteEmpleado la cual contiene los siguientes campos...
CREATE TABLE ExpedienteEmpleado (
	idExpedienteEmpleado INT IDENTITY,	--Campo denominado idExpedienteEmpleado con tipo de dato INT, más kw: identity.
	dniEmpleado INT,					--Campo denominado dniEmpleado con tipo de dato INT que funge como FK.
	fechaIngreso DATE,					--Campo denominado fechaIngreso con tipo de dato DATE.
	códigoPostal CHAR (5),				--Campo denominado códigoPostal con tipo de dato CHAR.
	tipoSangre VARCHAR (5),				--Campo denominado tipoSangre con tipo de dato VARCHAR.
	numeroTelefonico CHAR (10),			--Campo denominado numeroTelefonico con tipo de dato CHAR.
	estado VARCHAR (30),				--Campo denominado estado con tipo de dato VARCHAR.
	ciudad VARCHAR (40),				--Campo denominado ciudad con tipo de dato VARCHAR.
	colonia VARCHAR (30),				--Campo denominado colonia con tipo de dato VARCHAR.
	calle VARCHAR (40),					--Campo denominado calle con tipo de dato VARCHAR.
	estatus BIT,						--Campo denominado estatus con tipo de dato BIT.
	

	CONSTRAINT PK_ExpedienteEmpleado_idExpedienteEmpleado PRIMARY KEY (idExpedienteEmpleado),--Creación de restricción tipo PK en el campo idExpedienteEmpleado.
	CONSTRAINT UQ_ExpedienteEmpleado_numeroTelelfonico UNIQUE(numeroTelefonico)				 --Creación de restricción tipo UQ en el campo numeroTelefonico.
)

--Creación de restricción en la tabla ExpedienteEmpleado tipo DF. 
ALTER TABLE ExpedienteEmpleado
		ADD CONSTRAINT DF_ExpedienteEmpleado_fechaIngreso DEFAULT GETDATE() FOR fechaIngreso; --Que la fecha de ingreso sea por default la fecha actual.

--Creación de restricción en la tabla ExpedienteEmpleado tipo DF.
ALTER TABLE ExpedienteEmpleado
		ADD CONSTRAINT DF_ExpedienteEmpleado_estatus DEFAULT 1 FOR estatus;					 --Que el estatus del empleado sea por default 1.

--6.- Se creo la tabla ExpedienteAlumno la cual contiene los siguientes campos...
CREATE TABLE ExpedienteAlumno (
	idExpedienteAlumno INT IDENTITY,	--Campo denominado idExpedienteAlumno con tipo de dato INT, más kw: identity.
	matricula INT,						--Campo denominado matricula con tipo de dato INT que funge como FK.
	fechaIngreso DATE,					--Campo denominado fechaIngreso con tipo de dato DATE.
	códigoPostal CHAR (5),				--Campo denominado códigoPostal con tipo de dato CHAR.
	tipoSangre VARCHAR (5),				--Campo denominado tipoSangre con tipo de dato VARCHAR.
	numeroTelefonico CHAR (10),			--Campo denominado numeroTelefonico con tipo de dato CHAR.
	estado VARCHAR (30),				--Campo denominado estado con tipo de dato VARCHAR.
	ciudad VARCHAR (40),				--Campo denominado ciudad con tipo de dato VARCHAR.
	colonia VARCHAR (30),				--Campo denominado colonia con tipo de dato VARCHAR.
	calle VARCHAR (40),					--Campo denominado calle con tipo de dato VARCHAR.
	estatus BIT,						--Campo denominado estatus con tipo de dato BIT.
	email VARCHAR (60),					--Campo denominado email con tipo de dato VARCHAR.

	CONSTRAINT PK_ExpedienteAlumno_idExpedienteAlumno PRIMARY KEY (idExpedienteAlumno),	--Creación de restricción tipo PK en el campo idExpedienteAlumno.
	CONSTRAINT UQ_ExpedienteAlumno_email UNIQUE(email),									--Creación de restricción tipo UQ en el campo email.
	CONSTRAINT UQ_ExpedienteAlumno_numeroTelefonico UNIQUE(numeroTelefonico)			--Creación de restricción tipo UQ en el campo numeroTelefonico.
)

--Creación de restricción en la tabla ExpedienteAlumno tipo DF. 
ALTER TABLE ExpedienteAlumno
		ADD CONSTRAINT DF_ExpedienteAlumno_fechaIngreso DEFAULT GETDATE() FOR fechaIngreso;--Que  la fecha de ingreso sea por default la fecha actual.

--Creación de restricción en la tabla ExpedienteAlumno tipo DF.
ALTER TABLE ExpedienteAlumno
		ADD CONSTRAINT DF_ExpedienteAlumno_estatus DEFAULT 1 FOR estatus;--Que el estatus del Alumno sea por default 1.

--7.- Se creó la tabla Nivel la cual contiene los siguientes campos...
CREATE TABLE Nivel (
	idNivel INT IDENTITY,			--Campo denominado idNivel con tipo de dato INT, más kw: identity.
	nombreNivel VARCHAR (20),		--Campo denominado nombreNivel con tipo de dato VARCHAR.		
	costo MONEY,					--Campo denominado costo con tipo de dato MONEY.

	CONSTRAINT PK_Nivel_idNivel PRIMARY KEY (idNivel)	--Creación de restricción tipo PK en el campo idNivel.
)

--8.- Se creó la tabla Nivel la cual contiene los siguientes campos...
CREATE TABLE Material (
	idMaterial INT IDENTITY,		--Campo denominado idMaterial con tipo de dato INT, más kw: identity.
	nombreMaterial VARCHAR (50),	--Campo denominado nombreMaterial con tipo de dato VARCHAR.
	idNivel INT,					--Campo denominado idNivel con tipo de dato INT que funge como FK.
	costo MONEY,					--Campo denominado costo con tipo de dato MONEY.
	autor VARCHAR (50),				--Campo denominado autor con tipo de dato VARCHAR.
	tipo VARCHAR (50),				--Campo denominado tipo con tipo de dato VARCHAR. 
	cantidad INT,					--Campo denominado cantidad con tipo de dato INT.
	
	CONSTRAINT PK_Material_idMaterial PRIMARY KEY (idMaterial)	--Creación de restricción tipo PK en el campo idMaterial.
)

--Creación de restricción en la tabla Material tipo DF.
ALTER TABLE Material
	ADD CONSTRAINT DF_Material_cantidad DEFAULT 0 FOR cantidad; --Que la cantidad del material sea por default 0.

--9.- Se creó la tabla CursoGrupo la cual contiene los siguientes campos...
CREATE TABLE CursoGrupo (
	idCurso INT IDENTITY,		--Campo denominado idCurso con tipo de dato INT, más kw: identity.
	dniEmpleado INT,			--Campo denominado dniEmpleado con tipo de dato INT que funge como FK.
	idNivel INT,				--Campo denominado idNivel con tipo de dato INT que funge como FK.
	horario VARCHAR (20),		--Campo denominado horario con tipo de dato VARCHAR.
	
	CONSTRAINT PK_CursoGrupo_idCurso PRIMARY KEY (idCurso)	--Creación de restricción tipo PK en el campo idCurso.
)

--10.- Se creó la tabla Calificaciones la cual contiene los siguientes campos...
CREATE TABLE Calificaciones(
	idCalificacion INT IDENTITY,	--Campo denominado idCalificacion con tipo de dato INT, más kw: identity.
	matricula INT,					--Campo denominado matricula con tipo de dato INT que funge como FK.
	idCurso INT,					--Campo denominado idCurso con tipo de dato INT que funge como FK.				
	calificacion DECIMAL,			--Campo denominado calificación con tipo de dato DECIMAL.
	unidad INT,						--Campo denominado unidad con tipo de dato INT.
	
	CONSTRAINT PK_Calificaciones_idCalificacion PRIMARY KEY (idCalificacion)	--Creación de restricción tipo PK en el campo idCalificacion.
)
--10.- Se creó la tabla BitacoraTransacciones la cual contiene los siguientes campos...
CREATE TABLE BitacoraTransacciones(
	idBitacora INT IDENTITY,	    --Campo denominado idBitacora con tipo de dato INT, más kw: identity.
	instruccionDML VARCHAR(15),		--Campo denominado instruccionDML con tipo de dato VARCHAR.
	tablaAfectada VARCHAR(25),		--Campo denominado tablaAfectada con tipo de dato VARCHAR.
	fechaCambio DATETIME,			--Campo denominado fechaCambio con tipo de dato DATETIME.
	valorAntiguo VARCHAR(100) NULL,	--Campo denominado valorAntiguo con tipo de dato VARCHAR.
	valorNuevo VARCHAR(100) NULL	--Campo denominado valorNuevo con tipo de dato VARCHAR.

	CONSTRAINT pk_BitacoraTransacciones PRIMARY KEY(idBitacora)					--Creación de restricción tipo PK en el campo idBitacora.
)
--RELACIONES

--1.- Restricción en la tabla Empleado para identificar la FK.
ALTER TABLE Empleado							--Entidad débil.
	ADD CONSTRAINT FK_DepartamentoEmpleado		--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (idDepartamento)				--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Departamento(idDepartamento)		--Referencia de la EntidadFuerte(Campo FK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientas haya datos asociados.

--2.- Restricción en la tabla ExpedienteEmpleado para identificar la FK.
ALTER TABLE ExpedienteEmpleado					--Entidad débil.
	ADD CONSTRAINT FK_EmpleadoExpedienteEmpleado--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (dniEmpleado)					--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Empleado(dniEmpleado)			--Referencia de la EntidadFuerte(Campo FK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.

--3.- Restricción en la tabla ExpedienteAlumno para identificar la FK..
ALTER TABLE ExpedienteAlumno					--Entidad débil.
	ADD CONSTRAINT FK_AlumnosExpedienteAlumno	--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (matricula)						--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Alumnos(matricula)				--Referencia de la EntidadFuerte(Campo FK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.

--4.- Restricción en la tabla Calificaciones para identificar la FK.
ALTER TABLE Calificaciones						--Entidad débil.
	ADD CONSTRAINT FK_AlumnosCalificaciones		--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (matricula)						--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Alumnos(matricula)				--Referencia de la EntidadFuerte(Campo FK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.

--5.- Restricción en la tabla Calificaciones para identificar la FK.
ALTER TABLE Calificaciones						--Entidad débil.
	ADD CONSTRAINT FK_CursoGrupoCalificaciones	--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (idCurso)						--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES CursoGrupo(idCurso)				--Referencia de la EntidadFuerte(Campo FK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.

--6.- Restricción en la tabla CUrsoGrupo para identificar la FK..
ALTER TABLE CursoGrupo							--Entidad débil.
	ADD CONSTRAINT FK_EmpleadoCursoGrupo		--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (dniEmpleado)					--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Empleado(dniEmpleado)			--Referencia de la EntidadFuerte(Campo FK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.

--7.- Restricción en la tabla CursoGrupo para identificar la FK.
ALTER TABLE CursoGrupo							--Entidad débil.
	ADD CONSTRAINT FK_NivelCursoGrupo			--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (idNivel)						--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Nivel(idNivel)					--Referencia de la EntidadFuerte(Campo FK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.
	
--8.- Restricción en la tabla Material para identificar la FK.
ALTER TABLE Material							--Entidad débil.
	ADD CONSTRAINT FK_NivelMaterial				--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (idNivel)						--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Nivel(idNivel)					--Referencia de la EntidadFuerte(Campo FK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.

--9.- Restricción en la tabla HorasTrabajadas para identificar la FK.
ALTER TABLE HorasTrabajadas						--Entidad débil.
	ADD CONSTRAINT FK_EmpleadoHorasTrabajadas	--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (dniEmpleado)					--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Empleado(dniEmpleado)			--Referencia de la EntidadFuerte(Campo PK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.

--10.- Restricción en la tabla HorasTrabajadapara identificar la FK.
ALTER TABLE Alumnos								--Entidad débil.
	ADD CONSTRAINT FK_NivelAlumnos				--Nombre de la relación con formato FK_EntidadFuerteEntidadDebil.
	FOREIGN KEY (idNivel)						--Nombre del atributo que funge como FK en la entidad débil.
	REFERENCES Nivel(idNivel)					--Referencia de la EntidadFuerte(Campo PK).
	ON DELETE NO ACTION							--No eliminar nada mientras haya datos asociados.
	ON UPDATE NO ACTION							--No actualizar nada mientras haya datos asociados.


			--DEPARTAMENTO.
--1.-Proyección de la tabla Departamento.
SELECT * FROM Departamento

--CREACIÓN DE TRIGGER-INSERT-DEPARTAMENTO.
CREATE TRIGGER tr_BitacoraDepartamento 
	ON Departamento																--En la tabla Departamento.
	FOR INSERT																	--Para la tabla inserted.
AS																				--Inicializador.
	--CUERPO DEL TRIGGER.
	--Se declaran las variables para guardar los registros de los campos de la tabla Departamento.
	DECLARE @valorNuevo VARCHAR(50)												--Variable denominada valorNuevo con un tipo de dato VARCHAR.
	SELECT @valorNuevo = nombreDepartamento FROM inserted						--El valorNuevo es igual a los campos de la tabla Inserted.
	INSERT INTO BitacoraTransacciones											--Insertar en la tabla BitacoraTransacciones.
	VALUES('INSERT','Departamento',GETDATE(),NULL,@valorNuevo)					--Los valores que se le asocian a cada campo.

--CREACIÓN DE STORE PROCEDURE DE LA TABLA DEPARTAMENTO.
CREATE PROC sp_InsertarDepartamento
	@nombreDepartamento VARCHAR(50),											--Parametro denominado nombreDepartamento con un tipo de dato VARCHAR.
	@horaEntrada TIME,															--Parametro denominado horaEntrada con un tipo de dato TIME.
	@horaSalida TIME															--Parametro denominado horaSalida con un tipo de dato TIME.
AS																				--Inicializador.
	--TRANSACCIÓN					
	SET IMPLICIT_TRANSACTIONS ON												--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.
	BEGIN TRY																	--Comienza el proceso de transacción.
		INSERT INTO Departamento(nombreDepartamento, horaEntrada, horaSalida)	--Insertar en la tabla Departamento.
		VALUES(@nombreDepartamento, @horaEntrada, @horaSalida)					--La información que se asociaran a la tabla Departamento.
		COMMIT																	--Confirmar insercción.
	END TRY																		--Finalizar la transacción.			
	BEGIN CATCH																	--Comienzo del control de error.
		RAISERROR('Error al insertar.',16,1)									--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																--Cancelar cualquier acción.
	END CATCH																	--Finaliza el control de error.
-------------

EXEC sp_InsertarDepartamento	'Teachers','08:00:00','15:00:00'				--Ejecutar el almacenamiento de información.
EXEC sp_InsertarDepartamento	'Escolares','08:30:00','13:00:00'				--Ejecutar el almacenamiento de información.
EXEC sp_InsertarDepartamento	'Directivos','09:00:00','14:30:00'				--Ejecutar el almacenamiento de información.
EXEC sp_InsertarDepartamento	'Finanzas','09:00:00','15:00:00'				--Ejecutar el almacenamiento de información.									
	
			--NIVEL.
--2.- Proyección de la tabla Nivel.
SELECT * FROM Nivel		
--3.- Proyección de la tabla BitacoraTransacciones.
SELECT * FROM BitacoraTransacciones

--CREACIÓN DE TRIGGER-INSERT-BitacoraNivel.
CREATE TRIGGER tr_BitacoraNivel
	ON Nivel																		--En la tabla Nivel.	
	FOR INSERT																		--Para la tabla inserted.
AS																					--Inicializador. 
	--CUERPO DEL TRIGGER
	--Se declaran las variables para guardar los registros de los campos de la tabla Nivel.
	DECLARE @valorNuevo VARCHAR(100)												--Variable denominada valorNuevo con un tipo de dato VARCHAR.
	SELECT @valorNuevo = CONCAT(idNivel,' ',nombreNivel,' ',costo) FROM inserted	--El valorNuevo es igual a los campos de la tabla Inserted.
	INSERT INTO BitacoraTransacciones												--Insertar en la tabla BitacoraTransacciones.
	VALUES('INSERT','Nivel',GETDATE(),NULL,@valorNuevo)								--Los valores que se le asocian a cada campo a la tabla Nivel.

--CREACIÓN DE STORE PROCEDURE DE LA TABLA NIVEL.
CREATE PROC sp_InsertarNivel				
	@nombreNivel VARCHAR(100),														--Parametro denominado nombreNivel con un tipo de dato VARCHAR.
	@costo MONEY																	--Parametro denominado costo con un tipo de dato MONEY.
AS																					--Inicializador.
	---TRANSACCIÓN
	SET IMPLICIT_TRANSACTIONS ON													--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.
	BEGIN TRY																		--Comienza el proceso de transacción.
		INSERT INTO Nivel															--Insertar en la tabla Nivel.
		VALUES(@nombreNivel,@costo)													--La información que se asociara a la tabla Nivel.
		COMMIT																		--Confirmar la insercción.
	END TRY																			--Finalizar la transacción.
	BEGIN CATCH																		--Comienzo del control de error.
		RAISERROR('Error al insertar.',16,1)										--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																	--Cancelar cualquier acción.
	END CATCH																		--Finaliza el control de error.

-------------
EXEC sp_InsertarNivel	'Inglés A2', '750.00'										--Ejecutar el almacenamiento de información.
EXEC sp_InsertarNivel	'Inglés B1', '750.00'										--Ejecutar el almacenamiento de información.
EXEC sp_InsertarNivel	'Inglés B2', '1000.00'										--Ejecutar el almacenamiento de información.
EXEC sp_InsertarNivel	'Inglés C1', '1500.00'										--Ejecutar el almacenamiento de información.


--CREACIÓN DE TRIGGER-INSERT-BITACORANIVELUPDATE.
CREATE TRIGGER tr_BitacoraNivelUpdate
	ON Nivel																		--En la tabla Nivel.	
	FOR UPDATE																		--Para la tabla inserte y deleted.
AS																					--Inicializador.
	---CUERPO DEL TRIGGER.
	--Se declaran las variables para guardar los registros de los campos de la tabla Nivel.
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)					--Variable denominada valorNuevo y valorAntiguo con un tipo de dato VARCHAR.
	SELECT @valorNuevo = costo FROM inserted										--El valorNuevo es igual a los campos de la tabla Inserted.
	SELECT @valorAntiguo = costo FROM deleted										--El valorAntiguo es igual a los campos de la tabla deleted.
	INSERT INTO BitacoraTransacciones												--Insertar en la tabla BitacoraTransacciones.
	VALUES('UPDATE','Nivel',GETDATE(),@valorAntiguo,@valorNuevo)					--Los valores que se le asocian a cada campo.

--CREACIÓN DE STORE PROCEDURE DE LA TABLA Nivel	
CREATE PROC sp_ActualizarNivel
	@idNivel INT,																	--Parametro denominado idNivel con un tipo de dato INT.
	@costo MONEY																	--Parametro denominado costo con un tipo de dato MONEY.
AS																					--Inicializador.
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON													--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.			
	BEGIN TRY																		--Comienza el proceso de transacción.
		UPDATE Nivel																--Actualizar la tabla Nivel.
			SET costo = @costo														--Asignar que los registros de los campos sean igual a los registros de los parametros.
			WHERE idNivel= @idNivel													--Filtrar que el campo idNivel sea igual al parametro idNivel.
		COMMIT																		--Confirmar la actualización.
	END TRY																			--Finalizar la transacción.
	BEGIN CATCH																		--Comienzo del control de error.
		RAISERROR('Error al actualizar.',16,1)										--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																	--Cancelar cualquier acción.
	END CATCH																		--Finaliza el control de error.

EXEC sp_ActualizarNivel	1, '800.00'													--Ejecutar el almacenamiento de información.


			--ALUMNOS.
--3.-Proyección de la tabla Alumnos.
SELECT * FROM Alumnos

--CREACIÓN DE TRIGGER-INSERT-ALUMNOS.
CREATE TRIGGER tr_BitacoraAlumnosInsertar 
	ON Alumnos																							--En la tabla Alumnos.	
	FOR INSERT																							--Para la tabla inserted.
AS																										--Inicializador.
	--CUERPO DEL TRIGGER.
	--Se declaran las variables para guardar los registros de los campos de la tabla Alumno.
	DECLARE @valorNuevo VARCHAR(200)																	--Variable denominada valorNuevo con un tipo de dato VARCHAR.
	SELECT @valorNuevo = CONCAT(nombreAlumno, ' ', primerApellido, ' ', segundoApellido) FROM inserted	--El valorNuevo es igual a los campos de la tabla Inserted.
	INSERT INTO BitacoraTransacciones																	--Insertar en la tabla BitacoraTransacciones.
	VALUES('INSERT','Alumnos',GETDATE(),NULL,@valorNuevo)												--Los valores que se le asocian a cada campo.

--CREACIÓN DE STORE PROCEDURE DE LA TABLA ALUMNO.
CREATE PROC sp_InsertarAlumnos
	@idNivel INT,																						--Parametro denominado idNivel con un tipo de dato INT.
	@nombreAlumno VARCHAR (30),																			--Parametro denominado nombreAlumno con un tipo de dato VARCHAR.
	@primerApellido VARCHAR (30),																		--Parametro denominado primerApellido con un tipo de dato VARCHAR.
	@segundoApellido VARCHAR (30),																		--Parametro denominado segundoApellido con un tipo de dato VARCHAR.
	@NSS CHAR (11),																						--Parametro denominado NSS con un tipo de dato CHAR.
	@CURP CHAR (17),																					--Parametro denominado CURP con un tipo de dato CHAR.
	@pago MONEY																							--Parametro denominado pago con un tipo de dato MONEY.
AS																										--Inicializador.
	---TRANSACCION.
	SET IMPLICIT_TRANSACTIONS ON																		--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.
	BEGIN TRY																							--Comienza el proceso de transacción.
		INSERT INTO Alumnos																				--Insertar la tabla Alumno.
		VALUES(@idNivel, @nombreAlumno,@primerApellido, @segundoApellido,@NSS,@CURP, @pago)				--La información que se asociaran a la tabla Alumnos.
		COMMIT																							--Confirmar insercción.
	END TRY																								--Finalizar la transacción.	
	BEGIN CATCH																							--Comienzo del control de error.
		RAISERROR('Error al insertar.',16,1)															--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																						--Cancelar cualquier acción.
	END CATCH																							--Finaliza el control de error.
------------
SELECT * FROM Alumnos
EXEC sp_InsertarAlumnos	1,'Ana Paulina','Rivas','Martinez','55123467891','RIMA020427MCLVRNA8', 750		--Ejecutar el almacenamiento de información.
EXEC sp_InsertarAlumnos	2,'Valeria','Robles','Espinoza','55123467892','ROEV020517MCLBSLA3',750			--Ejecutar el almacenamiento de información.
EXEC sp_InsertarAlumnos	2,'Esmeralda','Varela','Salinas','55123467893','VASE020718CLRLSA8',300			--Ejecutar el almacenamiento de información.
EXEC sp_InsertarAlumnos	3,'Elienai','Avitia','Muñiz','55123467894','AVME020329MCVZLSA3',500				--Ejecutar el almacenamiento de información.
EXEC sp_InsertarAlumnos	1,'Héctor','Jimenez','Esquivel','55123467895','JIEH011229HCLRDSA3',250			--Ejecutar el almacenamiento de información.
EXEC sp_InsertarAlumnos	3,'Yohel','Ceniceros','Cabrera','55123467896','CECY030905HCLRDSA3',300			--Ejecutar el almacenamiento de información.
EXEC sp_InsertarAlumnos	3,'Ulises','Martinez','Rodríguez','55123467897','MARU891029MCLRDSA3',500		--Ejecutar el almacenamiento de información.
EXEC sp_InsertarAlumnos	2,'Leonardo','Loza','Milan','55123467902','LLMO891029HCLRDSA3',300				--Ejecutar el almacenamiento de información.


--Creacion del TRIGGER AlumnosUpdate.
CREATE TRIGGER tr_BitacoraAlumnosUpdate
	ON Alumnos																							--En la tabla Alumnos.		                                                            	
	FOR UPDATE																							--Para la tabla inserte y deleted.
AS																										--Inicializador.
	---CUERPO DEL TRIGGER
	--Se declaran las variables para guardar los registros de los campos de la tabla Nivel.
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)										--Variable denominada valorNuevo y valorAntiguo con un tipo de dato VARCHAR.
	SELECT @valorNuevo = CONCAT ( idNivel,'',pago) FROM inserted										--El valorNuevo es igual a los campos de la tabla Inserted.
	SELECT @valorAntiguo = CONCAT ( idNivel,'',pago) FROM deleted										--El valorAntiguo es igual a los campos de la tabla deleted.
	INSERT INTO BitacoraTransacciones																	--Insertar en la tabla BitacoraTransacciones.
	VALUES('UPDATE','Calificaciones',GETDATE(),@valorAntiguo,@valorNuevo)								--Los valores que se le asocian a cada campo.

--CREACION DEL SP DE AlumnosUpdate.
CREATE PROC sp_ActualizarAlumnos
 	@matricula INT,																						--Parametro denominado matricula con un tipo de dato INT.
 	@pago MONEY																							--Parametro denominado pago con un tipo de dato MONEY.
AS																										--Inicializador.
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON																		--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.	
	BEGIN TRY																							--Comienza el proceso de transacción.
		UPDATE Alumnos																					--Actualizar la tabla Alumnos.
			SET  pago = @pago																			--Asignar que los registros de los campos sean igual a los registros de los parametros.
			WHERE matricula = @matricula																--Filtrar que el campo matricula sea igual al parametro matricula.
		COMMIT																							--Confirmar la actualización.
	END TRY																								--Finalizar la transacción.
	BEGIN CATCH																							--Comienzo del control de error.
		RAISERROR('Error al actualizar.',16,1)															--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																						--Cancelar cualquier acción.
	END CATCH																							--Finaliza el control de error.

------------
EXEC sp_ActualizarAlumnos																				--Ejecutar el almacenamiento de información.

--4.- Proyección de la tabla Empleado.
SELECT * FROM Empleado

--CREACIÓN DE TRIGGER-INSERT-EMPLEADO.
CREATE TRIGGER tr_BitacoraEmpleado
	ON Empleado																									--En la tabla Empleado.		
	FOR INSERT																									--Para la tabla inserted.
AS																												--Inicializador.

	---CUERPO DEL TRIGGER
	--Se declaran las variables para guardar los registros de los campos de la tabla Empleado.
	DECLARE @valorNuevo VARCHAR(100)																			--Variable denominada valorNuevo con un tipo de dato VARCHAR.
	SELECT @valorNuevo = CONCAT(dniEmpleado,' ', nombreEmpleado,' ', primerApellido,' ',puesto)FROM inserted	--El valorNuevo es igual a los campos de la tabla Inserted.																		
	INSERT INTO BitacoraTransacciones																			--Insertar en la tabla BitacoraTransacciones.
	VALUES('INSERT','Empleado',GETDATE(),NULL,@valorNuevo)														--Los valores que se le asocian a cada campo.

--CREACIÓN DE STORE PROCEDURE DE LA TABLA EMPLEADO.
CREATE PROC sp_InsertarEmpleado		
	@idDepartamento INT,																						--Parametro denominado idDepartamento con un tipo de dato INT.
	@especialidad VARCHAR(100),																					--Parametro denominado especialidad con un tipo de dato VARCHAR.
	@nombreEmpleado VARCHAR(100),																				--Parametro denominado nombreEmpleado con un tipo de dato VARCHAR.
	@primerApellido VARCHAR(100),																				--Parametro denominado primerApellido con un tipo de dato VARCHAR.
	@segundoApellido VARCHAR(100),																				--Parametro denominado segundoApellido con un tipo de dato VARCHAR.
	@puesto VARCHAR(100),																						--Parametro denominado puesto con un tipo de dato VARCHAR.
	@sueldoPorHora MONEY,																						--Parametro denominado sueldoPorHora con un tipo de dato MONEY.
	@NSS CHAR (11),																								--Parametro denominado NSS con un tipo de dato CHAR.
	@CURP CHAR (20)																								--Parametro denominado CURP con un tipo de dato CHAR.

AS																												--Inicializador.
	SET IMPLICIT_TRANSACTIONS ON																				--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.
	BEGIN TRY																									--Comienza el proceso de transacción.
		INSERT INTO Empleado																					--Insertar en la tabla Empleado.
		VALUES(@idDepartamento,@especialidad,@nombreEmpleado,@primerApellido,@segundoApellido,@puesto,@sueldoPorHora,@NSS,@CURP)--La información que se asociaran a la tabla Departamento.
		COMMIT																									--Confirmar insercción.
	END TRY																										--Finalizar la transacción.
	BEGIN CATCH																									--Comienzo del control de error.
		RAISERROR('Error al insertar.',16,1)																	--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																								--Cancelar cualquier acción.
	END CATCH																									--Finaliza el control de error.

EXEC sp_InsertarEmpleado

--Creacion del TRIGGER UPDATE para la tabla Empleado.
CREATE TRIGGER tr_BitacoraEmpleadoUpdate
	ON Empleado																									--En la tabla Empleado.																							--
	FOR UPDATE																									--Para la tabla inserted y deleted.
AS																												--Inicializador.
	--CUERPO DEL TRIGGER
	--Se declaran las variables para guardar los registros de los campos de la tabla Empleado.
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)												--Variable denominada valorNuevo y valorAntiguo con un tipo de dato VARCHAR.										
	SELECT @valorNuevo = CONCAT ( puesto,' ',sueldoPorHora) FROM inserted										--El valorNuevo es igual a los campos de la tabla Inserted.
	SELECT @valorAntiguo = CONCAT ( puesto,' ',sueldoPorHora) FROM deleted										--El valorAntiguo es igual a los campos de la tabla deleted.									
	INSERT INTO BitacoraTransacciones																			--Insertar en la tabla BitacoraTransacciones.
	VALUES('UPDATE','Calificaciones',GETDATE(),@valorAntiguo,@valorNuevo)										--Los valores que se le asocian a cada campo.

--Creacion del SP del TRIGGER UPDATE de EmpleadoUpdate.
CREATE PROC sp_ActualizarEmpleado
 	@dniEmpleado INT,																							--Parametro denominado dniEmpleado con un tipo de dato INT.
	@puesto VARCHAR (30),																						--Parametro denominado puesto con un tipo de dato VARCHAR.
 	@sueldoPorHora MONEY																						--Parametro denominado sueldoPorHora con un tipo de dato MONEY.
AS																												--Inicializador.
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON																				--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.	
	BEGIN TRY																									--Comienza el proceso de transacción.
		UPDATE Empleado																							--Actualizar la tabla Empleado.
			SET puesto = @puesto, sueldoPorHora = @sueldoPorHora												--Asignar que los registros de los campos sean igual a los registros de los parametros.
			WHERE dniEmpleado = @dniEmpleado																	--Filtrar que el campo dniEmpleado sea igual al parametro dniEmpleado.									
		COMMIT																									--Confirmar la actualización.
	END TRY																										--Finalizar la transacción.
	BEGIN CATCH																									--Comienzo del control de error.
		RAISERROR('Error al actualizar.',16,1)																	--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																								--Cancelar cualquier acción.
	END CATCH																									--Finaliza el control de error.
--------------------
EXEC sp_ActualizarEmpleado																						--Ejecutar el almacenamiento de información.


--5.- Proyección de la tabla HorasTrabajadas.
SELECT * FROM HorasTrabajadas
--ISABEL INSERT ELI UPDATE
CREATE TRIGGER tr_BitacoraHorasTrabajadas
	ON HorasTrabajadas
	FOR INSERT ----inserted
AS --Inicializador. 
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(100)
	SELECT @valorNuevo = CONCAT(fecha,' ',dniEmpleado,' ',retardo,' ',retardoJustificado,' ',horasCubiertas) FROM inserted
	INSERT INTO BitacoraTransacciones
	VALUES('INSERT','HorasTrabajadas',GETDATE(),NULL,@valorNuevo)
-----
CREATE PROC sp_InsertarHorasTrabajadas
	@horaEntrada TIME(0), @horaSalida TIME(0),
	@fecha DATE, @dniEmpleado INT, 
	@retardo BIT, @retardoJustificado BIT,
	@horasCubiertas INT
AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		INSERT INTO HorasTrabajadas
		VALUES(@horaEntrada,@horaSalida,@fecha,@dniEmpleado,@retardo,@retardoJustificado,@horasCubiertas)
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al insertar.',16,1)
		ROLLBACK
	END CATCH
------------
EXEC sp_InsertarHorasTrabajadas '08:00:00','15:00:00','2022-11-26','110000',0,0, 7

----- Creacion del TRIGGER HorasTrabajadasUpdate
CREATE TRIGGER tr_BitacoraHorasTrabajadasUpdate
	ON HorasTrabajadas
	FOR UPDATE ----inserted deleted 
AS
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)
	SELECT @valorNuevo = CONCAT ( horaEntrada,'',horaSalida) FROM inserted
	SELECT @valorAntiguo = CONCAT(horaEntrada,'',horaSalida) FROM deleted
	INSERT INTO BitacoraTransacciones
	VALUES('UPDATE','HorasTrabajadas',GETDATE(),@valorAntiguo,@valorNuevo)

----- Creacion del SP que contendra el TRIGGER de HorasTrabajadasUpdate
CREATE PROC sp_ActualizarHorasE_S
 @idHorasTrabajadas INT,
 @horaEntrada TIME,
 @horaSalida TIME
 
AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		UPDATE HorasTrabajadas
			SET horaEntrada = @horaEntrada, horaSalida = @horaSalida
			WHERE idHorasTrabajadas = @idHorasTrabajadas
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al actualizar.',16,1)
		ROLLBACK
	END CATCH
------------
SELECT * FROM HorasTrabajadas

EXEC sp_ActualizarHorasE_S 

CREATE TRIGGER tr_BitacoraExpedienteEmpleado
	ON ExpedienteEmpleado
	FOR INSERT ----inserted
AS --Inicializador.
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(20)
	SELECT @valorNuevo = idExpedienteEmpleado FROM inserted
	INSERT INTO BitacoraTransacciones
	VALUES('INSERT','ExpedienteEmpleado',GETDATE(),NULL,@valorNuevo)
-----

CREATE PROC sp_InsertarExpedienteEmpleado
@dniEmpleado INT,					
@fechaIngreso DATE,					
@códigoPostal CHAR (5),				
@tipoSangre VARCHAR (5),				
@numeroTelefonico CHAR (10),			
@estado VARCHAR (30),				
@ciudad VARCHAR (40),				
@colonia VARCHAR (30),				
@calle VARCHAR (40),					
@estatus BIT					
AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		INSERT INTO ExpedienteEmpleado
		VALUES(@dniEmpleado, @fechaIngreso, @códigoPostal, @tipoSangre, @numeroTelefonico, @estado,@ciudad,@colonia,@calle,@estatus)
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al insertar.',16,1)
		ROLLBACK
	END CATCH
------------
EXEC sp_InsertarExpedienteEmpleado
SELECT * FROM ExpedienteEmpleado
CREATE TRIGGER tr_BitacoraExpedienteEmpleadoUpdate
	ON ExpedienteEmpleado
	FOR UPDATE ----inserted deleted 
AS
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)
	SELECT @valorNuevo = CONCAT (numeroTelefonico,' ',códigoPostal) FROM inserted
	SELECT @valorAntiguo = CONCAT(numeroTelefonico,' ',códigoPostal) FROM deleted
	INSERT INTO BitacoraTransacciones
	VALUES('UPDATE','ExpedienteEmpleado',GETDATE(),@valorAntiguo,@valorNuevo)
	
ALTER PROC sp_ActualizarExpedienteEmpleado
 @idExpedienteEmpleado INT,					--Parametro denominado idExpedienteAlumno con un tipo de dato INT.
 @códigoPostal CHAR(5),						--Parametro denominado códigoPostal con un tipo de dato CHAR.
 @numeroTelefonico CHAR(10),				--Parametro denominado numeroTelefonico con un tipo de dato CHAR.
 @estado VARCHAR (100),						--Parametro denominado estado con un tipo de dato VARCHAR.
 @ciudad VARCHAR (100),						--Parametro denominado ciudad con un tipo de dato VARCHAR.
 @colonia VARCHAR (100),					--Parametro denominado colonia con un tipo de dato VARCHAR.
 @calle VARCHAR (100),						--Parametro denominado calle con un tipo de dato VARCHAR.
 @estatus BIT								--Parametro denominado estatus con un tipo de dato BIT.
 
AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		UPDATE ExpedienteEmpleado
			SET numeroTelefonico = @numeroTelefonico, códigoPostal = @códigoPostal
			WHERE idExpedienteEmpleado= @idExpedienteEmpleado
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al actualizar.',16,1)
		ROLLBACK
	END CATCH
------------
SELECT * FROM ExpedienteEmpleado
SELECT * FROM ExpedienteAlumno
EXEC sp_ActualizarExpedienteEmpleado 1,'8721889822','27880','elemaildelempleado@tecsanpedro.edu.mx'

SELECT * FROM ExpedienteAlumno
--ISABEL INSERT YOHEL UPDATE
CREATE TRIGGER tr_ExpedienteAlumno
	ON ExpedienteAlumno
	FOR INSERT ----inserted
AS --Inicializador. 
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(100)
	SELECT @valorNuevo = CONCAT(idExpedienteAlumno,' ',matricula,' ',fechaIngreso) FROM inserted
	INSERT INTO BitacoraTransacciones
	VALUES('INSERT','ExpedienteAlumno',GETDATE(),NULL,@valorNuevo)
-----
CREATE PROC sp_ExpedienteAlumnoInsertar
	@matricula INT,@fechaIngreso DATE,				
	@códigoPostal CHAR (5),@tipoSangre VARCHAR (5),			
	@numeroTelefonico CHAR (10),@estado VARCHAR (30),			
	@ciudad VARCHAR (40),@colonia VARCHAR (30),
	@calle VARCHAR (40),@estatus BIT,
	@email VARCHAR (60)

AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		INSERT INTO ExpedienteAlumno
		VALUES(@matricula,@fechaIngreso,@códigoPostal,@tipoSangre,@numeroTelefonico,@estado,
			   @ciudad,@colonia,@calle,@estatus,@email)
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al insertar.',16,1)
		ROLLBACK
	END CATCH
------------
EXEC sp_ExpedienteAlumnoInsertar 220000,'2022-11-27','27830','B+','8721129279','Coahuila','San Pedro', 'Monterrey','Av. Hidalgo',1,'isabel_tec.com'

--CREACIÓN DE TRIGGER-INSERT-ExpedienteAlumno.
CREATE TRIGGER tr_BitacoraExpedienteAlumno
	ON ExpedienteAlumno							--En la tabla ExpedienteAlumno.	
	FOR UPDATE									--Para la tabla inserte y deleted.
AS												--Inicializador.
	---CUERPO DEL TRIGGER
	--Se declaran las variables para guardar los registros de los campos de la tabla ExpedienteAlumno.
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)											--Variable denominada valorNuevo con un tipo de dato VARCHAR.
	SELECT @valorNuevo = CONCAT (numeroTelefonico,'',estatus,'',códigoPostal) FROM inserted					--El valorNuevo es igual a los campos de la tabla Inserted.
	SELECT @valorAntiguo = CONCAT(numeroTelefonico,'',estatus,'',códigoPostal) FROM deleted					--El valorAntiguo es igual a los campos de la tabla deleted.
	INSERT INTO BitacoraTransacciones(instruccionDML,tablaAfectada, fechaCambio,valorAntiguo,valorNuevo)	--Insertar en la tabla BitacoraTransacciones.
	VALUES('UPDATE','ExpedienteAlumno',GETDATE(),@valorAntiguo,@valorNuevo)									--Los valores que se le asocian a cada campo.
SELECT * FROM ExpedienteEmpleado
SELECT * FROM ExpedienteAlumno
--CREACIÓN DE STORE PROCEDURE DE LA TABLA ExpedienteAlumno
CREATE PROC sp_ActualizarExpedienteAlumno
 @idExpedienteAlumno INT,					--Parametro denominado idExpedienteAlumno con un tipo de dato INT.
 @códigoPostal CHAR(5),						--Parametro denominado códigoPostal con un tipo de dato CHAR.
 @numeroTelefonico CHAR(10),				--Parametro denominado numeroTelefonico con un tipo de dato CHAR.
 @estado VARCHAR (100),						--Parametro denominado estado con un tipo de dato VARCHAR.
 @ciudad VARCHAR (100),						--Parametro denominado ciudad con un tipo de dato VARCHAR.
 @colonia VARCHAR (100),					--Parametro denominado colonia con un tipo de dato VARCHAR.
 @calle VARCHAR (100),						--Parametro denominado calle con un tipo de dato VARCHAR.
 @estatus BIT								--Parametro denominado estatus con un tipo de dato BIT.

AS																									--Inicializador.
	SET IMPLICIT_TRANSACTIONS ON																	--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.
	BEGIN TRY																						--Comienza el proceso de transacción.
		UPDATE ExpedienteAlumno																		--Actualizar la tabla ExpedienteAlumno.
			SET códigoPostal = @códigoPostal,numeroTelefonico = @numeroTelefonico,estado = @estado, --Asignar que los registros de los campos sean igual a los registros de los parametros.
				ciudad = @ciudad, colonia = @colonia, calle = @calle, estatus = @estatus
			WHERE idExpedienteAlumno = @idExpedienteAlumno											--Filtrar que el campo ExpedienteAlumno sea igual al parametro ExpedienteAlumno.
		COMMIT																						--Confirmar la actualización.
	END TRY																							--Finalizar la transacción.
	BEGIN CATCH																						--Comienzo del control de error.
		RAISERROR('Error al actualizar.',16,1)														--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																					--Cancelar cualquier acción.
	END CATCH																						--Finaliza el control de error.

--CREACIÓN DE TRIGGER-INSERT-ExpedienteAlumno.
CREATE TRIGGER tr_BitacoraExpedienteAlumno
	ON ExpedienteAlumno							--En la tabla ExpedienteAlumno.	
	FOR UPDATE									--Para la tabla inserte y deleted.
AS												--Inicializador.
	---CUERPO DEL TRIGGER
	--Se declaran las variables para guardar los registros de los campos de la tabla ExpedienteAlumno.
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)											--Variable denominada valorNuevo con un tipo de dato VARCHAR.
	SELECT @valorNuevo = CONCAT (numeroTelefonico,'',estatus,'',códigoPostal) FROM inserted					--El valorNuevo es igual a los campos de la tabla Inserted.
	SELECT @valorAntiguo = CONCAT(numeroTelefonico,'',estatus,'',códigoPostal) FROM deleted					--El valorAntiguo es igual a los campos de la tabla deleted.
	INSERT INTO BitacoraTransacciones(instruccionDML,tablaAfectada, fechaCambio,valorAntiguo,valorNuevo)	--Insertar en la tabla BitacoraTransacciones.
	VALUES('UPDATE','ExpedienteAlumno',GETDATE(),@valorAntiguo,@valorNuevo)									--Los valores que se le asocian a cada campo.
	
--CREACIÓN DE STORE PROCEDURE DE LA TABLA ExpedienteAlumno
CREATE PROC sp_ActualizarExpedienteAlumno
 @idExpedienteAlumno INT,					--Parametro denominado idExpedienteAlumno con un tipo de dato INT.
 @códigoPostal CHAR(5),						--Parametro denominado códigoPostal con un tipo de dato CHAR.
 @numeroTelefonico CHAR(10),				--Parametro denominado numeroTelefonico con un tipo de dato CHAR.
 @estado VARCHAR (100),						--Parametro denominado estado con un tipo de dato VARCHAR.
 @ciudad VARCHAR (100),						--Parametro denominado ciudad con un tipo de dato VARCHAR.
 @colonia VARCHAR (100),					--Parametro denominado colonia con un tipo de dato VARCHAR.
 @calle VARCHAR (100),						--Parametro denominado calle con un tipo de dato VARCHAR.
 @estatus BIT								--Parametro denominado estatus con un tipo de dato BIT.

AS																									--Inicializador.
	SET IMPLICIT_TRANSACTIONS ON																	--ESTABLECER LA TRANSACCIÓN IMPLICITA, ENCENDIDA.
	BEGIN TRY																						--Comienza el proceso de transacción.
		UPDATE ExpedienteAlumno																		--Actualizar la tabla ExpedienteAlumno.
			SET códigoPostal = @códigoPostal,numeroTelefonico = @numeroTelefonico,estado = @estado, --Asignar que los registros de los campos sean igual a los registros de los parametros.
				ciudad = @ciudad, colonia = @colonia, calle = @calle, estatus = @estatus
			WHERE idExpedienteAlumno = @idExpedienteAlumno											--Filtrar que el campo ExpedienteAlumno sea igual al parametro ExpedienteAlumno.
		COMMIT																						--Confirmar la actualización.
	END TRY																							--Finalizar la transacción.
	BEGIN CATCH																						--Comienzo del control de error.
		RAISERROR('Error al actualizar.',16,1)														--Mensaje de advertencia (para advertir que se produjo un error).
		ROLLBACK																					--Cancelar cualquier acción.
	END CATCH																						--Finaliza el control de error.

EXEC sp_ActualizarExpedienteAlumno 3,'27880','8723001456','Chihuahua','Ciudad Juárez', 'Miguel Hidalgo','Av. Amistad',1 --Ejecutar el almacenamiento de información.


CREATE TRIGGER tr_BitacoraMaterial
	ON Material
	FOR INSERT ----inserted
AS --Inicializador.
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(100)
	SELECT @valorNuevo = CONCAT(nombreMaterial,'', costo,'',cantidad) FROM inserted
	INSERT INTO BitacoraTransacciones
	VALUES('INSERT','Material',GETDATE(),NULL,@valorNuevo)
-----
CREATE PROC sp_InsertarMaterial
	@nombreMaterial VARCHAR(100),
	@idNivel INT,
	@costo MONEY,
	@autor VARCHAR(100),
	@tipo VARCHAR(100),
	@cantidad INT

AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		INSERT INTO Material
		VALUES(@nombreMaterial, @idNivel, @costo, @autor,@tipo,@cantidad)
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al insertar.',16,1)
		ROLLBACK
	END CATCH
------------
EXEC sp_InsertarMaterial 'English B2', 1, '150', 'Gabriel Marquez', 'Audio Libro', 20
SELECT * FROM Material
CREATE TRIGGER tr_BitacoraMaterialUpdate
	ON Material
	FOR UPDATE ----inserted deleted 
AS
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)
	SELECT @valorNuevo = CONCAT(costo, ' ', cantidad, ' ', tipo) FROM inserted
	SELECT @valorAntiguo = CONCAT(costo, ' ', cantidad, ' ', tipo)  FROM deleted
	INSERT INTO BitacoraTransacciones
	VALUES('UPDATE','Material',GETDATE(),@valorAntiguo,@valorNuevo)

SELECT * FROM Material
CREATE PROC sp_ActualizarMaterial
 @idMaterial INT,
 @costo MONEY,
 @cantidad INT,
 @tipo VARCHAR(50)
AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		UPDATE Material
			SET costo = @costo, cantidad = @cantidad, tipo = @tipo
			WHERE idMaterial = @idMaterial
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al actualizar.',16,1)
		ROLLBACK
	END CATCH

EXEC sp_ActualizarMaterial


--9.- Proyección de la tabla Material.
SELECT * FROM CursoGrupo

----- Creacion del Trigger de INSERT en la tabla CursoGrupo
CREATE TRIGGER tr_BitacoraCursoGrupo
ON CursoGrupo
FOR INSERT
AS
	DECLARE @valorNuevo VARCHAR(100)
	SELECT @valorNuevo = CONCAT(idCurso,' ',dniEmpleado,' ',idNivel,' ',horario) FROM inserted
	INSERT INTO BitacoraTransacciones
	VALUES('INSERT','CursoGrupo',GETDATE(),NULL,@valorNuevo)
SELECT * FROM CursoGrupo
------ Creacion de un SP que permitira insertar los datos del trigger
CREATE PROC sp_InsertarCursoGrupo
@dniEmpleado VARCHAR(100),
@idNivel SMALLINT,
@horario VARCHAR (100)
AS
	---CursoGrupo
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		INSERT INTO CursoGrupo
		VALUES(@dniEmpleado,@idNivel,@horario)
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al insertar.',16,1)
		ROLLBACK
	END CATCH

	EXEC sp_InsertarCursoGrupo
SELECT  * FROM CursoGrupo
CREATE TRIGGER tr_BitacoraCursoGrupoUpdate
	ON CursoGrupo
	FOR UPDATE ----inserted deleted 
AS
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)
	SELECT @valorNuevo = horario FROM inserted
	SELECT @valorAntiguo = horario FROM deleted
	INSERT INTO BitacoraTransacciones
	VALUES('UPDATE','CursoGrupo',GETDATE(),@valorAntiguo,@valorNuevo)
	
CREATE PROC sp_ActualizarCursoGrupo
 @idCurso INT,
 @horario VARCHAR (20)
 
AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		UPDATE CursoGrupo
			SET horario = @horario
			WHERE idCurso = @idCurso
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al actualizar.',16,1)
		ROLLBACK
	END CATCH

EXEC sp_ActualizarCursoGrupo

CREATE TRIGGER tr_BitacoraCalificaciones
	ON Calificaciones
	FOR INSERT ----inserted
 AS --Inicializador.
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(200)
	SELECT @valorNuevo = CONCAT(idCalificacion,' ',matricula,' ',idCurso, ' ',calificacion, ' ', unidad) FROM inserted
	INSERT INTO BitacoraTransacciones
	VALUES('INSERT','Calificaciones',GETDATE(),NULL,@valorNuevo)
-----
CREATE PROC sp_InsertarCalificaciones	
	@matricula INT,					
	@idCurso INT,								
	@calificacion INT,
	@unidad INT
AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		INSERT INTO Calificaciones
		VALUES(@matricula, @idCurso, @calificacion, @unidad)
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al insertar.',16,1)
		ROLLBACK
	END CATCH


------------
EXEC sp_InsertarCalificaciones

----UPDATE
--CREACIÓN DE TRIGGERS PARA UPDATE
CREATE TRIGGER tr_BitacoraCalificacionesUpdate
	ON Calificaciones
	FOR UPDATE ---- Update 
AS
	---CUERPO DEL TRIGGER
	DECLARE @valorNuevo VARCHAR(100), @valorAntiguo VARCHAR(100)
	SELECT @valorNuevo = calificacion FROM inserted
	SELECT @valorAntiguo = calificacion FROM deleted
	INSERT INTO BitacoraTransacciones
	VALUES('UPDATE','Calificaciones',GETDATE(),@valorAntiguo,@valorNuevo)
	
CREATE PROC sp_ActualizarCalificacion
 	@idCalificacion INT,
 	@calificacion DECIMAL
AS
	---TRANSACCION
	SET IMPLICIT_TRANSACTIONS ON
	BEGIN TRY
		UPDATE Calificaciones
			SET calificacion = @calificacion
			WHERE idCalificacion = @idCalificacion
		COMMIT
	END TRY
	BEGIN CATCH
		RAISERROR('Error al actualizar.',16,1)
		ROLLBACK
	END CATCH
------------
EXEC sp_ActualizarCalificacion

---PROYECCIÓN DE TABLAS

-- Personal por departamento.
	--CREAR PROCEDIMIENTO ALMACENADO para mostar el personal por departamento.
CREATE PROC spMostrarPersonalxDepartamento
AS
--1.- Proyección del campo idDepartamento de la tabla Empleado y proyectar el campo nombreDepartamento de la tabla Departamento.
SELECT Em.idDepartamento AS 'Clave', Dep.nombreDepartamento AS [Nombre del departamento],
	COUNT(Em.dniEmpleado) AS 'Cantidad de empleados'              --Función de agregado COUNT, contara todos los empleados.
	FROM  Departamento AS Dep						              --De la tabla Departamento.
	JOIN Empleado AS Em											  --Combinar la tabla Departamento con la tabla Empleado.											
	ON Em.idDepartamento = Dep.idDepartamento					  --El campo idDepartamento de la tabla Empleado es igual a el campo idDepartamento de la tabla Departamento.
	GROUP BY Em.idDepartamento,Dep.nombreDepartamento			  --Agrupar por idDepartamento y por nombreDepartamento. 

	EXEC spMostrarPersonalxDepartamento							  --Comando que ejecuta el sp, es la misma linea de código que se envia a Visual Studio.

--Horarios de trabajadores por departamento. 
	-- Horario de cada trabajador por departamento.
	--CREAR PROCEDIMIENTO ALMACENADO para mostar el horario de cada trabajador por departamento.
CREATE PROC spHorarioTrabajadorxDepartamento
AS
--2.- Proyección de los campos siguientes:
SELECT Dep.nombreDepartamento AS Departamento, 
	Em.nombreEmpleado+' '+Em.primerApellido AS  Empleado,  		  --Concatenación de nombreEmpleado y primerApellido, de la tabla Empleado.
	CONCAT( horaEntrada ,'-', horaSalida) AS [Horario]		   	  --Concatenación de la hora de entrada y de salida.
	FROM Empleado AS Em											  --De la tabla Empleado.
	JOIN Departamento AS Dep									  --Combinación de la tabla Empleado y la tabla Departamento.
	ON Em.idDepartamento = Dep.idDepartamento				      --El campo idDepartamento de la tabla Empleado es igual a el campo idDepartamento de la tabla Departamento.	
	
	EXEC spHorarioTrabajadorxDepartamento						  --Comando que ejecuta el sp, es la misma linea de código que se envia a Visual Studio.

	-- Horario por departamento.
	--CREAR PROCEDIMIENTO ALMACENADO para mostar el horario por departamento.
CREATE PROC spHorarioxDepartamento
AS
--3.- Proyección de los campos nombreDepartamento, hora de entrada y salida de cada departamento.
SELECT nombreDepartamento AS Departamento, 
	CONCAT( horaEntrada ,'-', horaSalida) AS [Horario]			  --Concatenación de la hora de entrada y de salida.
	FROM Departamento											  --De la tabla Departamento.

	EXEC spHorarioxDepartamento									  --Comando que ejecuta el sp, es la misma linea de código que se envia a Visual Studio.

--Horas cubiertas por empleado.
	-- Horas trabajadas diarias. 
	--CREAR PROCEDIMIENTO ALMACENADO para mostar las horas trabajadas diarias. 
CREATE PROC spHorasCubietasxDia
AS
--4.- Proyección de los campos siguientes:
SELECT  Em.dniEmpleado AS 'Clave de empleado',
	nombreEmpleado+' '+primerApellido AS  Empleado,				  --Concatenación de el campo nombreEmpleado y primerApellido de la tabla Empleado.
	Hrs.fecha AS Día, horasCubiertas AS 'Horas trabajadas'		  --Campos que se mostraran al proyectar con el alias asignado.
	FROM HorasTrabajadas AS Hrs									  --De la tabla HorasTrabajadas.
	JOIN Empleado AS Em											  --Combinación de la tabla HorasTrabajadas con la tabla Empleado.
	ON Hrs.dniEmpleado = Em.dniEmpleado							  --El campo dniEmpleado de la tabla Hrs es igual a el campo dniEmpleado de la tabla Em.

	EXEC spHorasCubiertasxDia									  --Comando que ejecuta el sp, es la misma linea de código que se envia a Visual Studio.

	-- Horas trabajadas totales.
	--CREAR PROCEDIMIENTO ALMACENADO para mostar las horas trabajadas diarias. 
CREATE PROC spHorasCubiertasTotales
AS
--5.- Proyección de los campos siguientes:
SELECT Em.dniEmpleado AS 'Clave de empleado',
	Em.nombreEmpleado AS Empleado,								  --Campos que se mostraran al proyectar con el alias asignado.
	SUM(horasCubiertas) AS 'Total horas trabajadas'				  --Sumar el total de las horas trabajadas.
	FROM HorasTrabajadas AS Hrs									  --De la tabla HorasTrabajadas.
	JOIN Empleado AS Em											  --Combinación de la tabla HorasTrabajadas con la tabla Empleado.
	ON Hrs.dniEmpleado = Em.dniEmpleado							  --El campo dniEmpleado de la tabla Hrs es igual a el campo dniEmpleado de la tabla Em.
	GROUP BY Em.nombreEmpleado,Em.dniEmpleado					  --Agrupar por nombreEmpleado y dniEmpleado.

	EXEC spHorasCubiertasTotales									  --Comando que ejecuta el sp, es la misma linea de código que se envia a Visual Studio.
	
	--Retardos justificados y no justificados por empleado.
	-- Retardos justificados y no justificados por fecha de los empleados.
--6.- Crear procedimiento almacenado para la proyección de los campos siguientes:
CREATE PROCEDURE spRetardosJustificadosNoJustificados
AS
SELECT CONCAT(nombreEmpleado,' ', primerApellido, ' ', segundoApellido) AS [Nombre del Empleado],--Concatenación de los campos.
	hrs.fecha,hrs.retardo AS [Retardo], hrs.retardoJustificado  AS [Retardo justificado]		 --Campos que se muestran en la proyección.
	FROM Empleado AS Em
	JOIN HorasTrabajadas AS hrs									  --Combinación de la tabla Empleado y la tabla HorasTrabajadas.
	ON Em.dniEmpleado = hrs.dniEmpleado							  --El campo dniEmpleado de la tabla Em es igual a el campo dniEmpleado de la tabla hrs.		
	WHERE hrs.retardo =1										  --Proyectar unicamente donde retardo es igual a 1.
	ORDER BY Em.nombreEmpleado ASC								  --Ordenar por nombreEmpleado de forma ascendente.
---Se creo el Stored Procedure

EXEC spRetardosJustificadosNoJustificados						  --Comando que ejecuta el sp, es la misma linea de código que se envia a Visual Studio.
CREATE PROC spMostrarCalificaciones
@matricula int
AS
SELECT calificacion, unidad
From Calificaciones
join Alumnos on Alumnos.matricula= Calificaciones.matricula
where Alumnos.matricula= @matricula
EXEC  spMostrarCalificaciones
	--Retardos generales.
--7.- Crear procedimiento almacenado para la proyección de los campos siguientes:
CREATE PROCEDURE spRetardosGenerales
AS
SELECT CONCAT(nombreEmpleado,' ', primerApellido, ' ', segundoApellido) AS [Nombre del Empleado],--Concatenación de los campos.
	SUM(CAST(hrs.retardo AS INT)) AS [Retardo],						 --Casteo del campo retardo y suma de los retardos.
	SUM(CAST(hrs.retardoJustificado AS INT)) AS [Retardo justificado]--Casteo del campo retardoJustificado y Suma de los retardos justificados.
	FROM Empleado AS Em												 --De la tabla Empleado.											 
	JOIN HorasTrabajadas AS hrs										 --Combinar la tabla Empleado con la tabla HorasTrabajadas.										
	ON Em.dniEmpleado = hrs.dniEmpleado								 --El campo dniEmpleado de la tabla Em es igual a el campo dniEmpleado de la tabla hrs.	
	WHERE hrs.retardo =1											 --Proyectar unicamente donde retardo es igual a 1.
	GROUP BY Em.dniEmpleado,nombreEmpleado,primerApellido,segundoApellido--Agrupar por dniEmpleado, nombreEmpleado, primerApellido, segundoApellido.
	ORDER BY Em.nombreEmpleado ASC	                                 --Ordenar por nombreEmpleado de forma ascendente.
---Se creo el Stored Procedure
EXEC spRetardosGenerales											 --Se ejecuta el proceso almacenado.

--Material disponible por categoría.
--Material con nombre disponible por categoría.
CREATE PROC spMaterialCategoría	--Se creo el procedimiento almacenado de la categiria del material.
AS
--8.- Proyección de los campos siguientes:
SELECT nvl.nombreNivel AS [Nivel], mat.nombreMaterial AS [Nombre del material], mat.cantidad AS [Cantidad]
	FROM Material AS mat										--De la tabla Material con un alias mat.
	JOIN Nivel AS nvl											--Combinar la tabla Material con la tabla Nivel.			
	ON mat.idNivel = nvl.idNivel								--El campo idNivel de la tabla mat es igual a el campo idNivel de la tabla nvl.	
	WHERE mat.cantidad >= 1										--Proyectar unicamente la cantidad que sea mayor igual a 1.
	ORDER BY mat.nombreMaterial ASC								--Ordenar por nombrMaterial de forma ascendente.

EXEC spMaterialCategoría										--Se ejecuta el proceso almacenado.

	--Cantidades absolutas de material por nivel/categoria.
CREATE PROC spCantidadMaterial	--Se creo el procedimiento almacenado de la cantidad del material por nivel.
AS
--9.- Proyección de los campos siguientes:
SELECT  SUM(mat.cantidad) AS [Cantidad], nvl.nombreNivel AS [Nivel] --Sumar la cantidad de material
	FROM Material AS mat										--De la tabla Material alias mat.
	JOIN Nivel AS nvl											--Combinar la tabla Material con la tabla Nivel.
	ON mat.idNivel = nvl.idNivel								--El campo idNivel de la tabla mat es igual a el campo idNivel de la tabla nvl.	
	WHERE mat.cantidad >= 1										--Proyectar unicamente la cantidad de material que sea mayor igual a 1.
	GROUP BY mat.idNivel, nombreNivel							--Agrupar por idNivel, nombreNivel de la tabla mat.

EXEC spCantidadMaterial		        							--Se ejecuta el proceso almacenado.

--- Creacion SP del Select  numero 10 llamado registro clientes.
CREATE PROCEDURE spRegistroCliente
	AS	
		SELECT *
	FROM Alumnos AS AL											--De la tabla Alumnos alias AL.
	JOIN ExpedienteAlumno AS EXAL								--Combinar la tabla Alumnos con la tabla ExpedienteAlumno, alias EXAL.
	ON AL.matricula= EXAL.matricula								--El campo matricula de la tabla Alumnos es igual a el campo matricula de la tabla EXAL.	
	----- Ejecucion del SP
	EXEC spRegistroCliente

---Creacion del SP del Select numero 11 llamado Reportes de adeudo
CREATE PROCEDURE spReportesdeAdeudo
		AS
		SELECT nombreAlumno,Niv.costo AS 'Precio del Nivel',
SUM(Mat.costo) AS 'Precio del material',					  --Suma del precio del material.
	Al.pago AS Abono ,Niv.costo+SUM(Mat.costo)-Al.pago AS Restante--Campos que se muestran en la proyección con sus respectivas operaciones de suma y resta.
	FROM Nivel AS Niv											  --De la tabla Nivel.
	JOIN Alumnos AS Al											  --Combinar la tabla Nivel con la tabla Alumnos.
	ON Niv.idNivel = Al.idNivel									  --El campo idNivel de la tabla Niv es igual a el campo idNivel de la tabla Al.	  
	JOIN Material AS Mat										  --Combinar la tabla Material con la tabla Nivel.
	ON Niv.idNivel =Mat.idNivel									  --El campo idNivel de la tabla Niv es igual a el campo idNivel de la tabla Mat.
	GROUP BY nombreAlumno, Niv.costo, Al.pago					  --Agrupar por nombreAlumno, costo y pago, de la tabla Niv, Al.
	HAVING Niv.costo+SUM(Mat.costo)-Al.pago >0
---- Ejecucion del SP
EXEC spReportesdeAdeudo
 

--4.- Proyección de la tabla Empleado.
SELECT * FROM Empleado
--ELI INSERT  YOHEL DELETE

--TRIGGERS-INSERT TABLA EMPLEADO

SELECT * FROM INFORMATION_SCHEMA.TABLES		--Proyectar todas las tablas.
SELECT * FROM BitacoraTransacciones			--Proyección de la tabla BitacoraTransacciones.
SELECT * FROM Empleado						--Proyección de la tabla Empleado.

--Inserción de información en la tabla Empleado para los campos asociados al mismo.
INSERT INTO Empleado VALUES (1, 'Licenciatura en idiomas', 'Arturo','De Landa','Nomeacu','Techaer',100.00,'66123457890','DENA950312HCLRDSA3')
--Inserción de información en la tabla Empleado para los campos asociados al mismo.
INSERT INTO Empleado VALUES (1, 'Licenciatura en idiomas', 'Americo','Martinez','Ovalle','Coordinador de inglés',150.00,'66123457895','AMLO950312HCLRDSA3')
--Inserción de información en la tabla Empleado para los campos asociados al mismo.
INSERT INTO Empleado VALUES (1, 'Licenciatura en idiomas', 'Idalia','Ruiz','Arrollo','Techaer',100.00,'66123457896','IDRA950312HCLRDSA3')
--Inserción de información en la tabla Empleado para los campos asociados al mismo.
INSERT INTO Empleado VALUES (2, 'Licenciatura en administración', 'Margarita','Solano','Sanchez','Secretaria',150.50,'66123457891','SMSS950312HCLRDSA3')
--Inserción de información en la tabla Empleado para los campos asociados al mismo.
INSERT INTO Empleado VALUES (3, 'Licenciatura en administración', 'Sergio Abner','Guadalupe','Quiroz','Director',250.00,'66123457892','SAGQ950312HCLRDSA3')
--Inserción de información en la tabla Empleado para los campos asociados al mismo.
INSERT INTO Empleado VALUES (4, 'Contador', 'Carlos Jared','Martinez','Vela','Contador',200.00,'66123457893','CJMV950312HCLRDSA3')

--5.- Proyección de la tabla HorasTrabajadas.
SELECT * FROM HorasTrabajadas

--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('08:00:00','15:00:00','2022-11-26','110000',0,0,DATEDIFF (HOUR,'08:00:00', '15:00:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('08:00:00','15:00:00','2022-11-26','110001',0,0,DATEDIFF (HOUR,'08:00:00', '15:00:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('08:00:00','15:00:00','2022-11-26','110002',0,0,DATEDIFF (HOUR,'08:00:00', '15:00:00'))	--DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('09:15:00','15:00:00','2022-11-27','110000',1,0,DATEDIFF (HOUR,'09:15:00', '15:00:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('08:00:00','15:00:00','2022-11-27','110001',0,0,DATEDIFF (HOUR,'08:00:00', '15:00:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('09:00:00','15:00:00','2022-11-27','110002',1,1,DATEDIFF (HOUR,'09:00:00', '15:00:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('08:30:00','13:00:00','2022-11-26','110003',0,0,DATEDIFF (HOUR,'08:30:00', '13:00:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('09:00:00','14:30:00','2022-11-26','110004',0,0,DATEDIFF (HOUR,'09:00:00', '14:30:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('10:00:00','15:00:00','2022-11-26','110005',1,1,DATEDIFF (HOUR,'10:00:00', '15:00:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('08:30:00','13:00:00','2022-11-27','110003',0,0,DATEDIFF (HOUR,'08:30:00', '13:00:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('09:00:00','14:30:00','2022-11-27','110004',0,0,DATEDIFF (HOUR,'09:00:00', '14:30:00')) --DATEDIFF es la diferencia de las horas.
--Inserción de información en la tabla HorasTrabajadas para los campos asociados al mismo.
INSERT INTO HorasTrabajadas VALUES ('10:00:00','15:00:00','2022-11-27','110005',1,0,DATEDIFF (HOUR,'10:00:00', '15:00:00')) --DATEDIFF es la diferencia de las horas.

--6.- Proyección de la tabla ExpedienteEmpleado.
SELECT * FROM ExpedienteEmpleado
------------
SELECT * FROM ExpedienteEmpleado

EXEC sp_ActualizarExpedienteEmpleado 1,'8721889822','27880','elemaildelempleado@tecsanpedro.edu.mx'

--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteEmpleado (dniEmpleado,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus)
--La información asociados a los campos.
VALUES (110000,'2022-11-27','27800','O+','8721001010','Coahuila','Francisco I. Madero', 'Monterrey','Av. Constitución',1)
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteEmpleado (dniEmpleado,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus)
--La información asociados a los campos.
VALUES (110001,'2022-11-27','27810','O-','8721001011','Coahuila','San Pedro', 'Emiliano Zapata','Calle primera',1)
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteEmpleado (dniEmpleado,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus)
--La información asociados a los campos.
VALUES (110002,'2022-11-27','27800','O-','8721001012','Coahuila','San Pedro', 'Centro','Av. segunda',1)
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteEmpleado (dniEmpleado,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus)
--La información asociados a los campos.
VALUES (110003,'2022-11-27','27800','A+','8721001013','Coahuila','San Pedro', 'Luis Donaldo Colosio','Av. Constitución',1)
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteEmpleado (dniEmpleado,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus)
--La información asociados a los campos.
VALUES (110004,'2022-11-27','27800','AB+','8721001014','Coahuila','San Pedro', 'Lazaro Cardenas','Av. Constitución',1)
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteEmpleado (dniEmpleado,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus)
--La información asociados a los campos.
VALUES (110005,'2022-11-27','27800','B+','8721001015','Coahuila','Torreón', 'Centro','Av. Indepencencia',1)

--7.- Proyección de la tabla ExpedienteAlumno.
SELECT * FROM ExpedienteAlumno
------------
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220000,'2022-11-27','27830','B+','8721129279','Coahuila','San Pedro', 'Monterrey','Av. Hidalgo',1,'isabel_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220001,'2022-11-27','27800','B+','8721001150','Coahuila','San Pedro', 'Ancora','Av. Coahuila',1,'ana_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220002,'2022-11-27','27800','B+','8721001051','Coahuila','San Pedro', 'Barrio Saltillo','Av. Benavides',1,'valeria_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220003,'2022-11-27','27800','B+','8721001052','Coahuila','San Pedro', 'Barrio Nuevo','Av. Morelos',1,'esmeralda_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220004,'2022-11-27','27800','B+','8721001053','Coahuila','San Pedro', 'Francisco I Madero','Calle Cepeda',1,'elienai_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220005,'2022-11-27','27800','B+','8721001054','Coahuila','San Pedro', 'Burócratas','Calle Treviño',1,'hector_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220006,'2022-11-27','27800','B+','8721001055','Coahuila','San Pedro', 'Benito Juarez','Calle segunda',1,'yohel_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220007,'2022-11-27','27800','B+','8721001056','Coahuila','San Pedro', 'Valparaíso','Av. Tercera',1,'ulises_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220008,'2022-11-27','27800','B+','8721001057','Coahuila','San Pedro', 'Trinidad','Av. Bugambilias',1,'brayan_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220009,'2022-11-27','27800','B+','8721001058','Coahuila','San Pedro', 'Miguel Hidalgo','Av. Amistad',1,'jose_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220010,'2022-11-27','27800','B+','8721001059','Coahuila','San Pedro', 'Los Sauses','Av. 5 de mayo',1,'samuel_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220011,'2022-11-27','27800','B+','8721001020','Coahuila','San Pedro', 'Las rosas','Calle Chapultepec',1,'christian_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220012,'2022-11-27','27800','B+','8721001021','Coahuila','San Pedro', 'Agua nueva','Blvd Luis Donaldo',1,'leonardo_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220013,'2022-11-27','27800','B+','8721001022','Coahuila','San Pedro', 'Monterrey','Blvd Madero',1,'ariana_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220014,'2022-11-27','27800','B+','8721001023','Coahuila','Torreón', 'Monterrey','Blvd Independencia',1,'melissa_tec.com')
--Inserción en la tabla ExpedienteEmpleado para los campos asociados al mismo.
INSERT INTO ExpedienteAlumno (matricula,fechaIngreso,códigoPostal,tipoSangre,numeroTelefonico,estado,ciudad,colonia,calle,estatus,email)
--La información asociados a los campos.
VALUES (220015,'2022-11-27','27821','B+','8721001024','Coahuila','San Pedro', 'Ampliación la trinidad','Calle Jesús Maria g',1,'pedro_tec.com')


--8.- Proyección de la tabla Material.
SELECT * FROM Material
--ELI INSERT YOHEL DELETE
--Inserción de información en la tabla Material para los campos asociados al mismo.
INSERT INTO Material VALUES ('English A2',1,'150.00','Calibry','Libro',4)
--Inserción de información en la tabla Material para los campos asociados al mismo.
INSERT INTO Material VALUES ('English B1',2,'150.00','Calibry','Libro',4)
--Inserción de información en la tabla Material para los campos asociados al mismo.
INSERT INTO Material VALUES ('English B2',3,'200.00','Calibry','Libro',8)
--Inserción de información en la tabla Material para los campos asociados al mismo.
INSERT INTO Material VALUES ('Harry Potter 6',3,'300.00','JK Rowling','Libro',9)
--Inserción de información en la tabla Material para los campos asociados al mismo.
INSERT INTO Material VALUES ('The great Gatsby',1,'300.00',' F. Scott Fitzgerald ','Libro',4)

--9.- Proyección de la tabla Material.
SELECT * FROM CursoGrupo
--YOHEL INSERT
--Inserción de información en la tabla CursoGrupo para los campos asociados al mismo.
INSERT INTO CursoGrupo VALUES ('110000',1,'9:00 - 11:00')
--Inserción de información en la tabla CursoGrupo para los campos asociados al mismo.
INSERT INTO CursoGrupo VALUES ('110001',2,'8:00 - 10:00')
--Inserción de información en la tabla CursoGrupo para los campos asociados al mismo.
INSERT INTO CursoGrupo VALUES ('110002',3,'12:00 - 14:00')
--Inserción de información en la tabla CursoGrupo para los campos asociados al mismo.
INSERT INTO CursoGrupo VALUES ('110003',3,'10:00 - 12:00')

--9.- Proyección de la tabla Calificaciones.
SELECT * FROM Calificaciones
-----



--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220000',2,7,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220000',2,9,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220001',1,10,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220001',1,9.5,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220002',2,8.5,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220002',2,7,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220003',2,8,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220003',2,8,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220004',3,10,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220004',3,9,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220005',1,7.8,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220005',1,7.9,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220006',4,10,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220006',4,10,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220007',3,9,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220007',3,7,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220008',3,6,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220008',3,10,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220009',4,9,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220009',4,8,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220010',3,10,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220010',3,6,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220011',4,8,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220011',4,7.5,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220012',2,7.5,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220012',2,9,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220013',1,6.5,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220013',1,6.9,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220014',1,10,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220014',1,10,2)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220015',4,10,1)
--Inserción de información en la tabla Calificaciones para los campos asociados al mismo.
INSERT INTO Calificaciones VALUES ('220015',4,10,2)







