USE [master]
GO
/****** Object:  Database [Db_StoreWatch]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE DATABASE [Db_StoreWatch]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Db_StoreWatch', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Db_StoreWatch.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Db_StoreWatch_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Db_StoreWatch_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Db_StoreWatch] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Db_StoreWatch].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Db_StoreWatch] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET ARITHABORT OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Db_StoreWatch] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Db_StoreWatch] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Db_StoreWatch] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Db_StoreWatch] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Db_StoreWatch] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Db_StoreWatch] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Db_StoreWatch] SET  MULTI_USER 
GO
ALTER DATABASE [Db_StoreWatch] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Db_StoreWatch] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Db_StoreWatch] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Db_StoreWatch] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Db_StoreWatch] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Db_StoreWatch] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Db_StoreWatch] SET QUERY_STORE = OFF
GO
USE [Db_StoreWatch]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[CompanyId] [int] NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](30) NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Companies]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Companies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NULL,
	[City] [nvarchar](max) NULL,
	[State] [nvarchar](max) NULL,
	[PostalCode] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderHeaderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[ShippingDate] [datetime2](7) NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[OrderStatus] [nvarchar](max) NULL,
	[PaymentStatus] [nvarchar](max) NULL,
	[TrackingNumber] [nvarchar](max) NULL,
	[Carrier] [nvarchar](max) NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[PaymentDueDate] [datetime2](7) NOT NULL,
	[SessionId] [nvarchar](max) NULL,
	[PaymentIntentId] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NOT NULL,
	[StreetAddress] [nvarchar](max) NOT NULL,
	[City] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
	[PostalCode] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductPrice] [float] NOT NULL,
	[ProductQuantity] [int] NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[CreateDateTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 5/10/2023 9:34:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[ApplicationUserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_ShoppingCarts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230508071532_InitDb', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230508175539_AddOrderTable', N'6.0.15')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230509173144_ComlumDa', N'6.0.15')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0eba06f2-f70b-4c40-b06a-3c5d2ffeb09c', N'Employee', N'EMPLOYEE', N'6df21e93-f575-49a2-bc4f-567fe9979fe7')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'169233cb-7d94-4a4a-b31e-c2b7b7a89a83', N'Customer', N'CUSTOMER', N'3010a7f3-e5c1-45df-b22c-8ae4cb1794ab')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8845f1a4-53f1-40eb-8eff-218a8dc8247d', N'Company', N'COMPANY', N'b9e8a842-770e-4b80-b2d4-d24f6c5d264e')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9c930075-553d-45fa-99f3-8b79d0aae33d', N'Admin', N'ADMIN', N'8c461b37-7ecf-431d-ac96-95c90b26c39a')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'79882400-b77d-475a-9c18-0092faa2196e', N'169233cb-7d94-4a4a-b31e-c2b7b7a89a83')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7b5bdb52-aeb6-49e8-9afe-a3a933eef95c', N'169233cb-7d94-4a4a-b31e-c2b7b7a89a83')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f0436478-49f9-4dd0-bd2b-b3f691a6b034', N'9c930075-553d-45fa-99f3-8b79d0aae33d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'79882400-b77d-475a-9c18-0092faa2196e', N'ApplicationUser', N'wdwdw', N'wddwdw', N'dsdsds', N'sdsdsd', N'sddsds', NULL, N'testvinh@gmail.com', N'TESTVINH@GMAIL.COM', N'testvinh@gmail.com', N'TESTVINH@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDl+FD1VK4kBJ3+NcHFkRhRqkrS2wk3IX7L0MTNR0wuLdkAfW8zfcFQml2OyiUBoAg==', N'FHOEGBDC4CANU4VC6IRQAIKMU6TG73PE', N'179f2f5a-521a-4a5f-af22-413ee335ab98', N'sddssd', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7b5bdb52-aeb6-49e8-9afe-a3a933eef95c', N'ApplicationUser', N'sdsd', N'dssd', N'sđs', N'232', N'2323', NULL, N'testcustomer@gmail.com', N'TESTCUSTOMER@GMAIL.COM', N'testcustomer@gmail.com', N'TESTCUSTOMER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECoLsCHyrXotqIm6XhQzJJCbyPwE+ScB6uU/AnNjEHv4tOVeLXu7OE68sYkKlo7NzA==', N'JN7OB2XVJ3ZIE5MFTALTHLV3A3VGLWTA', N'7f829f21-2a3d-46fa-91e1-872e5dc0e14f', N'123232', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bb805326-b4ee-43b6-be16-c25af567fac0', N'ApplicationUser', N's', N'sdsđs', N'sd', N'sdsd', N'sđ', NULL, N'testuser@gmail.com', N'TESTUSER@GMAIL.COM', N'testuser@gmail.com', N'TESTUSER@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJtGRZhhwDF4SXlK9iSV/1uzrZFUTcbgdMB6+tjtcU0xZRtB1vdFOd1/3lf8V+TX2w==', N'DXRFKX44JAB6PMBXAUNSMJOMRJWUUMJB', N'ec767d67-7c95-487f-bca1-911e7223cd26', N'sđs', 0, 0, CAST(N'2023-05-10T08:04:24.5177080+08:00' AS DateTimeOffset), 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [Name], [StreetAddress], [City], [State], [PostalCode], [CompanyId], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f0436478-49f9-4dd0-bd2b-b3f691a6b034', N'ApplicationUser', N'sdsd', N'sdsd', N'sdsd', N'sdsđs', N'sđssd', NULL, N'testadmin@gmail.com', N'TESTADMIN@GMAIL.COM', N'testadmin@gmail.com', N'TESTADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEE72qvwR/KDgLbwBIj9GjhRfzP/x9B2SipUt6LsEsCCjbANPed4DITU+h3JuKo9X5A==', N'E3L5P66TXOEGBO6U5INMCKKQZCONPGBJ', N'3c8b185e-b074-4675-a0d9-96e8fef78064', N'sdsd', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CategoryName], [DisplayOrder], [CreateDateTime]) VALUES (1, N'Male', 1, CAST(N'2023-05-10T01:43:25.1043814' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [CategoryName], [DisplayOrder], [CreateDateTime]) VALUES (2, N'Female', 1, CAST(N'2023-05-10T01:43:39.2000570' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [CategoryName], [DisplayOrder], [CreateDateTime]) VALUES (3, N' Accessories', 1, CAST(N'2023-05-10T01:44:27.9756724' AS DateTime2))
INSERT [dbo].[Categories] ([Id], [CategoryName], [DisplayOrder], [CreateDateTime]) VALUES (4, N'sdsdsd', 1, CAST(N'2023-05-10T10:38:34.6515156' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 

INSERT [dbo].[Companies] ([Id], [Name], [StreetAddress], [City], [State], [PostalCode], [PhoneNumber]) VALUES (1, N'sdsd', N'ssd', N'ssđs', N'ssds', N'ssd', N'sds')
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (1, 1, 2, 5, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (2, 2, 2, 26, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (3, 3, 2, 26, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (4, 4, 2, 26, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (5, 4, 4, 1, 5040000)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (7, 5, 4, 2, 5040000)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (8, 5, 2, 1, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (10, 6, 4, 3, 5040000)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (11, 6, 2, 1, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (12, 7, 2, 27, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (13, 8, 2, 27, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (15, 10, 2, 7, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (16, 11, 2, 8, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (17, 12, 2, 9, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (19, 14, 2, 10, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (21, 15, 2, 1, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (22, 16, 2, 4, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (23, 17, 2, 1, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (24, 18, 2, 2, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (25, 19, 2, 3, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (27, 20, 2, 1, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (29, 21, 4, 3, 5040000)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (30, 21, 2, 3, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (32, 22, 2, 4, 100)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (33, 23, 10, 2, 1000)
INSERT [dbo].[OrderDetails] ([Id], [OrderHeaderId], [ProductId], [Count], [Price]) VALUES (34, 24, 12, 2, 100)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (1, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T02:25:43.4770498' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 5, N'Cancelled', N'Cancelled', NULL, NULL, CAST(N'2023-05-09T02:26:42.7625510' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a19NFFxYXYw5p6zM9lZQkZR4HxWvbeXvnCgu5tBdGs7ZGnYmvlGjYA8UXX', N'pi_3N5YlfCIt4DsU6SO08naJA6D', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (2, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T02:31:19.6637027' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 26, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a17D0Vhc6pRJpiD16gUBvZ5zMwtWa9CP4xH0o7PwQCusK2yNqSYwriowQV', NULL, N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (3, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T02:31:32.2957826' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 26, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1s8Vlf6jZaPwmnN8SxEDqSzq3WxpPf0LjZGiMd6jeJRSqPJzAzXTOSZRJ', NULL, N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (4, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T02:34:29.8787675' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 5040026, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (5, N'f0436478-49f9-4dd0-bd2b-b3f691a6b034', CAST(N'2023-05-09T02:36:08.1647909' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 10080024, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, N'sdsd', N'sdsd', N'sdsd', N'sdsđs', N'sđssd', N'sdsd')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (6, N'f0436478-49f9-4dd0-bd2b-b3f691a6b034', CAST(N'2023-05-09T02:37:44.1929508' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 15120024, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, N'sdsd', N'sdsd', N'sdsd', N'sdsđs', N'sđssd', N'sdsd')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (7, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T02:39:35.8963691' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 27, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1EoqE5sJb0QypVs2TvXKzKyKkimJtfskNloFn1ljtMZdmw8SvV3FWwdx6', NULL, N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (8, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T02:39:46.5341406' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 27, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a16D5wuhHzd6kR90AEQQS78cuI4nXVc8bLIBIFWXnghzElXeHvURsarvTo', NULL, N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (9, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T10:28:38.8535115' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1DxLwcMgYg1TSVu3PsEI4YnWTm16FBdRIXowekrfrWQrAyXdvzUaD4lJM', NULL, N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (10, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T13:03:10.8539169' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 7, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1kytIEAfFop18B1n7X8ezkFyqVP11uXKHSLIEfl4VJK67BZNArWuKkhAk', NULL, N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (11, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T13:20:19.2804312' AS DateTime2), CAST(N'2023-05-09T22:44:08.2080207' AS DateTime2), 8, N'Shipped', N'Approved', NULL, NULL, CAST(N'2023-05-09T13:20:55.1490431' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1kEI2MeIJqvZjodJ6hfsjEmkTLrO6cWrl7V8bEHaDMYHGZyK6Gcpk5oGi', N'pi_3N5iymCIt4DsU6SO1k5FxaX6', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (12, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T14:22:44.6937629' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 9, N'Cancelled', N'Refunded', NULL, NULL, CAST(N'2023-05-09T14:24:20.9726299' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1pVOxVvRomfMOcpLRelMZYAd1hoxZZM6zoF9cq9JEEri0lr5TNCMtMXUz', N'pi_3N5jxaCIt4DsU6SO0XIHwMWh', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (13, N'7b5bdb52-aeb6-49e8-9afe-a3a933eef95c', CAST(N'2023-05-09T14:28:24.7982053' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 200, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-09T14:29:28.6352629' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1btZihs8XwqlIrSl54ig1jIlpGgF3OCvywWSYt7SfFJhCGec1Ud3w9Cqo', N'pi_3N5k2pCIt4DsU6SO0Z5NRdBy', N'123232', N'dssd', N'sđs', N'232', N'2323', N'sdsd')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (14, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T14:36:44.4241788' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1000, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-09T14:37:21.9914330' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1G5NtKeaIKveEzt24Lp4bLZ6G8FyxB9v9h4xRr2sLUZLVa5m6HN8oVe09', N'pi_3N5kAkCIt4DsU6SO1tSoIbcx', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (15, N'7b5bdb52-aeb6-49e8-9afe-a3a933eef95c', CAST(N'2023-05-09T14:42:17.1424111' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 300, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-09T14:43:00.4433640' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_b1AyoSYk84y4QCoIGH75Dyo8W8bxkimA6YOv0k645rzBqCp5qSexoMvDpz', N'pi_3N5kGCCIt4DsU6SO1dmVokLp', N'123232', N'dssd', N'sđs', N'232', N'2323', N'sdsd')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (16, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T14:47:26.4731996' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 400, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-09T14:47:53.1648335' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1F4C0QDlzBb2eHsU0ok40EFAkpGuXzPRW02PDgidsrO7OU6MpfrscH1mF', N'pi_3N5kKvCIt4DsU6SO1n2CM7CT', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (17, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T14:51:35.9345260' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 100, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-09T14:52:04.1468493' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a18foX8Suf3jm636vo3aESL4Ce0w4BhDUsT6Mmz0lhdAOxNemep9sqCtGx', N'pi_3N5kOyCIt4DsU6SO0Pe7r3lJ', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (18, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T14:53:14.0821063' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 200, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-09T14:53:56.1729466' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1VtOBjpQ5bDYtorDEnqI7Wk5kkgw3H0dTmHrcp7MyUzmlBXDvUHWxum2L', N'pi_3N5kQmCIt4DsU6SO0IaNE21q', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (19, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T15:02:47.9926787' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 400, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-09T15:03:11.3762862' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_b1M1KtOnGnYP6Q2KtxZENeXSmpnJXP4tHo7P4xF7DXBzMXXLT68QxYhKgY', N'pi_3N5kZjCIt4DsU6SO0JbHvD4d', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (20, N'bb805326-b4ee-43b6-be16-c25af567fac0', CAST(N'2023-05-09T15:13:09.9021420' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 100, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-09T15:13:54.8453254' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1NqtIlROqMCMRdfG7BaKHwPEl6D2rECkwdxZF18FubjiB8F99MXpOSDiQ', N'pi_3N5kjtCIt4DsU6SO0LbM8k5P', N'sđs', N'sdsđs', N'sd', N'sdsd', N'sđ', N's')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (21, N'f0436478-49f9-4dd0-bd2b-b3f691a6b034', CAST(N'2023-05-09T22:16:10.1947040' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 15122600, N'Pending', N'Pending', NULL, NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), NULL, NULL, N'sdsd', N'sdsd', N'sdsd', N'sdsđs', N'sđssd', N'sdsd')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (22, N'f0436478-49f9-4dd0-bd2b-b3f691a6b034', CAST(N'2023-05-09T22:17:34.3615737' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 2700, N'Processing', N'Approved', NULL, NULL, CAST(N'2023-05-09T22:17:56.9617743' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_b1UAGAdoS62t0Om6GmO2C7mAL0bkQI5IDZ6nGnaFChGcqSobUc4ADQyVfF', N'pi_3N5rMTCIt4DsU6SO0DnQPZ0R', N'sdsd', N'sdsd', N'sdsd', N'sdsđs', N'sđssd', N'sdsd')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (23, N'f0436478-49f9-4dd0-bd2b-b3f691a6b034', CAST(N'2023-05-10T10:07:29.8503917' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 2000, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-10T10:08:01.1050305' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1slrMAvjvQEM9YLd9uiWfhqjOduTVLgg0ftJ7kzqVK7FYe8swjQhss4qC', N'pi_3N62RdCIt4DsU6SO0p98Nae5', N'sdsd', N'sdsd', N'sdsd', N'sdsđs', N'sđssd', N'sdsd')
INSERT [dbo].[OrderHeaders] ([Id], [ApplicationUserId], [OrderDate], [ShippingDate], [OrderTotal], [OrderStatus], [PaymentStatus], [TrackingNumber], [Carrier], [PaymentDate], [PaymentDueDate], [SessionId], [PaymentIntentId], [PhoneNumber], [StreetAddress], [City], [State], [PostalCode], [Name]) VALUES (24, N'79882400-b77d-475a-9c18-0092faa2196e', CAST(N'2023-05-10T10:45:16.9633350' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 200, N'Approved', N'Approved', NULL, NULL, CAST(N'2023-05-10T10:46:45.2912239' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'cs_test_a1GeRNq2KfW83KqS2e2v78A5agKN0mY8GW11KGKGJAUvmlAmWzT80WJlTe', N'pi_3N6335CIt4DsU6SO1WmnuRnY', N'sddssd', N'wddwdw', N'dsdsds', N'sdsdsd', N'sddsds', N'wdwdw')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (2, N'ĐỒNG HỒ CASIO MTP-1374L-1AVDF NAM PIN DÂY DA', N'Đồng hồ nam CASIO MTP-1374L-1AVDF thay cho thiết kế cửa sổ lich cổ điển là thiết kế mới lịch ngày và thứ đều sử dụng đồng hồ kim mang tính hiện đại, trẻ trung. Nổi bật trên nền mặt số đen là thiết kế phá cách kim giây đỏ làm điểm nhấn nổi bật. Dây đeo bằng da tạo vân cá sấu nổi bật với hai đường chỉ may trắng tinh xảo.', 1500, 89, N'\images\product\ae775714-a7a3-4c78-ba38-a488f53db114.jpg', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (4, N'ĐỒNG HỒ LOUIS ERARD 13900AA05.BDC102 NAM PIN DÂY DA', N'Đây là dòng sản phẩm tuyệt vời cho những người đang tìm kiếm chiếc đồng hồ được thiết kế riêng mang đầy đủ sự “chất” Vintage cho đến hiện nay, đó là “chất cổ điển” và chỉ là “cổ điển” tinh khiết.', 1000, 100, N'\images\product\759d6d42-42e1-4e75-9651-d5c4f720a4b8.jpg', 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (5, N'ĐỒNG HỒ CITIZEN AU1080-20A NAM ECO-DRIVE DÂY VẢI', N'Đồng hồ nam Citizen AU1080-20A nổi bật Pin sử dụng công nghệ hiện đại Eco-Drive (Năng Lượng Ánh Sáng), với thiết kế theo phong cách thời trang với dây đeo chất liệu bằng vải tông màu kem trẻ trung.', 2000, 100, N'\images\product\cc491258-8bc0-4caf-86dc-f4b3c4b3b4d5.jpg', 1, CAST(N'2023-05-10T01:46:12.4088085' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (6, N'ĐỒNG HỒ OLYM PIANUS OP99141-71AGSK TRẮNG NAM TỰ ĐỘNG DÂY INOX', N'Mẫu đồng hồ Olym Pianus OP99141-71AGSK vẻ ngoài tinh tế sang trọng ấn tượng với kiểu thiết kế độc đáo đến từ ô chân kính phô diễn ra 1 phần trải nghiệm hoạt động của bộ máy cơ đầy nam tính.', 1200, 100, N'\images\product\0f1f1bbe-0471-4397-a758-31a4e0073d42.jpg', 1, CAST(N'2023-05-10T09:41:46.6498652' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (7, N'ĐỒNG HỒ CASIO GA-100DE-2ADR NỮ PIN DÂY NHỰA', N'Mẫu G-Shock GA-100DE-2ADR với vẻ ngoài cá tính thích hợp cho những bạn trẻ năng động, phù hợp cho những chuyến đi phượt ấn tượng với khả năng chịu nước lên đến 20ATM, với đồng hồ điện tử hiện thị đa chức năng tiện ích.', 1400, 100, N'\images\product\eec1f0a6-1bec-454e-aeea-dfdcd24ec215.jpg', 2, CAST(N'2023-05-10T09:42:57.1638783' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (8, N'ĐỒNG HỒ CASIO LA670WL-1BDF NỮ PIN DÂY DA', N'Mẫu đồng hồ Casio LA670WL-1BDF  với thiết kế bộ máy nhỏ gọn tạo nên vẻ ngoài thanh mảnh nữ tính, vỏ máy tông màu vàng phối cùng mẫu dây đeo kim loại đen tăng thêm vẻ đẹp thời trang.', 1100, 100, N'\images\product\adc88cd7-e144-4aaa-b90d-383a7db0573f.jpg', 2, CAST(N'2023-05-10T09:44:01.7750131' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (9, N'ĐỒNG HỒ OGIVAL OG385-032LW-T NỮ PIN DÂY INOX', N'Vẻ ngoài trẻ trung với phần mặt số được phối tông nền trắng có họa tiết thời trang nam tính với vỏ máy dày dặn chứa đựng một trải nghiệm nam tính từ bộ may cơ là yếu tố tạo nên mẫu đồng hồ nam Ogival.', 1300, 100, N'\images\product\c026b1ec-bddf-414a-b3ad-a935dffc8387.jpg', 1, CAST(N'2023-05-10T09:45:54.9942501' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (10, N'ĐỒNG HỒ DANIEL WELLINGTON DW00500001 NỮ PIN DÂY INOX', N'Mẫu đồng hồ nữ Daniel Wellington DW00500001 với nét đặc trưng giản dị đến từ thương hiệu Daniel Wellington với thiết kế bộ máy nhỏ gọn thanh mảnh kết hợp cùng mẫu dây đeo chất liệu vải mang phong cách trẻ trung.', 1000, 98, N'\images\product\dc2b1812-4b6c-4c75-baa4-a9c2c30fa770.jpg', 2, CAST(N'2023-05-10T09:46:59.5367218' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (11, N'HIRSCH MARINER', N'Mẫu dây da Hirsch MARINER mẫu dây không bao giờ lỗi mốt, bắt mắt với thiết kế thể thao nhưng vẫn mềm mại', 1400, 100, N'\images\product\500a3f0a-c493-41ae-be0b-9e11adf582be.jpg', 3, CAST(N'2023-05-10T09:48:48.7291744' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (12, N'DÂY DA ZRC 654 TASMAN', N'Dây da 654 là sản phẩm sử dụng da bê mờ, lớp đệm dày, công nghệ sản xuất “French Rembordé”.Dây da 654 là sản phẩm sử dụng da bê mờ, lớp đệm dày, công nghệ sản xuất “French Rembordé', 100, 98, N'\images\product\0b19023c-46ac-433d-b0ea-fd81d0a4292a.jpg', 3, CAST(N'2023-05-10T09:56:12.7855724' AS DateTime2))
INSERT [dbo].[Products] ([Id], [ProductName], [ProductDescription], [ProductPrice], [ProductQuantity], [ProductImage], [CategoryId], [CreateDateTime]) VALUES (13, N'sdsd', N'1', 0, 0, N'\images\product\2c9968e3-28d3-414c-b77e-5c512e912d2a.jpg', 1, CAST(N'2023-05-10T10:33:34.1686552' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ShoppingCarts] ON 

INSERT [dbo].[ShoppingCarts] ([Id], [ProductId], [Count], [ApplicationUserId]) VALUES (27, 11, 1, N'f0436478-49f9-4dd0-bd2b-b3f691a6b034')
INSERT [dbo].[ShoppingCarts] ([Id], [ProductId], [Count], [ApplicationUserId]) VALUES (28, 4, 1, N'f0436478-49f9-4dd0-bd2b-b3f691a6b034')
INSERT [dbo].[ShoppingCarts] ([Id], [ProductId], [Count], [ApplicationUserId]) VALUES (29, 7, 1, N'f0436478-49f9-4dd0-bd2b-b3f691a6b034')
SET IDENTITY_INSERT [dbo].[ShoppingCarts] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_CompanyId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_CompanyId] ON [dbo].[AspNetUsers]
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_OrderHeaderId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderHeaderId] ON [dbo].[OrderDetails]
(
	[OrderHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDetails_ProductId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_ProductId] ON [dbo].[OrderDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OrderHeaders_ApplicationUserId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderHeaders_ApplicationUserId] ON [dbo].[OrderHeaders]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ShoppingCarts_ApplicationUserId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ApplicationUserId] ON [dbo].[ShoppingCarts]
(
	[ApplicationUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingCarts_ProductId]    Script Date: 5/10/2023 9:34:55 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingCarts_ProductId] ON [dbo].[ShoppingCarts]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreateDateTime]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Companies_CompanyId] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Companies] ([Id])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Companies_CompanyId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId] FOREIGN KEY([OrderHeaderId])
REFERENCES [dbo].[OrderHeaders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[OrderHeaders]  WITH CHECK ADD  CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderHeaders] CHECK CONSTRAINT [FK_OrderHeaders_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId] FOREIGN KEY([ApplicationUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers_ApplicationUserId]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_Products_ProductId]
GO
USE [master]
GO
ALTER DATABASE [Db_StoreWatch] SET  READ_WRITE 
GO
