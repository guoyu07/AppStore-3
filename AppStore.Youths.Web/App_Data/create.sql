USE [AppStore]
GO
/****** Object:  Table [dbo].[User]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL,
	[UserAuthorUrl] [text] NULL,
	[UserCall] [varchar](50) NULL,
	[UserEmail] [varchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Manager](
	[Id] [int] NOT NULL,
	[ManagerName] [varchar](50) NULL,
	[ManagerPassword] [varchar](50) NULL,
	[ManagerSex] [bit] NULL,
	[ManagerCall] [varchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Manager] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BbsRepley]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BbsRepley](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[BbsCommentId] [int] NULL,
	[BbsRepleyDetail] [text] NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_BbsRepley] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BbsPost]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BbsPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[BbsPostTitle] [varchar](50) NOT NULL,
	[BbsPostDetail] [text] NOT NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_BbsPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BbsPlate]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BbsPlate](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BbsPlateName] [varchar](50) NULL,
	[BbsPlateDesribe] [varchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_BbsPlate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BbsComment]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BbsComment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[BbsPostId] [int] NULL,
	[BbsCommentDetail] [text] NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_BbsComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppType]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppTypeName] [varchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AppType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AppThemeDetail]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppThemeDetail](
	[Id] [int] NOT NULL,
	[AppId] [int] NULL,
	[AppThemeId] [int] NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AppThemeDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppTheme]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppTheme](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppThemeName] [varchar](50) NULL,
	[AppThemeDetail] [text] NULL,
	[AppThemeThumb] [text] NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AppTheme] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AppScreenShot]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppScreenShot](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppId] [int] NULL,
	[AppScreenShotUrl] [text] NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AppScreenShot] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppComment]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppComment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppId] [int] NULL,
	[UserId] [int] NULL,
	[AppCommentDetail] [text] NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AppComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppClass]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AppClass](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppClassName] [varchar](50) NULL,
	[AppClassImg] [varchar](50) NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AppClass] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[App]    Script Date: 01/05/2015 08:52:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[App](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppName] [varchar](50) NOT NULL,
	[AppTypeId] [int] NOT NULL,
	[AppClassId] [int] NOT NULL,
	[AppIsFree] [bit] NULL,
	[AppIsNew] [bit] NULL,
	[AppIsRecommended] [bit] NULL,
	[AppDeveloper] [varchar](50) NULL,
	[AppVersion] [varchar](50) NULL,
	[AppDownload] [int] NULL,
	[AppSize] [varchar](50) NULL,
	[AppIntroduce] [text] NULL,
	[AppDescribe] [nchar](10) NULL,
	[AddTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_App] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_App_AppIsFree]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF_App_AppIsFree]  DEFAULT ((0)) FOR [AppIsFree]
GO
/****** Object:  Default [DF_App_AppIsNew]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF_App_AppIsNew]  DEFAULT ((0)) FOR [AppIsNew]
GO
/****** Object:  Default [DF_App_AppIsRecommended]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF_App_AppIsRecommended]  DEFAULT ((0)) FOR [AppIsRecommended]
GO
/****** Object:  Default [DF_App_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF_App_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_App_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[App] ADD  CONSTRAINT [DF_App_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_AppClass_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppClass] ADD  CONSTRAINT [DF_AppClass_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_AppClass_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppClass] ADD  CONSTRAINT [DF_AppClass_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_AppComment_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppComment] ADD  CONSTRAINT [DF_AppComment_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_AppComment_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppComment] ADD  CONSTRAINT [DF_AppComment_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_AppScreenShot_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppScreenShot] ADD  CONSTRAINT [DF_AppScreenShot_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_AppScreenShot_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppScreenShot] ADD  CONSTRAINT [DF_AppScreenShot_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_AppTheme_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppTheme] ADD  CONSTRAINT [DF_AppTheme_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_AppTheme_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppTheme] ADD  CONSTRAINT [DF_AppTheme_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_AppThemeDetail_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppThemeDetail] ADD  CONSTRAINT [DF_AppThemeDetail_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_AppType_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppType] ADD  CONSTRAINT [DF_AppType_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_AppType_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppType] ADD  CONSTRAINT [DF_AppType_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_BbsComment_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[BbsComment] ADD  CONSTRAINT [DF_BbsComment_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_BbsComment_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[BbsComment] ADD  CONSTRAINT [DF_BbsComment_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_BbsPlate_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[BbsPlate] ADD  CONSTRAINT [DF_BbsPlate_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_BbsPlate_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[BbsPlate] ADD  CONSTRAINT [DF_BbsPlate_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_BbsPost_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[BbsPost] ADD  CONSTRAINT [DF_BbsPost_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_BbsPost_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[BbsPost] ADD  CONSTRAINT [DF_BbsPost_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_BbsRepley_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[BbsRepley] ADD  CONSTRAINT [DF_BbsRepley_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_BbsRepley_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[BbsRepley] ADD  CONSTRAINT [DF_BbsRepley_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_Manager_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[Manager] ADD  CONSTRAINT [DF_Manager_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_Manager_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[Manager] ADD  CONSTRAINT [DF_Manager_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_User_AddTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_AddTime]  DEFAULT (getdate()) FOR [AddTime]
GO
/****** Object:  Default [DF_User_UpdateTime]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  ForeignKey [FK_AppClass_AppClass]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppClass]  WITH CHECK ADD  CONSTRAINT [FK_AppClass_AppClass] FOREIGN KEY([Id])
REFERENCES [dbo].[AppClass] ([Id])
GO
ALTER TABLE [dbo].[AppClass] CHECK CONSTRAINT [FK_AppClass_AppClass]
GO
/****** Object:  ForeignKey [FK_AppComment_AppComment]    Script Date: 01/05/2015 08:52:30 ******/
ALTER TABLE [dbo].[AppComment]  WITH CHECK ADD  CONSTRAINT [FK_AppComment_AppComment] FOREIGN KEY([Id])
REFERENCES [dbo].[AppComment] ([Id])
GO
ALTER TABLE [dbo].[AppComment] CHECK CONSTRAINT [FK_AppComment_AppComment]
GO
