USE [SistemaEscolar]
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 12/09/2022 09:34:29 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EstudianteId] [int] NOT NULL,
	[MateriaId] [int] NOT NULL,
	[DocenteId] [int] NOT NULL,
	[PeriodoId] [int] NOT NULL,
	[Nota] [int] NOT NULL,
	[UsuarioRegistro] [nvarchar](max) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[UsuarioModificacion] [nvarchar](max) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[Estatus] [bit] NOT NULL,
 CONSTRAINT [PK_Calificaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Docentes]    Script Date: 12/09/2022 09:34:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Docentes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Codigo] [nvarchar](max) NOT NULL,
	[Sexo] [nvarchar](max) NOT NULL,
	[Telefono] [nvarchar](max) NOT NULL,
	[Correo] [nvarchar](max) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[UsuarioRegistro] [nvarchar](max) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[UsuarioModificacion] [nvarchar](max) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[Estatus] [bit] NOT NULL,
 CONSTRAINT [PK_Docentes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estudiantes]    Script Date: 12/09/2022 09:34:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiantes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [nvarchar](max) NOT NULL,
	[Apellidos] [nvarchar](max) NOT NULL,
	[Codigo] [nvarchar](max) NOT NULL,
	[FechaNac] [datetime2](7) NULL,
	[GradoId] [int] NOT NULL,
	[Sexo] [nvarchar](max) NOT NULL,
	[Telefono] [nvarchar](max) NOT NULL,
	[Correo] [nvarchar](max) NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[UsuarioRegistro] [nvarchar](max) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[UsuarioModificacion] [nvarchar](max) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[Estatus] [bit] NOT NULL,
 CONSTRAINT [PK_Estudiantes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grados]    Script Date: 12/09/2022 09:34:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grados](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[UsuarioRegistro] [nvarchar](max) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[UsuarioModificacion] [nvarchar](max) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[Estatus] [bit] NOT NULL,
 CONSTRAINT [PK_Grados] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materias]    Script Date: 12/09/2022 09:34:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[UsuarioRegistro] [nvarchar](max) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[UsuarioModificacion] [nvarchar](max) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[Estatus] [bit] NOT NULL,
 CONSTRAINT [PK_Materias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Periodos]    Script Date: 12/09/2022 09:34:30 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Periodos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[UsuarioRegistro] [nvarchar](max) NOT NULL,
	[FechaRegistro] [datetime2](7) NOT NULL,
	[UsuarioModificacion] [nvarchar](max) NOT NULL,
	[FechaModificacion] [datetime2](7) NULL,
	[Estatus] [bit] NOT NULL,
 CONSTRAINT [PK_Periodos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Docentes] ON 
GO
INSERT [dbo].[Docentes] ([Id], [Nombres], [Apellidos], [Codigo], [Sexo], [Telefono], [Correo], [Direccion], [UsuarioRegistro], [FechaRegistro], [UsuarioModificacion], [FechaModificacion], [Estatus]) VALUES (1, N'kelvin', N'string', N'string', N'string', N'string', N'string', N'string', N'string', CAST(N'2022-09-12T12:09:20.7160000' AS DateTime2), N'string', CAST(N'2022-09-12T12:09:20.7160000' AS DateTime2), 1)
GO
SET IDENTITY_INSERT [dbo].[Docentes] OFF
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Docentes_DocenteId] FOREIGN KEY([DocenteId])
REFERENCES [dbo].[Docentes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Docentes_DocenteId]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Estudiantes_EstudianteId] FOREIGN KEY([EstudianteId])
REFERENCES [dbo].[Estudiantes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Estudiantes_EstudianteId]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Materias_MateriaId] FOREIGN KEY([MateriaId])
REFERENCES [dbo].[Materias] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Materias_MateriaId]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Periodos_PeriodoId] FOREIGN KEY([PeriodoId])
REFERENCES [dbo].[Periodos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Periodos_PeriodoId]
GO
ALTER TABLE [dbo].[Estudiantes]  WITH CHECK ADD  CONSTRAINT [FK_Estudiantes_Grados_GradoId] FOREIGN KEY([GradoId])
REFERENCES [dbo].[Grados] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Estudiantes] CHECK CONSTRAINT [FK_Estudiantes_Grados_GradoId]
GO
