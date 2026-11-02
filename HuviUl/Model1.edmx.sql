
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/02/2026 13:08:50
-- Generated from EDMX file: C:\Users\opilane\source\repos\HuviUl\HuviUl\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [HuviringidUL];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'HuviringidSet'
CREATE TABLE [dbo].[HuviringidSet] (
    [HuviringidID] int IDENTITY(1,1) NOT NULL,
    [Nimi] nvarchar(max)  NOT NULL,
    [Vanuseruhm] nvarchar(max)  NOT NULL,
    [Kirjeldus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'RegistreerimineSet'
CREATE TABLE [dbo].[RegistreerimineSet] (
    [RegistreerimineID] int IDENTITY(1,1) NOT NULL,
    [RegistreerimiseKuupaev] nvarchar(max)  NOT NULL,
    [Staatus] nvarchar(max)  NOT NULL,
    [Osaleja_OsalejaID] int  NOT NULL,
    [Huviringid_HuviringidID] int  NOT NULL
);
GO

-- Creating table 'OsalejaSet'
CREATE TABLE [dbo].[OsalejaSet] (
    [OsalejaID] int IDENTITY(1,1) NOT NULL,
    [Eesnimi] nvarchar(max)  NOT NULL,
    [Perekonnanimi] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [HuviringidID] in table 'HuviringidSet'
ALTER TABLE [dbo].[HuviringidSet]
ADD CONSTRAINT [PK_HuviringidSet]
    PRIMARY KEY CLUSTERED ([HuviringidID] ASC);
GO

-- Creating primary key on [RegistreerimineID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [PK_RegistreerimineSet]
    PRIMARY KEY CLUSTERED ([RegistreerimineID] ASC);
GO

-- Creating primary key on [OsalejaID] in table 'OsalejaSet'
ALTER TABLE [dbo].[OsalejaSet]
ADD CONSTRAINT [PK_OsalejaSet]
    PRIMARY KEY CLUSTERED ([OsalejaID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Osaleja_OsalejaID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_OsalejaRegistreerimine]
    FOREIGN KEY ([Osaleja_OsalejaID])
    REFERENCES [dbo].[OsalejaSet]
        ([OsalejaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OsalejaRegistreerimine'
CREATE INDEX [IX_FK_OsalejaRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([Osaleja_OsalejaID]);
GO

-- Creating foreign key on [Huviringid_HuviringidID] in table 'RegistreerimineSet'
ALTER TABLE [dbo].[RegistreerimineSet]
ADD CONSTRAINT [FK_HuviringidRegistreerimine]
    FOREIGN KEY ([Huviringid_HuviringidID])
    REFERENCES [dbo].[HuviringidSet]
        ([HuviringidID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HuviringidRegistreerimine'
CREATE INDEX [IX_FK_HuviringidRegistreerimine]
ON [dbo].[RegistreerimineSet]
    ([Huviringid_HuviringidID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------