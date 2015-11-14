USE [master]
GO
/****** Object:  Database [CINES]    Script Date: 09/11/2015 10:11:30 a.m. ******/
CREATE DATABASE [CINES]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CINES', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CINES.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CINES_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\CINES_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CINES] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CINES].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CINES] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CINES] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CINES] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CINES] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CINES] SET ARITHABORT OFF 
GO
ALTER DATABASE [CINES] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CINES] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CINES] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CINES] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CINES] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CINES] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CINES] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CINES] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CINES] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CINES] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CINES] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CINES] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CINES] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CINES] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CINES] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CINES] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CINES] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CINES] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CINES] SET  MULTI_USER 
GO
ALTER DATABASE [CINES] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CINES] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CINES] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CINES] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [CINES] SET DELAYED_DURABILITY = DISABLED 
GO
USE [CINES]
GO
/****** Object:  Table [dbo].[Barrios]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Barrios](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[id_localidad] [int] NULL,
 CONSTRAINT [PkBarrio] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Beneficios]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Beneficios](
	[id_beneficio] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
	[descripcion] [varchar](300) NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_finalizacion] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdBeneficio] PRIMARY KEY CLUSTERED 
(
	[id_beneficio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Butacas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Butacas](
	[id_butaca] [int] IDENTITY(1,1) NOT NULL,
	[butaca] [int] NOT NULL,
	[id_sala] [int] NULL,
	[id_estado] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkButaca] PRIMARY KEY CLUSTERED 
(
	[id_butaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Calificacion]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calificacion](
	[id_calificacion] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](10) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkEdad] PRIMARY KEY CLUSTERED 
(
	[id_calificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cines]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cines](
	[id_cine] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[razon_social] [varchar](50) NOT NULL,
	[cuit] [bigint] NOT NULL,
	[direccion] [varchar](150) NOT NULL,
	[id_cond_fiscal] [int] NULL,
	[id_barrio] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkCine] PRIMARY KEY CLUSTERED 
(
	[id_cine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[ape_cliente] [varchar](50) NOT NULL,
	[nom_cliente] [varchar](50) NOT NULL,
	[fec_nac] [datetime] NOT NULL,
	[telefono] [bigint] NOT NULL,
	[celular] [bigint] NOT NULL,
	[mail] [varchar](60) NULL,
	[dni] [bigint] NULL,
	[cuit] [bigint] NULL,
	[cuil] [bigint] NULL,
	[direccion] [varchar](80) NULL,
	[id_barrio] [int] NULL,
	[id_cond_fiscal] [int] NULL,
	[razon_social] [varchar](150) NULL,
	[id_beneficio] [int] NULL,
	[socio] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkCliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Condiciones_Fiscales]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Condiciones_Fiscales](
	[id_cond_fiscal] [int] IDENTITY(1,1) NOT NULL,
	[cond_fiscal] [varchar](50) NOT NULL,
 CONSTRAINT [PkCondFiscal] PRIMARY KEY CLUSTERED 
(
	[id_cond_fiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departamentos](
	[id_departamento] [int] IDENTITY(1,1) NOT NULL,
	[id_provincia] [int] NULL,
	[nombre] [varchar](60) NULL,
 CONSTRAINT [PkIdDepartamento] PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Detalles_Facturas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_Facturas](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_entrada] [int] NULL,
	[id_promocion] [int] NULL,
	[monto_promocion] [money] NULL,
	[id_beneficio] [int] NULL,
	[monto_beneficio] [money] NULL,
	[id_funcion] [int] NULL,
	[id_butaca] [int] NULL,
	[id_factura] [bigint] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkDetalle] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Detalles_Reservas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles_Reservas](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_reserva] [bigint] NULL,
	[id_butaca] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdDetalleReserva] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Entradas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Entradas](
	[id_entrada] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](35) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[precio] [money] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdEntrada] PRIMARY KEY CLUSTERED 
(
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoButacas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstadoButacas](
	[id_estado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](25) NOT NULL,
 CONSTRAINT [PkIdEstado] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[id_factura] [bigint] IDENTITY(1,1) NOT NULL,
	[nro_factura] [bigint] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[id_cine] [int] NOT NULL,
	[id_cliente] [int] NULL,
	[id_form_pago] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdFactura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [U_NroFactura] UNIQUE NONCLUSTERED 
(
	[nro_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Formas_de_Pagos]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Formas_de_Pagos](
	[id_form_pago] [int] IDENTITY(1,1) NOT NULL,
	[forma_pago] [varchar](70) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkFormPago] PRIMARY KEY CLUSTERED 
(
	[id_form_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funciones]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Funciones](
	[id_funcion] [int] IDENTITY(1,1) NOT NULL,
	[id_sala] [int] NULL,
	[id_pelicula] [int] NULL,
	[hs_inicio] [time](0) NULL,
	[hs_finalizacion] [time](0) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdSyP] PRIMARY KEY CLUSTERED 
(
	[id_funcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Generos]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Generos](
	[id_genero] [int] IDENTITY(1,1) NOT NULL,
	[genero] [varchar](50) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkGenero] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Localidades](
	[id_localidad] [int] IDENTITY(1,1) NOT NULL,
	[id_departamento] [int] NULL,
	[nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PkLocalidad] PRIMARY KEY CLUSTERED 
(
	[id_localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Peliculas](
	[id_pelicula] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](250) NULL,
	[estreno] [bit] NULL,
	[duracion] [time](0) NULL,
	[id_genero] [int] NULL,
	[id_calificacion] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PKIdPelicula] PRIMARY KEY CLUSTERED 
(
	[id_pelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promociones]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promociones](
	[id_promocion] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](60) NULL,
	[caracteristicas] [varchar](300) NULL,
	[cupo] [int] NOT NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[tipo_promocion] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdPromo] PRIMARY KEY CLUSTERED 
(
	[id_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Provincias](
	[id_provincia] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PkProvicia] PRIMARY KEY CLUSTERED 
(
	[id_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[id_reserva] [bigint] IDENTITY(1,1) NOT NULL,
	[id_cliente] [int] NULL,
	[fechaYHora] [datetime] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdReserva] PRIMARY KEY CLUSTERED 
(
	[id_reserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Salas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Salas](
	[id_sala] [int] IDENTITY(1,1) NOT NULL,
	[nombre_sala] [varchar](25) NOT NULL,
	[cant_butacas] [int] NULL,
	[id_tipo_sala] [int] NULL,
	[id_cine] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkSala] PRIMARY KEY CLUSTERED 
(
	[id_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipo_Promociones]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_Promociones](
	[id_tipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descuento] [int] NOT NULL,
	[descripcion] [varchar](150) NULL,
	[acumulable] [bit] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdTipo] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tipos_Salas]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipos_Salas](
	[id_tipo_sala] [int] IDENTITY(1,1) NOT NULL,
	[tipo_sala] [varchar](50) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkTipoSala] PRIMARY KEY CLUSTERED 
(
	[id_tipo_sala] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_categories]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoria] [varchar](25) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdUserCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 09/11/2015 10:11:30 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nickname] [varchar](30) NULL,
	[contrasenia] [varbinary](4000) NOT NULL,
	[id_tipo] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted_at] [datetime] NULL,
 CONSTRAINT [PkIdUser] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Barrios]  WITH CHECK ADD  CONSTRAINT [FKLocalidad] FOREIGN KEY([id_localidad])
REFERENCES [dbo].[Localidades] ([id_localidad])
GO
ALTER TABLE [dbo].[Barrios] CHECK CONSTRAINT [FKLocalidad]
GO
ALTER TABLE [dbo].[Butacas]  WITH CHECK ADD  CONSTRAINT [FKIdEstado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[EstadoButacas] ([id_estado])
GO
ALTER TABLE [dbo].[Butacas] CHECK CONSTRAINT [FKIdEstado]
GO
ALTER TABLE [dbo].[Butacas]  WITH CHECK ADD  CONSTRAINT [FkIdNroSala] FOREIGN KEY([id_sala])
REFERENCES [dbo].[Salas] ([id_sala])
GO
ALTER TABLE [dbo].[Butacas] CHECK CONSTRAINT [FkIdNroSala]
GO
ALTER TABLE [dbo].[Cines]  WITH CHECK ADD  CONSTRAINT [FkBarrioc] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Cines] CHECK CONSTRAINT [FkBarrioc]
GO
ALTER TABLE [dbo].[Cines]  WITH CHECK ADD  CONSTRAINT [FkCondFiscalc] FOREIGN KEY([id_cond_fiscal])
REFERENCES [dbo].[Condiciones_Fiscales] ([id_cond_fiscal])
GO
ALTER TABLE [dbo].[Cines] CHECK CONSTRAINT [FkCondFiscalc]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FkBarrio] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[Barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FkBarrio]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FkBeneficio] FOREIGN KEY([id_beneficio])
REFERENCES [dbo].[Beneficios] ([id_beneficio])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FkBeneficio]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FkIdCondFiscal] FOREIGN KEY([id_cond_fiscal])
REFERENCES [dbo].[Condiciones_Fiscales] ([id_cond_fiscal])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FkIdCondFiscal]
GO
ALTER TABLE [dbo].[Departamentos]  WITH CHECK ADD  CONSTRAINT [FkIdProvincia] FOREIGN KEY([id_provincia])
REFERENCES [dbo].[Provincias] ([id_provincia])
GO
ALTER TABLE [dbo].[Departamentos] CHECK CONSTRAINT [FkIdProvincia]
GO
ALTER TABLE [dbo].[Detalles_Facturas]  WITH CHECK ADD  CONSTRAINT [FkButacadf] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[Butacas] ([id_butaca])
GO
ALTER TABLE [dbo].[Detalles_Facturas] CHECK CONSTRAINT [FkButacadf]
GO
ALTER TABLE [dbo].[Detalles_Facturas]  WITH CHECK ADD  CONSTRAINT [FkFacturadf] FOREIGN KEY([id_factura])
REFERENCES [dbo].[Facturas] ([id_factura])
GO
ALTER TABLE [dbo].[Detalles_Facturas] CHECK CONSTRAINT [FkFacturadf]
GO
ALTER TABLE [dbo].[Detalles_Facturas]  WITH CHECK ADD  CONSTRAINT [FkIdBeneficio] FOREIGN KEY([id_beneficio])
REFERENCES [dbo].[Beneficios] ([id_beneficio])
GO
ALTER TABLE [dbo].[Detalles_Facturas] CHECK CONSTRAINT [FkIdBeneficio]
GO
ALTER TABLE [dbo].[Detalles_Facturas]  WITH CHECK ADD  CONSTRAINT [FkIdEntrada] FOREIGN KEY([id_entrada])
REFERENCES [dbo].[Entradas] ([id_entrada])
GO
ALTER TABLE [dbo].[Detalles_Facturas] CHECK CONSTRAINT [FkIdEntrada]
GO
ALTER TABLE [dbo].[Detalles_Facturas]  WITH CHECK ADD  CONSTRAINT [FkIdFuncion] FOREIGN KEY([id_funcion])
REFERENCES [dbo].[Funciones] ([id_funcion])
GO
ALTER TABLE [dbo].[Detalles_Facturas] CHECK CONSTRAINT [FkIdFuncion]
GO
ALTER TABLE [dbo].[Detalles_Facturas]  WITH CHECK ADD  CONSTRAINT [FkIdPromo] FOREIGN KEY([id_promocion])
REFERENCES [dbo].[Promociones] ([id_promocion])
GO
ALTER TABLE [dbo].[Detalles_Facturas] CHECK CONSTRAINT [FkIdPromo]
GO
ALTER TABLE [dbo].[Detalles_Reservas]  WITH CHECK ADD  CONSTRAINT [FkIdButacaDetalleReserva] FOREIGN KEY([id_butaca])
REFERENCES [dbo].[Butacas] ([id_butaca])
GO
ALTER TABLE [dbo].[Detalles_Reservas] CHECK CONSTRAINT [FkIdButacaDetalleReserva]
GO
ALTER TABLE [dbo].[Detalles_Reservas]  WITH CHECK ADD  CONSTRAINT [FkIdReserva] FOREIGN KEY([id_reserva])
REFERENCES [dbo].[Reservas] ([id_reserva])
GO
ALTER TABLE [dbo].[Detalles_Reservas] CHECK CONSTRAINT [FkIdReserva]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FkCinefa] FOREIGN KEY([id_cine])
REFERENCES [dbo].[Cines] ([id_cine])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FkCinefa]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FkFactIdCliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FkFactIdCliente]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [FkFormPagofa] FOREIGN KEY([id_form_pago])
REFERENCES [dbo].[Formas_de_Pagos] ([id_form_pago])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [FkFormPagofa]
GO
ALTER TABLE [dbo].[Funciones]  WITH CHECK ADD  CONSTRAINT [FkIdPelicula] FOREIGN KEY([id_pelicula])
REFERENCES [dbo].[Peliculas] ([id_pelicula])
GO
ALTER TABLE [dbo].[Funciones] CHECK CONSTRAINT [FkIdPelicula]
GO
ALTER TABLE [dbo].[Funciones]  WITH CHECK ADD  CONSTRAINT [FkIdSala] FOREIGN KEY([id_sala])
REFERENCES [dbo].[Salas] ([id_sala])
GO
ALTER TABLE [dbo].[Funciones] CHECK CONSTRAINT [FkIdSala]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FkIdDepartamento] FOREIGN KEY([id_departamento])
REFERENCES [dbo].[Departamentos] ([id_departamento])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FkIdDepartamento]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FkIdCalificacion] FOREIGN KEY([id_calificacion])
REFERENCES [dbo].[Calificacion] ([id_calificacion])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FkIdCalificacion]
GO
ALTER TABLE [dbo].[Peliculas]  WITH CHECK ADD  CONSTRAINT [FkIdGenero] FOREIGN KEY([id_genero])
REFERENCES [dbo].[Generos] ([id_genero])
GO
ALTER TABLE [dbo].[Peliculas] CHECK CONSTRAINT [FkIdGenero]
GO
ALTER TABLE [dbo].[Promociones]  WITH CHECK ADD  CONSTRAINT [FkTipoPromo] FOREIGN KEY([tipo_promocion])
REFERENCES [dbo].[Tipo_Promociones] ([id_tipo])
GO
ALTER TABLE [dbo].[Promociones] CHECK CONSTRAINT [FkTipoPromo]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FkIdClienteReserva] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FkIdClienteReserva]
GO
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FkIdCine] FOREIGN KEY([id_cine])
REFERENCES [dbo].[Cines] ([id_cine])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FkIdCine]
GO
ALTER TABLE [dbo].[Salas]  WITH CHECK ADD  CONSTRAINT [FkTipoSalasa] FOREIGN KEY([id_tipo_sala])
REFERENCES [dbo].[Tipos_Salas] ([id_tipo_sala])
GO
ALTER TABLE [dbo].[Salas] CHECK CONSTRAINT [FkTipoSalasa]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FkIdTipo] FOREIGN KEY([id_tipo])
REFERENCES [dbo].[user_categories] ([id])
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FkIdTipo]
GO
/****** Object:  StoredProcedure [dbo].[registrarUsuario]    Script Date: 09/11/2015 10:11:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 /******************************************************
 *
 * Procedimientos
 *
 * -- para mas información sobre ENCRYPTBYPASSPHRASE y DECRYPTBYPASSPHRASE ver:
 * -- https://msdn.microsoft.com/es-es/library/ms190357(v=sql.120).aspx y https://msdn.microsoft.com/es-es/library/ms188910(v=sql.120).aspx
 *
 ******************************************************/

