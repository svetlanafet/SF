CREATE TABLE [dbo].[a_emp] (
  [id] [int] NOT NULL,
  [name] [varchar](200) NULL,
  [dept] [int] NULL,
  [c1] [nchar](10) NULL,
  PRIMARY KEY CLUSTERED ([id])
)
ON [PRIMARY]
GO

SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE TRIGGER [trigger1]
ON [dbo].[a_emp]
AFTER UPDATE
AS
RAISERROR ('insert', 18, 0);
GO

ALTER TABLE [dbo].[a_emp]
  ADD CONSTRAINT [FK__a_emp__dept__73852659] FOREIGN KEY ([dept]) REFERENCES [dbo].[b_dept] ([id])
GO

DISABLE TRIGGER [dbo].[trigger1] ON [dbo].[a_emp]
GO