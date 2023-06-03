USE [JWTAuthentication]
GO

/****** Object:  Table [dbo].[StudentLateness]    Script Date: 6/2/2023 6:06:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StudentLateness](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Grade] [varchar](50) NOT NULL,
	[IdTeacher] [uniqueidentifier] NOT NULL,
	[IdMother] [uniqueidentifier] NULL,
	[IdFather] [uniqueidentifier] NULL,
	[IdSibling] [uniqueidentifier] NULL,
	[Place] [varchar](50) NULL,
	[NumbersOfLate] [int] NULL,
	[Street] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Week] [int] NULL,
	[Month] [int] NULL,
	[CreatedDateRegister] [datetime2](7) NULL,
 CONSTRAINT [PK_StudentLateness] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[StudentLateness] ADD  CONSTRAINT [DF_StudentLateness_Id]  DEFAULT (newid()) FOR [Id]
GO

ALTER TABLE [dbo].[StudentLateness] ADD  CONSTRAINT [DF_StudentLateness_CreatedDateRegister]  DEFAULT (getdate()) FOR [CreatedDateRegister]
GO

ALTER TABLE [dbo].[StudentLateness]  WITH CHECK ADD  CONSTRAINT [FK_StudentLateness_Father] FOREIGN KEY([IdFather])
REFERENCES [dbo].[Father] ([Id])
GO

ALTER TABLE [dbo].[StudentLateness] CHECK CONSTRAINT [FK_StudentLateness_Father]
GO

ALTER TABLE [dbo].[StudentLateness]  WITH CHECK ADD  CONSTRAINT [FK_StudentLateness_Mother] FOREIGN KEY([IdMother])
REFERENCES [dbo].[Mother] ([Id])
GO

ALTER TABLE [dbo].[StudentLateness] CHECK CONSTRAINT [FK_StudentLateness_Mother]
GO

ALTER TABLE [dbo].[StudentLateness]  WITH CHECK ADD  CONSTRAINT [FK_StudentLateness_Sibling] FOREIGN KEY([IdSibling])
REFERENCES [dbo].[Sibling] ([Id])
GO

ALTER TABLE [dbo].[StudentLateness] CHECK CONSTRAINT [FK_StudentLateness_Sibling]
GO

ALTER TABLE [dbo].[StudentLateness]  WITH CHECK ADD  CONSTRAINT [FK_StudentLateness_Teacher] FOREIGN KEY([IdTeacher])
REFERENCES [dbo].[Teacher] ([Id])
GO

ALTER TABLE [dbo].[StudentLateness] CHECK CONSTRAINT [FK_StudentLateness_Teacher]
GO