-- Este procedimiento registra un usuario
create procedure [dbo].[registrarUsuario]
	@Name nvarchar(30),
	@Pass nvarchar(300),
	@Tipo int
as
begin
    insert into users
    (
        nickname,
        contrasenia,
		id_tipo
    )
    values
    (
        @Name,
        ENCRYPTBYPASSPHRASE('CinesDzPs', @Pass),
		@Tipo
    )
end

GO
/****** Object:  StoredProcedure [dbo].[sp_clientesNoSociosPorPelicula]    Script Date: 09/11/2015 10:11:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Pelicuas por calificacion, cantidad de clientes y entradas.
create procedure [dbo].[sp_clientesNoSociosPorPelicula]
@Pelicula int = 1,
@Socio bit = 0,
@FechaDesde date,
@FechaHasta date
as
if @FechaDesde = NULL
	return
if @FechaHasta = NULL
	return
begin
select p.nombre as 'Título de la Pélicula', p.descripcion as 'Calificacion', count(*) as 'Cantidad de clientes', count(d.id_entrada) 'Cantidad de entradas'
from Facturas as f, Detalles_Facturas as d, Entradas as e, Clientes as c, Funciones as fun, Peliculas as p, Calificacion as cal
where (f.id_factura = d.id_factura) and (d.id_funcion = fun.id_funcion) and (d.id_entrada = e.id_entrada) and
(f.id_cliente = c.id_cliente) and (fun.id_pelicula = p.id_pelicula) and (p.id_calificacion = cal.id_calificacion) and
(f.fecha between @FechaDesde and @FechaHasta) and (p.id_pelicula = @Pelicula)
group by p.nombre, p.descripcion
end;

GO
/****** Object:  StoredProcedure [dbo].[sp_clientesPorPeliculaYButacaEnFecha]    Script Date: 09/11/2015 10:11:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Socios que hayan visto determinada pelicula entre el determinadas fechas, y que se hayan sentado más de tres veces en la misma butaca.
create procedure [dbo].[sp_clientesPorPeliculaYButacaEnFecha]
@Pelicula int = 1,
@socio bit = 0,
@Butaca int = 1,
@FechaDesde date,
@FechaHasta date
as
if @FechaDesde = null
	return
if @FechaHasta = null
	return
begin
select c.nom_cliente as 'NOMBRE', c.ape_cliente as 'APELLIDO', p.nombre as 'PELICULA', s.nombre_sala as 'SALA', b.butaca as 'BUTACA'
from Clientes as c join Facturas as f on c.id_cliente = f.id_cliente
	join Detalles_Facturas as d on f.id_factura = d.id_factura
	join Funciones as fun on d.id_funcion = fun.id_funcion
	join Peliculas as p on fun.id_pelicula = p.id_pelicula
	join Salas as s on fun.id_sala = s.id_sala
	join Butacas as b on s.id_sala = b.id_sala
where (p.id_pelicula = @Pelicula) and (f.fecha between @FechaDesde and @FechaHasta) and (c.socio = @socio)
and 3 < (
	select count(b2.id_butaca)
	from Clientes as c2 join Facturas as f2 on c2.id_cliente = f2.id_cliente
		join Detalles_Facturas as d2 on f2.id_factura = d2.id_factura
		join Funciones as fun2 on d2.id_funcion = fun2.id_funcion
		join Salas as s2 on fun2.id_sala = s2.id_sala
		join Butacas as b2 on s2.id_sala = b2.id_sala
	where b2.id_butaca = @Butaca and c2.id_cliente = c.id_cliente
)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_recaudacionPorGenero]    Script Date: 09/11/2015 10:11:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 /**************************************************************************************
 *
 * Las consultas mejoradas debido a la nva estructura de la base de datos 
 *
 **************************************************************************************/

