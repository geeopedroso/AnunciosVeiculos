USE [anuncios]
GO
/****** Object:  Table [dbo].[Anuncio]    Script Date: 04/09/2020 00:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anuncio](
	[IdAnuncio] [int] IDENTITY(1,1) NOT NULL,
	[idModelo] [int] NULL,
	[valorCompra] [decimal](10, 3) NULL,
	[valorVenda] [decimal](10, 3) NULL,
	[dataVenda] [date] NULL,
 CONSTRAINT [PK_Anuncio] PRIMARY KEY CLUSTERED 
(
	[IdAnuncio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marca]    Script Date: 04/09/2020 00:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marca](
	[IdMarca] [int] IDENTITY(1,1) NOT NULL,
	[NomeMarca] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Marca] PRIMARY KEY CLUSTERED 
(
	[IdMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelo]    Script Date: 04/09/2020 00:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelo](
	[IdModelo] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](100) NOT NULL,
	[ano] [varchar](10) NULL,
	[cor] [varchar](30) NULL,
	[tipoCombustivel] [varchar](30) NULL,
	[marcaId] [int] NULL,
 CONSTRAINT [PK_Modelo] PRIMARY KEY CLUSTERED 
(
	[IdModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 04/09/2020 00:34:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Email] [varchar](150) NULL,
	[Login] [varchar](50) NOT NULL,
	[Senha] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anuncio] ON 

INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (1, 1, CAST(66.700 AS Decimal(10, 3)), CAST(70.203 AS Decimal(10, 3)), CAST(N'2020-01-20' AS Date))
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (2, 2, CAST(66.700 AS Decimal(10, 3)), NULL, NULL)
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (3, 3, CAST(35.500 AS Decimal(10, 3)), CAST(36.200 AS Decimal(10, 3)), CAST(N'2020-05-20' AS Date))
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (4, 4, CAST(98.500 AS Decimal(10, 3)), CAST(99.200 AS Decimal(10, 3)), CAST(N'2020-02-10' AS Date))
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (5, 5, CAST(66.700 AS Decimal(10, 3)), NULL, NULL)
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (6, 6, CAST(12.500 AS Decimal(10, 3)), CAST(11.365 AS Decimal(10, 3)), CAST(N'2020-09-03' AS Date))
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (7, 7, CAST(55.500 AS Decimal(10, 3)), CAST(60.000 AS Decimal(10, 3)), CAST(N'2020-04-11' AS Date))
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (8, 8, CAST(98.000 AS Decimal(10, 3)), CAST(99.300 AS Decimal(10, 3)), CAST(N'2020-03-22' AS Date))
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (9, 1, NULL, NULL, NULL)
INSERT [dbo].[Anuncio] ([IdAnuncio], [idModelo], [valorCompra], [valorVenda], [dataVenda]) VALUES (11, 3, CAST(35.000 AS Decimal(10, 3)), CAST(66.000 AS Decimal(10, 3)), NULL)
SET IDENTITY_INSERT [dbo].[Anuncio] OFF
GO
SET IDENTITY_INSERT [dbo].[Marca] ON 

INSERT [dbo].[Marca] ([IdMarca], [NomeMarca]) VALUES (1, N'Honda')
INSERT [dbo].[Marca] ([IdMarca], [NomeMarca]) VALUES (2, N'Ford')
INSERT [dbo].[Marca] ([IdMarca], [NomeMarca]) VALUES (3, N'Fiat')
INSERT [dbo].[Marca] ([IdMarca], [NomeMarca]) VALUES (4, N'Volkswagen')
SET IDENTITY_INSERT [dbo].[Marca] OFF
GO
SET IDENTITY_INSERT [dbo].[Modelo] ON 

INSERT [dbo].[Modelo] ([IdModelo], [descricao], [ano], [cor], [tipoCombustivel], [marcaId]) VALUES (1, N'Civic Sport 2.0 CVT', N'2019', N'Preto', N'Gasolina', 1)
INSERT [dbo].[Modelo] ([IdModelo], [descricao], [ano], [cor], [tipoCombustivel], [marcaId]) VALUES (2, N'Fit 1.5 CVT', N'2018', N'Branco', N'Gasolina', 1)
INSERT [dbo].[Modelo] ([IdModelo], [descricao], [ano], [cor], [tipoCombustivel], [marcaId]) VALUES (3, N'Ka SE 1.0 ', N'2020', N'Vermelho', N'Gasolina/Alcool', 2)
INSERT [dbo].[Modelo] ([IdModelo], [descricao], [ano], [cor], [tipoCombustivel], [marcaId]) VALUES (4, N'Fusion 2.0 Hybrid Titanium', N'2019', N'Prata', N'Gasolina', 2)
INSERT [dbo].[Modelo] ([IdModelo], [descricao], [ano], [cor], [tipoCombustivel], [marcaId]) VALUES (5, N'Strada Endurance Cabine Dupla 1.4 MT', N'2014', N'Branco', N'Gasolina/Alcool', 3)
INSERT [dbo].[Modelo] ([IdModelo], [descricao], [ano], [cor], [tipoCombustivel], [marcaId]) VALUES (6, N'Uno Sporting 1.4 EVO', N'2012', N'Verde', N'Gasolina/Alcool', 3)
INSERT [dbo].[Modelo] ([IdModelo], [descricao], [ano], [cor], [tipoCombustivel], [marcaId]) VALUES (7, N'Polo Highline 200 TSI', N'2020', N'Prata', N'Gasolina', 4)
INSERT [dbo].[Modelo] ([IdModelo], [descricao], [ano], [cor], [tipoCombustivel], [marcaId]) VALUES (8, N'Golf GTI 2.0 TSI', N'2020', N'Vermelho', N'Gasolina', 4)
SET IDENTITY_INSERT [dbo].[Modelo] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([IdUsuario], [Nome], [Email], [Login], [Senha]) VALUES (1, N'Joao', NULL, N'admin', N'123456')
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Anuncio]  WITH CHECK ADD  CONSTRAINT [FK_AnuncioModelo] FOREIGN KEY([idModelo])
REFERENCES [dbo].[Modelo] ([IdModelo])
GO
ALTER TABLE [dbo].[Anuncio] CHECK CONSTRAINT [FK_AnuncioModelo]
GO
ALTER TABLE [dbo].[Modelo]  WITH CHECK ADD  CONSTRAINT [FK_ModeloMarca] FOREIGN KEY([marcaId])
REFERENCES [dbo].[Marca] ([IdMarca])
GO
ALTER TABLE [dbo].[Modelo] CHECK CONSTRAINT [FK_ModeloMarca]
GO
