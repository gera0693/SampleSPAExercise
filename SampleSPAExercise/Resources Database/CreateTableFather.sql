USE [JWTAuthentication]
GO

/****** Object:  Table [dbo].[Father]    Script Date: 6/2/2023 6:07:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Father](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Place] [varchar](50) NULL,
	[Job] [varchar](50) NULL,
	[Contact] [varchar](50) NULL,
 CONSTRAINT [PK_Father] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Father] ADD  CONSTRAINT [DF_Father_Id]  DEFAULT (newid()) FOR [Id]
GO


