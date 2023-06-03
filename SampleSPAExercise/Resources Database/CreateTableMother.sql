USE [JWTAuthentication]
GO

/****** Object:  Table [dbo].[Mother]    Script Date: 6/2/2023 6:08:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Mother](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Place] [varchar](50) NULL,
	[Job] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
 CONSTRAINT [PK_Mother] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mother] ADD  CONSTRAINT [DF_Mother_Id]  DEFAULT (newid()) FOR [Id]
GO


