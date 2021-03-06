USE [Legis]
GO
/****** Object:  Table [dbo].[Candidato]    Script Date: 22/11/2021 19:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidato](
	[IdCandidato] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[FechaNacimiento] [datetime2](7) NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[TipoIdentificacion] [varchar](10) NOT NULL,
	[NumeroIdentificacion] [nchar](15) NOT NULL,
	[Foto] [varchar](max) NULL,
	[Propuesta] [varchar](max) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Candidato] PRIMARY KEY CLUSTERED 
(
	[IdCandidato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CandidatoEleccion]    Script Date: 22/11/2021 19:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CandidatoEleccion](
	[IdCandidatoEleccion] [int] IDENTITY(1,1) NOT NULL,
	[IdCandidato] [int] NOT NULL,
	[IdEleccion] [int] NOT NULL,
	[Anio] [varchar](10) NOT NULL,
 CONSTRAINT [PK_CandidatoEleccion] PRIMARY KEY CLUSTERED 
(
	[IdCandidatoEleccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Eleccion]    Script Date: 22/11/2021 19:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Eleccion](
	[IdEleccion] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](255) NULL,
 CONSTRAINT [PK_Eleccion] PRIMARY KEY CLUSTERED 
(
	[IdEleccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sufragante]    Script Date: 22/11/2021 19:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sufragante](
	[IdSufragante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Apellido] [varchar](255) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[FechaNacimiento] [datetime2](7) NULL,
	[Email] [varchar](255) NOT NULL,
	[TipoIdentifiacion] [varchar](15) NOT NULL,
	[NumeroIdentificacion] [varchar](50) NOT NULL,
	[Votado] [bit] NOT NULL CONSTRAINT [DF_Sufragante_Voto]  DEFAULT ((0)),
 CONSTRAINT [PK_Sufragante] PRIMARY KEY CLUSTERED 
(
	[IdSufragante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Voto]    Script Date: 22/11/2021 19:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voto](
	[IdVoto] [int] IDENTITY(1,1) NOT NULL,
	[IdEleccion] [int] NOT NULL,
	[IdSufragante] [int] NOT NULL,
 CONSTRAINT [PK_Voto] PRIMARY KEY CLUSTERED 
(
	[IdVoto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Candidato] ON 

INSERT [dbo].[Candidato] ([IdCandidato], [Nombre], [Apellido], [FechaNacimiento], [Email], [TipoIdentificacion], [NumeroIdentificacion], [Foto], [Propuesta], [Descripcion]) VALUES (1, N'ALIRIO ', N'BARRERA', CAST(N'1991-11-22 18:04:36.5000000' AS DateTime2), N'anonimo@gmail.com', N'CC', N'1014256789     ', NULL, N'“Voy a bajar la pobreza del país como lo hice en Casanare siendo gobernador, allá la bajé del 56% al 18,3%. Lo distinto también es que soy nacido en el campo, fui desplazado por el conflicto y fui vendedor informal”.', N'“No creo que afecte. Sin duda Iván Duque es una representación del partido y ha repuntado en seguridad y desarrollo económico. Hay cosas por corregir, pero ningún gobierno es perfecto”.')
INSERT [dbo].[Candidato] ([IdCandidato], [Nombre], [Apellido], [FechaNacimiento], [Email], [TipoIdentificacion], [NumeroIdentificacion], [Foto], [Propuesta], [Descripcion]) VALUES (2, N'MARÍA FERNANDA ', N'CABAL', CAST(N'1994-11-22 18:04:36.5000000' AS DateTime2), N'anonimocabal@gmail.com', N'CC', N'1015236851     ', NULL, N'“Solucionaré la falta de acceso a capital. La dignidad humana empieza por garantizar el acceso a un crédito que permite oportunidades de mercado. También será novedoso que una mujer tome las riendas del país”.', N' “La impopularidad puede generar una afectación, pero no será determinante. Lo que es determinante es el carácter del candidato, sus posturas frente a los desafíos que enfrenta Colombia y que seguirá enfrentando”.')
INSERT [dbo].[Candidato] ([IdCandidato], [Nombre], [Apellido], [FechaNacimiento], [Email], [TipoIdentificacion], [NumeroIdentificacion], [Foto], [Propuesta], [Descripcion]) VALUES (3, N'RAFAEL ', N'NIETO', CAST(N'1990-01-22 18:04:36.5000000' AS DateTime2), N'anonimorafael@gmail.com', N'CC', N'1013984576     ', NULL, N' “La impopularidad de Iván Duque nos va a afectar a todos, incluso a mí que llevo tres años distanciado de él, pero confío en que la recuperación económica cambie en algo la percepción que hay del Gobierno”.', N' “Hago énfasis en la pobreza y en buscar soluciones con conocimiento de esa realidad con datos, hechos y cifras que permitan que los proyectos de respuesta sean realizables, y le apostaré a la descentralización”.')
SET IDENTITY_INSERT [dbo].[Candidato] OFF
SET IDENTITY_INSERT [dbo].[CandidatoEleccion] ON 

INSERT [dbo].[CandidatoEleccion] ([IdCandidatoEleccion], [IdCandidato], [IdEleccion], [Anio]) VALUES (1, 1, 1, N'2021')
INSERT [dbo].[CandidatoEleccion] ([IdCandidatoEleccion], [IdCandidato], [IdEleccion], [Anio]) VALUES (2, 1, 2, N'2021')
INSERT [dbo].[CandidatoEleccion] ([IdCandidatoEleccion], [IdCandidato], [IdEleccion], [Anio]) VALUES (3, 2, 1, N'2021')
INSERT [dbo].[CandidatoEleccion] ([IdCandidatoEleccion], [IdCandidato], [IdEleccion], [Anio]) VALUES (4, 3, 2, N'2021')
SET IDENTITY_INSERT [dbo].[CandidatoEleccion] OFF
SET IDENTITY_INSERT [dbo].[Eleccion] ON 

INSERT [dbo].[Eleccion] ([IdEleccion], [Titulo]) VALUES (1, N'Presidente')
INSERT [dbo].[Eleccion] ([IdEleccion], [Titulo]) VALUES (2, N'Cenado')
SET IDENTITY_INSERT [dbo].[Eleccion] OFF
SET IDENTITY_INSERT [dbo].[Sufragante] ON 

INSERT [dbo].[Sufragante] ([IdSufragante], [Nombre], [Apellido], [Sexo], [FechaNacimiento], [Email], [TipoIdentifiacion], [NumeroIdentificacion], [Votado]) VALUES (1, N'JUAN', N'GARCIA', N'M', CAST(N'2000-11-20 18:04:36.5000000' AS DateTime2), N'anonimoJuan@gmail.com', N'CC', N'123123123', 0)
INSERT [dbo].[Sufragante] ([IdSufragante], [Nombre], [Apellido], [Sexo], [FechaNacimiento], [Email], [TipoIdentifiacion], [NumeroIdentificacion], [Votado]) VALUES (5, N'MARTHA', N'ESCOBAR', N'F', CAST(N'2001-11-22 18:04:36.5000000' AS DateTime2), N'anonimomartha@gmail.com', N'CC', N'321321321', 0)
SET IDENTITY_INSERT [dbo].[Sufragante] OFF
ALTER TABLE [dbo].[CandidatoEleccion]  WITH CHECK ADD  CONSTRAINT [FK_CandidatoEleccion_Candidato] FOREIGN KEY([IdCandidato])
REFERENCES [dbo].[Candidato] ([IdCandidato])
GO
ALTER TABLE [dbo].[CandidatoEleccion] CHECK CONSTRAINT [FK_CandidatoEleccion_Candidato]
GO
ALTER TABLE [dbo].[CandidatoEleccion]  WITH CHECK ADD  CONSTRAINT [FK_CandidatoEleccion_Eleccion] FOREIGN KEY([IdEleccion])
REFERENCES [dbo].[Eleccion] ([IdEleccion])
GO
ALTER TABLE [dbo].[CandidatoEleccion] CHECK CONSTRAINT [FK_CandidatoEleccion_Eleccion]
GO
ALTER TABLE [dbo].[Voto]  WITH CHECK ADD  CONSTRAINT [FK_Voto_Eleccion] FOREIGN KEY([IdEleccion])
REFERENCES [dbo].[Eleccion] ([IdEleccion])
GO
ALTER TABLE [dbo].[Voto] CHECK CONSTRAINT [FK_Voto_Eleccion]
GO
ALTER TABLE [dbo].[Voto]  WITH CHECK ADD  CONSTRAINT [FK_Voto_Sufragante] FOREIGN KEY([IdSufragante])
REFERENCES [dbo].[Sufragante] ([IdSufragante])
GO
ALTER TABLE [dbo].[Voto] CHECK CONSTRAINT [FK_Voto_Sufragante]
GO
