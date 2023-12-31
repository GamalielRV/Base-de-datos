USE [master]
GO
/****** Object:  Database [BD_PROYECTO]    Script Date: 25/6/2023 23:12:06 ******/
CREATE DATABASE [BD_PROYECTO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD_PROYECTO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BD_PROYECTO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_PROYECTO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BD_PROYECTO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD_PROYECTO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD_PROYECTO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD_PROYECTO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD_PROYECTO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD_PROYECTO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD_PROYECTO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD_PROYECTO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD_PROYECTO] SET  MULTI_USER 
GO
ALTER DATABASE [BD_PROYECTO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD_PROYECTO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD_PROYECTO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD_PROYECTO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD_PROYECTO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD_PROYECTO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BD_PROYECTO] SET QUERY_STORE = OFF
GO
USE [BD_PROYECTO]
GO
/****** Object:  Table [dbo].[CITAS]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITAS](
	[cita_id] [int] IDENTITY(1,1) NOT NULL,
	[sala] [varchar](50) NULL,
	[fk_medico] [int] NULL,
	[fk_paciente] [int] NULL,
	[fk_factura] [int] NULL,
	[estado] [tinyint] NULL,
	[fk_sala] [int] NULL,
	[hora] [int] NULL,
	[dia] [varchar](20) NULL,
 CONSTRAINT [PK_ID_CITA] PRIMARY KEY CLUSTERED 
(
	[cita_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CORREOS_MEDICOS]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORREOS_MEDICOS](
	[rel_id] [int] IDENTITY(1,1) NOT NULL,
	[correo] [varchar](50) NULL,
	[fk_medico] [int] NULL,
 CONSTRAINT [PK_ID_CORREO_MEDICO] PRIMARY KEY CLUSTERED 
(
	[rel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CORREOS_PACIENTES]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CORREOS_PACIENTES](
	[rel_id] [int] IDENTITY(1,1) NOT NULL,
	[correo] [varchar](50) NULL,
	[fk_paciente] [int] NULL,
 CONSTRAINT [PK_ID_CORREO_PACIENTE] PRIMARY KEY CLUSTERED 
(
	[rel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESPECIALIDADES]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESPECIALIDADES](
	[especialidad_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_ID_ESPECIALIDAD] PRIMARY KEY CLUSTERED 
(
	[especialidad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESPECIALIDADES_MEDICOS]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESPECIALIDADES_MEDICOS](
	[especialidades_id] [int] IDENTITY(1,1) NOT NULL,
	[fk_medico] [int] NULL,
	[fk_especialidad] [int] NULL,
 CONSTRAINT [PK_ID_ESPECIALIDADES_MEDICOS] PRIMARY KEY CLUSTERED 
(
	[especialidades_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[factura_id] [int] IDENTITY(1,1) NOT NULL,
	[monto_total] [float] NULL,
	[fecha] [date] NULL,
	[fk_cita] [int] NULL,
 CONSTRAINT [PK_ID_FACTURA] PRIMARY KEY CLUSTERED 
(
	[factura_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HORARIOS](
	[horario_id] [int] IDENTITY(1,1) NOT NULL,
	[dia] [varchar](20) NULL,
	[hora_inicio] [time](7) NULL,
	[hora_final] [time](7) NULL,
	[fk_medico] [int] NULL,
 CONSTRAINT [PK_ID_HORARIO] PRIMARY KEY CLUSTERED 
(
	[horario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDICOS]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDICOS](
	[medico_id] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](50) NULL,
	[segundo_nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[estado] [tinyint] NULL,
 CONSTRAINT [PK_ID_MEDICO] PRIMARY KEY CLUSTERED 
(
	[medico_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PACIENTES]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PACIENTES](
	[paciente_id] [int] IDENTITY(1,1) NOT NULL,
	[primer_nombre] [varchar](50) NULL,
	[segundo_nombre] [varchar](50) NULL,
	[primer_apellido] [varchar](50) NULL,
	[segundo_apellido] [varchar](50) NULL,
	[estado] [tinyint] NULL,
 CONSTRAINT [PK_ID_PACIENTE] PRIMARY KEY CLUSTERED 
(
	[paciente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SALAS]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALAS](
	[sala_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
 CONSTRAINT [PK_ID_SALA] PRIMARY KEY CLUSTERED 
(
	[sala_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TELEFONOS_MEDICOS]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELEFONOS_MEDICOS](
	[rel_id] [int] IDENTITY(1,1) NOT NULL,
	[numero_telefono] [varchar](20) NULL,
	[fk_medico] [int] NULL,
 CONSTRAINT [PK_ID_TELEFONO_MEDICO] PRIMARY KEY CLUSTERED 
(
	[rel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TELEFONOS_PACIENTES]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TELEFONOS_PACIENTES](
	[rel_id] [int] IDENTITY(1,1) NOT NULL,
	[numero_telefono] [varchar](20) NULL,
	[fk_paciente] [int] NULL,
 CONSTRAINT [PK_ID_TELEFONO_PACIENTE] PRIMARY KEY CLUSTERED 
(
	[rel_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CORREOS_MEDICOS] ON 

INSERT [dbo].[CORREOS_MEDICOS] ([rel_id], [correo], [fk_medico]) VALUES (11, N'john.doe@example.com', 6)
INSERT [dbo].[CORREOS_MEDICOS] ([rel_id], [correo], [fk_medico]) VALUES (12, N'john.smith@example.com', 6)
INSERT [dbo].[CORREOS_MEDICOS] ([rel_id], [correo], [fk_medico]) VALUES (13, N'john.doe@example.com', 7)
INSERT [dbo].[CORREOS_MEDICOS] ([rel_id], [correo], [fk_medico]) VALUES (14, N'john.smith@example.com', 7)
SET IDENTITY_INSERT [dbo].[CORREOS_MEDICOS] OFF
GO
SET IDENTITY_INSERT [dbo].[CORREOS_PACIENTES] ON 

INSERT [dbo].[CORREOS_PACIENTES] ([rel_id], [correo], [fk_paciente]) VALUES (1, N'gama@example.com', 1)
INSERT [dbo].[CORREOS_PACIENTES] ([rel_id], [correo], [fk_paciente]) VALUES (2, N' trabajoGama@example.com', 1)
INSERT [dbo].[CORREOS_PACIENTES] ([rel_id], [correo], [fk_paciente]) VALUES (3, N'jeffry@example.com', 2)
INSERT [dbo].[CORREOS_PACIENTES] ([rel_id], [correo], [fk_paciente]) VALUES (4, N' trabajoJeffry@example.com', 2)
INSERT [dbo].[CORREOS_PACIENTES] ([rel_id], [correo], [fk_paciente]) VALUES (5, N'juan@example.com', 3)
INSERT [dbo].[CORREOS_PACIENTES] ([rel_id], [correo], [fk_paciente]) VALUES (6, N'carlos@example.com', 3)
SET IDENTITY_INSERT [dbo].[CORREOS_PACIENTES] OFF
GO
SET IDENTITY_INSERT [dbo].[ESPECIALIDADES] ON 

INSERT [dbo].[ESPECIALIDADES] ([especialidad_id], [nombre], [descripcion]) VALUES (1, N'Cardiologia', N'estudios del corazon')
INSERT [dbo].[ESPECIALIDADES] ([especialidad_id], [nombre], [descripcion]) VALUES (2, N'Oftalmologo', N'problemas visuales')
INSERT [dbo].[ESPECIALIDADES] ([especialidad_id], [nombre], [descripcion]) VALUES (3, N'Dermatologo', N'problemas en la piel')
SET IDENTITY_INSERT [dbo].[ESPECIALIDADES] OFF
GO
SET IDENTITY_INSERT [dbo].[ESPECIALIDADES_MEDICOS] ON 

INSERT [dbo].[ESPECIALIDADES_MEDICOS] ([especialidades_id], [fk_medico], [fk_especialidad]) VALUES (1, 7, 1)
INSERT [dbo].[ESPECIALIDADES_MEDICOS] ([especialidades_id], [fk_medico], [fk_especialidad]) VALUES (2, 7, 2)
SET IDENTITY_INSERT [dbo].[ESPECIALIDADES_MEDICOS] OFF
GO
SET IDENTITY_INSERT [dbo].[MEDICOS] ON 

INSERT [dbo].[MEDICOS] ([medico_id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [estado]) VALUES (6, N'John', N'Doe', N'Smith', N'Johnson', 1)
INSERT [dbo].[MEDICOS] ([medico_id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [estado]) VALUES (7, N'John', N'Doe', N'Smith', N'Johnson', 1)
SET IDENTITY_INSERT [dbo].[MEDICOS] OFF
GO
SET IDENTITY_INSERT [dbo].[PACIENTES] ON 

INSERT [dbo].[PACIENTES] ([paciente_id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [estado]) VALUES (1, N'marvin', N'gamaliel', N'rodriguez', N'vargas', 1)
INSERT [dbo].[PACIENTES] ([paciente_id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [estado]) VALUES (2, N'Jefrry', N'steven', N'garcia', N'jimenez', 1)
INSERT [dbo].[PACIENTES] ([paciente_id], [primer_nombre], [segundo_nombre], [primer_apellido], [segundo_apellido], [estado]) VALUES (3, N'Juan', N'Carlos', N'Pérez', N'Gómez', 1)
SET IDENTITY_INSERT [dbo].[PACIENTES] OFF
GO
SET IDENTITY_INSERT [dbo].[TELEFONOS_MEDICOS] ON 

INSERT [dbo].[TELEFONOS_MEDICOS] ([rel_id], [numero_telefono], [fk_medico]) VALUES (11, N'1234567890', 6)
INSERT [dbo].[TELEFONOS_MEDICOS] ([rel_id], [numero_telefono], [fk_medico]) VALUES (12, N'9876543210', 6)
INSERT [dbo].[TELEFONOS_MEDICOS] ([rel_id], [numero_telefono], [fk_medico]) VALUES (13, N'1234567890', 7)
INSERT [dbo].[TELEFONOS_MEDICOS] ([rel_id], [numero_telefono], [fk_medico]) VALUES (14, N'9876543210', 7)
SET IDENTITY_INSERT [dbo].[TELEFONOS_MEDICOS] OFF
GO
SET IDENTITY_INSERT [dbo].[TELEFONOS_PACIENTES] ON 

INSERT [dbo].[TELEFONOS_PACIENTES] ([rel_id], [numero_telefono], [fk_paciente]) VALUES (1, N'123456789', 1)
INSERT [dbo].[TELEFONOS_PACIENTES] ([rel_id], [numero_telefono], [fk_paciente]) VALUES (2, N' 987654321', 1)
INSERT [dbo].[TELEFONOS_PACIENTES] ([rel_id], [numero_telefono], [fk_paciente]) VALUES (3, N'65544555', 2)
INSERT [dbo].[TELEFONOS_PACIENTES] ([rel_id], [numero_telefono], [fk_paciente]) VALUES (4, N' 569874135', 2)
INSERT [dbo].[TELEFONOS_PACIENTES] ([rel_id], [numero_telefono], [fk_paciente]) VALUES (5, N'7567567', 3)
INSERT [dbo].[TELEFONOS_PACIENTES] ([rel_id], [numero_telefono], [fk_paciente]) VALUES (6, N'898756344', 3)
SET IDENTITY_INSERT [dbo].[TELEFONOS_PACIENTES] OFF
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([fk_factura])
REFERENCES [dbo].[FACTURAS] ([factura_id])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([fk_medico])
REFERENCES [dbo].[MEDICOS] ([medico_id])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([fk_paciente])
REFERENCES [dbo].[PACIENTES] ([paciente_id])
GO
ALTER TABLE [dbo].[CITAS]  WITH CHECK ADD FOREIGN KEY([fk_sala])
REFERENCES [dbo].[SALAS] ([sala_id])
GO
ALTER TABLE [dbo].[CORREOS_MEDICOS]  WITH CHECK ADD FOREIGN KEY([fk_medico])
REFERENCES [dbo].[MEDICOS] ([medico_id])
GO
ALTER TABLE [dbo].[CORREOS_PACIENTES]  WITH CHECK ADD FOREIGN KEY([fk_paciente])
REFERENCES [dbo].[PACIENTES] ([paciente_id])
GO
ALTER TABLE [dbo].[ESPECIALIDADES_MEDICOS]  WITH CHECK ADD FOREIGN KEY([fk_especialidad])
REFERENCES [dbo].[ESPECIALIDADES] ([especialidad_id])
GO
ALTER TABLE [dbo].[ESPECIALIDADES_MEDICOS]  WITH CHECK ADD FOREIGN KEY([fk_medico])
REFERENCES [dbo].[MEDICOS] ([medico_id])
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD FOREIGN KEY([fk_cita])
REFERENCES [dbo].[CITAS] ([cita_id])
GO
ALTER TABLE [dbo].[HORARIOS]  WITH CHECK ADD FOREIGN KEY([fk_medico])
REFERENCES [dbo].[MEDICOS] ([medico_id])
GO
ALTER TABLE [dbo].[TELEFONOS_MEDICOS]  WITH CHECK ADD FOREIGN KEY([fk_medico])
REFERENCES [dbo].[MEDICOS] ([medico_id])
GO
ALTER TABLE [dbo].[TELEFONOS_PACIENTES]  WITH CHECK ADD FOREIGN KEY([fk_paciente])
REFERENCES [dbo].[PACIENTES] ([paciente_id])
GO
/****** Object:  StoredProcedure [dbo].[actualizar_especialidad]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizar_especialidad]
	@id int,
	@nombre VARCHAR(100),
	@descripcion VARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;
	IF(@nombre!='' and @descripcion!='' and @id!=0)
	BEGIN
		UPDATE ESPECIALIDADES SET nombre=@nombre, descripcion=@descripcion WHERE @id = especialidad_id
	END
	ELSE
	BEGIN
		PRINT 'Datos Faltantes'	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[actualizar_factura]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizar_factura]
	@id int,
	@monto_total float,
	@fecha date,
	@fk_cita int
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!= 0 and @monto_total!=0 and @fecha!=NULL and @fk_cita !=0)
	BEGIN
		UPDATE FACTURAS SET monto_total = @monto_total, fecha = @fecha, fk_cita=@fk_cita WHERE factura_id = @id
	END
	ELSE
	BEGIN
		PRINT 'ALGO MALIO SAL'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[actualizar_horario]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[actualizar_horario]
	@id int,
	@dia varchar(100),
	@hora_inicio varchar(100),
	@hora_final varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!=0 and @dia!='' and @hora_inicio!='' and @hora_final!='')
	BEGIN
		UPDATE HORARIOS SET dia=@dia, hora_inicio=@hora_inicio, hora_final=@hora_final WHERE horario_id = @id
	END
	ELSE
	BEGIN
		PRINT 'DATOS FALTANTES'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[agregar_especialidad]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregar_especialidad]
	@nombre VARCHAR(100),
	@descripcion VARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO ESPECIALIDADES(nombre, descripcion)
	VALUES (@nombre, @descripcion)
END
GO
/****** Object:  StoredProcedure [dbo].[agregar_especialidad_medico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregar_especialidad_medico]
	@id int,
	@id_medico int
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!=0 and @id_medico!=0)
	BEGIN
		INSERT INTO ESPECIALIDADES_MEDICOS (fk_especialidad, fk_medico) VALUES(@id, @id_medico)
	END
	ELSE
	BEGIN
		PRINT 'Datos Faltantes'	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[agregar_factura]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregar_factura]
	@monto_total float,
	@fecha date,
	@fk_cita int
AS
BEGIN
	SET NOCOUNT ON;
	IF(@monto_total!=0 and @fecha!=NULL and @fk_cita !=0)
	BEGIN
		INSERT INTO FACTURAS (monto_total, fecha, fk_cita) VALUES (@monto_total, @fecha, @fk_cita)
	END
	ELSE
	BEGIN
		PRINT 'ALGO MALIO SAL'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[agregar_horario]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[agregar_horario]
	@id_medico int,
	@dia varchar(100),
	@hora_inicio varchar(100),
	@hora_final varchar(100)
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id_medico!=0 and @dia!='' and @hora_inicio!='' and @hora_final!='')
	BEGIN
		INSERT INTO HORARIOS (dia, hora_inicio, hora_final, fk_medico)
		VALUES(@dia, @hora_inicio, @hora_final, @id_medico)
	END
	ELSE
	BEGIN
		PRINT 'DATOS FALTANTES'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[BuscarDatosPorCorreo]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BuscarDatosPorCorreo]
    @correoBuscado VARCHAR(100),
    @id INT OUTPUT,
    @rol VARCHAR(20) OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (SELECT 1 FROM CORREOS_MEDICOS WHERE correo = @correoBuscado)
    BEGIN
        SET @id = (SELECT fk_medico FROM CORREOS_MEDICOS WHERE correo = @correoBuscado);
        SET @rol = 'Médico';

        SELECT M.medico_id,
               M.primer_nombre,
               M.segundo_nombre,
               M.primer_apellido,
               M.segundo_apellido,
               M.estado,
               @rol
        FROM MEDICOS M
        INNER JOIN CORREOS_MEDICOS CM ON CM.fk_medico = M.medico_id
        WHERE CM.correo = @correoBuscado;
    END
    ELSE IF EXISTS (SELECT 1 FROM CORREOS_PACIENTES WHERE correo = @correoBuscado)
    BEGIN
        SET @id = (SELECT fk_paciente FROM CORREOS_PACIENTES WHERE correo = @correoBuscado);
        SET @rol = 'Paciente';

        SELECT P.paciente_id,
               P.primer_nombre,
               P.segundo_nombre,
               P.primer_apellido,
               P.segundo_apellido,
               P.estado,
               @rol
        FROM PACIENTES P
        INNER JOIN CORREOS_PACIENTES CP ON CP.fk_paciente = P.paciente_id
        WHERE CP.correo = @correoBuscado;
    END
    ELSE
    BEGIN
        SET @id = -1;
        SET @rol = NULL;

        SELECT @id, NULL, NULL, NULL, NULL, NULL, NULL;
    END
END
GO
/****** Object:  StoredProcedure [dbo].[eliminar_especialidad]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminar_especialidad]
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	--primero deberia borrar las especialidades en la tabla de relacion esp_medicos
	IF(@id!=0)
		BEGIN
			BEGIN TRANSACTION
				BEGIN TRY
					DELETE FROM ESPECIALIDADES_MEDICOS WHERE fk_especialidad = @id 
					DELETE FROM ESPECIALIDADES WHERE especialidad_id = @id
				COMMIT
				END TRY
				BEGIN CATCH
					ROLLBACK
				END CATCH
		END 
		
	ELSE
		BEGIN
			print 'algo malio sal'
		END

END
GO
/****** Object:  StoredProcedure [dbo].[eliminar_especialidad_medico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminar_especialidad_medico]
	@id int,
	@id_medico int
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!=0 and @id_medico!=0)
	BEGIN
		DELETE ESPECIALIDADES_MEDICOS WHERE fk_especialidad = @id and fk_medico = @id_medico
	END
	ELSE
	BEGIN
		PRINT 'Datos Faltantes'	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[eliminar_factura]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminar_factura]
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!= 0)
	BEGIN
		DELETE FROM FACTURAS WHERE factura_id = @id
	END
	ELSE
	BEGIN
		PRINT 'ALGO MALIO SAL'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[eliminar_horario]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[eliminar_horario]
	@id int
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!=0)
	BEGIN
		DELETE FROM HORARIOS WHERE horario_id = @id
	END
	ELSE
	BEGIN
		PRINT 'DATOS FALTANTES'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[listar_citas_paciente]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listar_citas_paciente]
    @id_paciente int
AS
BEGIN
    SET NOCOUNT ON;
    
    SELECT
		ct.fecha 'fecha', 
		ct.hora 'hora',
		ct.sala 'sala',
		md.primer_nombre 'nombre medico',
		md.primer_apellido 'apellido medico',
		pc.primer_nombre 'nombre paciente',
		pc.primer_apellido 'apellido paciente',
		ct.estado 'estado'
	FROM CITAS AS ct
	INNER JOIN MEDICOS AS md ON ct.fk_medico = md.medico_id
	INNER JOIN PACIENTES AS pc ON ct.fk_paciente = pc.paciente_id
    WHERE ct.fk_paciente = @id_paciente and ct.estado!=0
END
GO
/****** Object:  StoredProcedure [dbo].[mostrar_medicos_por_especialidad]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mostrar_medicos_por_especialidad]
	@id_especialidad int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
		md.primer_nombre 'nombre medico',
		md.primer_apellido 'apellido medico',
		esp.nombre 'especialidad',
		esp.descripcion 'descripcion'
	FROM ESPECIALIDADES AS esp
	INNER JOIN ESPECIALIDADES_MEDICOS AS esp_med ON esp.especialidad_id = esp_med.fk_especialidad
	INNER JOIN MEDICOS AS md ON esp_med.fk_medico = md.medico_id
	WHERE esp.especialidad_id = @id_especialidad
END
GO
/****** Object:  StoredProcedure [dbo].[sp_actualizar_medico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_actualizar_medico]
	@id int,
	@primer_nombre NVARCHAR(50),
	@segundo_nombre NVARCHAR(50),
	@primer_apellido NVARCHAR(50),
	@segundo_apellido NVARCHAR(50),
	--en los correos y telefonos tengo que concatenar el correo especifico que se va a actualizar...
	@correos NVARCHAR(MAX),
	@telefonos NVARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- Validar que los datos no vengan incompletos
	IF (@primer_nombre != '' AND @segundo_nombre != '' AND @primer_apellido != '' AND @segundo_apellido != '' AND @correos != '' AND @telefonos != '')
	BEGIN
		BEGIN TRANSACTION 
		BEGIN TRY
			UPDATE MEDICOS
			SET primer_nombre = @primer_nombre, segundo_nombre = @segundo_nombre, primer_apellido = @primer_apellido, segundo_apellido= @segundo_apellido
			WHERE medico_id = @id

			--los correos actualizados van a venir con el siguiente formato @correos NVARCHAR(MAX) = "[id]correo, [id]correo" entonces tengo que extraer mediante el split cada correo y tambien extraer el numero dentro de
			--los parentesis cuadrados porque ese va a ser el id del correo que se va actualizar, luego actualizar de la tabla de correos el correo que tenga ese id
			-- Dividir la cadena de correos electrónicos en una lista de valores
			DECLARE @CorreosTabla TABLE (ID INT, Correo NVARCHAR(100))
			-- Obtener los correos electrónicos actualizados
			INSERT INTO @CorreosTabla (ID, Correo)
			SELECT CAST(SUBSTRING(value, CHARINDEX('[', value) + 1, CHARINDEX(']', value) - CHARINDEX('[', value) - 1) AS INT) AS ID,
				   SUBSTRING(value, CHARINDEX(']', value) + 1, LEN(value) - CHARINDEX(']', value)) AS Correo
			FROM STRING_SPLIT(@correos, ',')
			
			-- Actualizar los correos electrónicos en la tabla de correos
			UPDATE CP
			SET correo = CT.Correo
			FROM CORREOS_MEDICOS CP
			INNER JOIN @CorreosTabla CT ON CP.rel_id = CT.ID


			--ACTUALIZAR TELEFONOS
			DECLARE @TelefonosTabla TABLE (ID INT, telefono NVARCHAR(20))
			-- Obtener los correos electrónicos actualizados
			INSERT INTO @TelefonosTabla (ID, telefono)
			SELECT CAST(SUBSTRING(value, CHARINDEX('[', value) + 1, CHARINDEX(']', value) - CHARINDEX('[', value) - 1) AS INT) AS ID,
				   SUBSTRING(value, CHARINDEX(']', value) + 1, LEN(value) - CHARINDEX(']', value)) AS Correo
			FROM STRING_SPLIT(@telefonos, ',')
			
			-- Actualizar los correos electrónicos en la tabla de correos
			UPDATE TP
			SET numero_telefono = CT.telefono
			FROM TELEFONOS_MEDICOS TP
			INNER JOIN @TelefonosTabla CT ON TP.rel_id = CT.ID


			COMMIT
		END TRY
		BEGIN CATCH
			ROLLBACK
		END CATCH
	END
	ELSE
	BEGIN
		PRINT 'Datos Faltantes'	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_actualizar_paciente]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_actualizar_paciente]
	@id int,
	@primer_nombre NVARCHAR(50),
	@segundo_nombre NVARCHAR(50),
	@primer_apellido NVARCHAR(50),
	@segundo_apellido NVARCHAR(50),
	--en los correos y telefonos tengo que concatenar el correo especifico que se va a actualizar...
	@correos NVARCHAR(MAX),
	@telefonos NVARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- Validar que los datos no vengan incompletos
	IF (@primer_nombre != '' AND @segundo_nombre != '' AND @primer_apellido != '' AND @segundo_apellido != '' AND @correos != '' AND @telefonos != '')
	BEGIN
		BEGIN TRANSACTION 
		BEGIN TRY
			UPDATE PACIENTES
			SET primer_nombre = @primer_nombre, segundo_nombre = @segundo_nombre, primer_apellido = @primer_apellido, segundo_apellido= @segundo_apellido
			WHERE paciente_id = @id

			--los correos actualizados van a venir con el siguiente formato @correos NVARCHAR(MAX) = "[id]correo, [id]correo" entonces tengo que extraer mediante el split cada correo y tambien extraer el numero dentro de
			--los parentesis cuadrados porque ese va a ser el id del correo que se va actualizar, luego actualizar de la tabla de correos el correo que tenga ese id
			-- Dividir la cadena de correos electrónicos en una lista de valores
			DECLARE @CorreosTabla TABLE (ID INT, Correo NVARCHAR(100))
			-- Obtener los correos electrónicos actualizados
			INSERT INTO @CorreosTabla (ID, Correo)
			SELECT CAST(SUBSTRING(value, CHARINDEX('[', value) + 1, CHARINDEX(']', value) - CHARINDEX('[', value) - 1) AS INT) AS ID,
				   SUBSTRING(value, CHARINDEX(']', value) + 1, LEN(value) - CHARINDEX(']', value)) AS Correo
			FROM STRING_SPLIT(@correos, ',')
			
			-- Actualizar los correos electrónicos en la tabla de correos
			UPDATE CP
			SET correo = CT.Correo
			FROM CORREOS_PACIENTES CP
			INNER JOIN @CorreosTabla CT ON CP.rel_id = CT.ID


			--ACTUALIZAR TELEFONOS
			DECLARE @TelefonosTabla TABLE (ID INT, telefono NVARCHAR(20))
			-- Obtener los correos electrónicos actualizados
			INSERT INTO @TelefonosTabla (ID, telefono)
			SELECT CAST(SUBSTRING(value, CHARINDEX('[', value) + 1, CHARINDEX(']', value) - CHARINDEX('[', value) - 1) AS INT) AS ID,
				   SUBSTRING(value, CHARINDEX(']', value) + 1, LEN(value) - CHARINDEX(']', value)) AS Correo
			FROM STRING_SPLIT(@telefonos, ',')
			
			-- Actualizar los correos electrónicos en la tabla de correos
			UPDATE TP
			SET numero_telefono = CT.telefono
			FROM TELEFONOS_PACIENTES TP
			INNER JOIN @TelefonosTabla CT ON TP.rel_id = CT.ID


			COMMIT
		END TRY
		BEGIN CATCH
			ROLLBACK
		END CATCH
	END
	ELSE
	BEGIN
		PRINT 'Datos Faltantes'	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_agregar_cita]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_agregar_cita]
	@fecha date,
	@hora time,
	@fk_sala int,
	@fk_medico int,
	@fk_paciente int,
	@estado tinyint
AS
BEGIN
	SET NOCOUNT ON;
	IF(@fecha!=NULL AND @hora!= NULL AND @fk_sala!=0 AND @fk_medico!=0 AND @fk_paciente!=0)
	BEGIN
		INSERT INTO CITAS (fecha, hora, fk_sala, fk_medico, fk_paciente, estado)
		VALUES (@fecha, @hora, @fk_sala, @fk_medico, @fk_paciente, @estado)
	END
	ELSE
	BEGIN
		PRINT 'DATOS FALTANTES' 
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_cancelar_cita]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_cancelar_cita]
	@id int,
	@estado int
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!=0 and @estado!=1)
	BEGIN
		DELETE FROM CITAS WHERE cita_id=@id
	END
	ELSE
	BEGIN
		PRINT 'DATOS FALTANTES'
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_medico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_eliminar_medico]
	@id INT
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!=0)
	BEGIN
		UPDATE MEDICOS 
		SET estado = 0
		WHERE medico_id = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_paciente]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_eliminar_paciente]
	@id INT
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id!=0)
	BEGIN
		UPDATE PACIENTES 
		SET estado = 0
		WHERE paciente_id = @id
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_medico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insertar_medico]
	@primer_nombre NVARCHAR(100),
	@segundo_nombre NVARCHAR(100),
	@primer_apellido NVARCHAR(100),
	@segundo_apellido NVARCHAR(100),
	@especialidades NVARCHAR(100),
	@correos NVARCHAR(MAX),
	@telefonos NVARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- Validar que los datos no vengan incompletos
	IF (@primer_nombre != '' AND @segundo_nombre != '' AND @primer_apellido != '' AND @segundo_apellido != '' AND @correos != '' AND @telefonos != '')
	BEGIN
		BEGIN TRANSACTION 
		BEGIN TRY
			INSERT INTO MEDICOS(primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, estado)
			VALUES (@primer_nombre, @segundo_nombre, @primer_apellido, @segundo_apellido,1)
			
			DECLARE @ID_MEDICO INT = SCOPE_IDENTITY()

			-- Insertar los correos electrónicos, se utiliza una tabla temporal donde se van a ir guardando los correos que vengan en el string de correos
			-- mediante la funcion split la cadena de correos se separa por comas y se toma cada valor para insertarlo momentaneamente a la tabla correos
			DECLARE @CorreosTabla TABLE (Correo NVARCHAR(100))
			INSERT INTO @CorreosTabla (Correo)
			SELECT value FROM STRING_SPLIT(@correos, ',')
			
			--una vez que los correos estan separados se inserta toda la tabla de correos, dado que es una tabla no hace falta recorrerla
			--explicitamente
			INSERT INTO CORREOS_MEDICOS(correo, fk_medico)
			SELECT Correo, @ID_MEDICO FROM @CorreosTabla
			PRINT ' INSERTO CORREOS  '	
			-- Insertar los teléfonos, funciona exactamente igual que el insertar correos
			DECLARE @TelefonosTabla TABLE (Telefono NVARCHAR(20))
			INSERT INTO @TelefonosTabla (Telefono)
			SELECT value FROM STRING_SPLIT(@telefonos, ',')

			INSERT INTO TELEFONOS_MEDICOS(numero_telefono, fk_medico)
			SELECT Telefono, @ID_MEDICO FROM @TelefonosTabla
			PRINT ' INSERTO TELEFONOS  '	
			
			--para poder insertar la especialidad del medico tiene que seleccionar primero las especialidades y traerse el id
			DECLARE @EspecialidadesTabla TABLE (especialidad int)
			INSERT INTO @EspecialidadesTabla (especialidad)
			SELECT value FROM STRING_SPLIT(@especialidades, ',')

			INSERT INTO ESPECIALIDADES_MEDICOS(fk_especialidad, fk_medico)
			SELECT especialidad, @ID_MEDICO FROM @EspecialidadesTabla
			PRINT ' LLEGO AL COMIT '
			COMMIT
		END TRY
		BEGIN CATCH
			ROLLBACK
		END CATCH
	END
	ELSE
	BEGIN
		PRINT 'Datos Faltantes'	
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_paciente]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insertar_paciente]
	@primer_nombre NVARCHAR(50),
	@segundo_nombre NVARCHAR(50),
	@primer_apellido NVARCHAR(50),
	@segundo_apellido NVARCHAR(50),
	@correos NVARCHAR(MAX),
	@telefonos NVARCHAR(MAX)
AS
BEGIN
	SET NOCOUNT ON;
	
	-- Validar que los datos no vengan incompletos
	IF (@primer_nombre != '' AND @segundo_nombre != '' AND @primer_apellido != '' AND @segundo_apellido != '' AND @correos != '' AND @telefonos != '')
	BEGIN
		BEGIN TRANSACTION 
		BEGIN TRY
			INSERT INTO PACIENTES (primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, estado)
			VALUES (@primer_nombre, @segundo_nombre, @primer_apellido, @segundo_apellido, 1)
			
			DECLARE @ID_PACIENTE INT = SCOPE_IDENTITY()

			-- Insertar los correos electrónicos, se utiliza una tabla temporal donde se van a ir guardando los correos que vengan en el string de correos
			-- mediante la funcion split la cadena de correos se separa por comas y se toma cada valor para insertarlo momentaneamente a la tabla correos
			DECLARE @CorreosTabla TABLE (Correo NVARCHAR(100))
			INSERT INTO @CorreosTabla (Correo)
			SELECT value FROM STRING_SPLIT(@correos, ',')
			--una vez que los correos estan separados se inserta toda la tabla de correos, dado que es una tabla no hace falta recorrerla
			--explicitamente
			INSERT INTO CORREOS_PACIENTES (correo, fk_paciente)
			SELECT Correo, @ID_PACIENTE FROM @CorreosTabla

			-- Insertar los teléfonos, funciona exactamente igual que el insertar correos
			DECLARE @TelefonosTabla TABLE (Telefono NVARCHAR(20))
			INSERT INTO @TelefonosTabla (Telefono)
			SELECT value FROM STRING_SPLIT(@telefonos, ',')

			INSERT INTO TELEFONOS_PACIENTES(numero_telefono, fk_paciente)
			SELECT Telefono, @ID_PACIENTE FROM @TelefonosTabla

			COMMIT
		END TRY
		BEGIN CATCH
			ROLLBACK
		END CATCH
	END
	ELSE
	BEGIN
		PRINT 'Datos Faltantes'	
	END
END

GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_facturas_paciente]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_mostrar_facturas_paciente]
	@id_paciente int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
		pc.primer_nombre 'nombre paciente',
		pc.primer_apellido 'apellido paciente',
		md.primer_nombre 'nombre medico',
		md.primer_apellido 'apellido medico',
		ct.fecha 'fecha cita',
		ct.hora 'hora cita',
		ct.sala 'sala cita',
		fc.monto_total 'monto consulta',
		fc.fecha 'fecha factura'
	FROM FACTURAS AS fc
	INNER JOIN CITAS AS ct ON fc.fk_cita = ct.cita_id
	INNER JOIN PACIENTES AS pc ON ct.fk_paciente = pc.paciente_id
	INNER JOIN MEDICOS AS md ON ct.fk_medico = md.medico_id
	WHERE ct.fk_paciente = @id_paciente

END
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_horario_medico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_mostrar_horario_medico]
	@id_medico int
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
		hr.dia 'Dia',
		hr.hora_inicio 'hora inicial',
		hr.hora_final 'hora final',
		md.primer_nombre 'nombre medico',
		md.primer_apellido 'apellido medico'
	FROM HORARIOS AS hr
	INNER JOIN MEDICOS AS md ON hr.fk_medico = md.medico_id
	WHERE hr.fk_medico = @id_medico
END
GO
/****** Object:  StoredProcedure [dbo].[sp_sala_disponible_dia_hora]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_sala_disponible_dia_hora]
	@dia varchar(20),
	@hora int
AS
BEGIN
	SET NOCOUNT ON; 

	-- Verificar que los parámetros sean válidos
	IF (@hora > 0 AND @dia != '')
	BEGIN
		-- Obtener las salas desocupadas en el día y hora especificados
		SELECT sl.nombre
		FROM SALAS AS sl
		WHERE sl.sala_id NOT IN (
			-- Subconsulta para obtener las salas que ya tienen una cita programada en el día y hora especificados
			SELECT ct.fk_sala
			FROM CITAS AS ct
			WHERE ct.dia = @dia AND ct.hora = @hora
		)
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_traer_especialidades]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_traer_especialidades] 
AS
BEGIN
	SET NOCOUNT ON;
	SELECT esp.nombre, esp.descripcion, esp.especialidad_id FROM ESPECIALIDADES AS esp
END
GO
/****** Object:  StoredProcedure [dbo].[sp_traer_horario_medico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_traer_horario_medico]
	@id_medico int,
	@dia varchar(20)
AS
BEGIN
	SET NOCOUNT ON; 
	IF(@id_medico!=0 and @dia!='')
	BEGIN
		SELECT hr.hora_inicio, hr.hora_final
		FROM HORARIOS AS hr
		WHERE hr.fk_medico = @id_medico and hr.dia = @dia
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_traer_medico_por_especialidad]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_traer_medico_por_especialidad]
	@id_especialidad int
AS
BEGIN
	SET NOCOUNT ON;
	IF(@id_especialidad!=0)
	BEGIN
		SELECT med.medico_id, med.primer_nombre, med.primer_apellido
		FROM MEDICOS AS med
		INNER JOIN ESPECIALIDADES_MEDICOS AS rel ON med.medico_id = rel.fk_medico
		WHERE rel.fk_especialidad = @id_especialidad
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[traer_correos_paciente]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[traer_correos_paciente] 
	@id_paciente int
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT cr.correo FROM CORREOS_PACIENTES AS cr WHERE cr.fk_paciente = @id_paciente
END
GO
/****** Object:  StoredProcedure [dbo].[traer_telefonos_medico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[traer_telefonos_medico] 
	@id_medico int
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT t.numero_telefono FROM TELEFONOS_MEDICOS AS t WHERE t.fk_medico = @id_medico
END
GO
/****** Object:  StoredProcedure [dbo].[traer_telefonos_paciente]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[traer_telefonos_paciente] 
	@id_paciente int
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT p.numero_telefono FROM TELEFONOS_PACIENTES AS p WHERE p.fk_paciente = @id_paciente
END
GO
/****** Object:  StoredProcedure [dbo].[traerCorreosMedico]    Script Date: 25/6/2023 23:12:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[traerCorreosMedico]
	@id_medico int
	
AS
BEGIN

	SET NOCOUNT ON;
	SELECT cr.correo FROM CORREOS_MEDICOS AS cr WHERE cr.fk_medico = @id_medico
	
END
GO
USE [master]
GO
ALTER DATABASE [BD_PROYECTO] SET  READ_WRITE 
GO