-- El total recaudado por el genero en el periodo de meses pedido y hasta la fecha.
create procedure [dbo].[sp_recaudacionPorGenero]
@Genero int = 1,
@Meses int = 1
as
select g.genero as 'Genero de pelicula', sum(e.precio - d.monto_promocion - d.monto_beneficio) as 'Totales Generales'
from Facturas as f, Detalles_Facturas as d, Entradas as e, Funciones as fun, Peliculas as p, Generos as g
where (f.id_factura = d.id_factura) and (d.id_entrada = e.id_entrada) 
and (fun.id_funcion = d.id_funcion) and (fun.id_pelicula = p.id_pelicula)
and (g.id_genero = p.id_genero)
and (g.id_genero = @Genero) and (f.fecha between dateadd(month, -@Meses, getdate()) and getdate())
group by g.genero;

GO
/****** Object:  StoredProcedure [dbo].[sp_recaudacionPorPelicula]    Script Date: 09/11/2015 10:11:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- El total recaudado la película en el periodo de meses pedido y hasta la fecha.
create procedure [dbo].[sp_recaudacionPorPelicula]
@Pelicula int = 1,
@Meses int = 1
as
select p.nombre as 'Título de la Película', sum(e.precio - d.monto_promocion - d.monto_beneficio) as 'Totales Generales'
from Facturas as f, Detalles_Facturas as d, Entradas as e, Funciones as fun, Peliculas as p
where (f.id_factura = d.id_factura) and (d.id_entrada = e.id_entrada) 
and (fun.id_funcion = d.id_funcion) and (fun.id_pelicula = p.id_pelicula)
and (p.id_pelicula = @Pelicula) and (f.fecha between dateadd(month, -@Meses, getdate()) and getdate())
group by p.nombre;

GO
/****** Object:  StoredProcedure [dbo].[validarUsuario]    Script Date: 09/11/2015 10:11:31 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Este procedimiento valida un usuario
create procedure [dbo].[validarUsuario]
	@Name nvarchar(30),
	@Pass nvarchar(300),
    @Result bit output,
	@Tipo int output
as
    declare @PassCodificado as nvarchar(300)
    declare @PassDecodificado as nvarchar(50)
begin
	select @Tipo = id_tipo from users where nickname = @Name
    select @PassCodificado = contrasenia from users where nickname = @Name
    set @PassDecodificado = convert(varchar(300),DECRYPTBYPASSPHRASE('CinesDzPs', @PassCodificado))

    if @PassDecodificado = @Pass
        set @Result = 1
    else
        set @Result = 0
end

GO
USE [master]
GO
ALTER DATABASE [CINES] SET  READ_WRITE 
GO
