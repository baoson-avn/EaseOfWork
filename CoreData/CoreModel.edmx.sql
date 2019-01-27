
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/28/2019 01:15:44
-- Generated from EDMX file: C:\2019\Sources\EaseOfWork\CoreData\CoreModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DepartmentStaff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_DepartmentStaff];
GO
IF OBJECT_ID(N'[dbo].[FK_JobTitle_Staff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_JobTitle_Staff];
GO
IF OBJECT_ID(N'[dbo].[FK_Staff_CreatedByStaff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_Staff_CreatedByStaff];
GO
IF OBJECT_ID(N'[dbo].[FK_StaffStaff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_StaffStaff];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentStaff1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Departments] DROP CONSTRAINT [FK_DepartmentStaff1];
GO
IF OBJECT_ID(N'[dbo].[FK_JobTitleStaff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobTitles] DROP CONSTRAINT [FK_JobTitleStaff];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentStaff2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Departments] DROP CONSTRAINT [FK_DepartmentStaff2];
GO
IF OBJECT_ID(N'[dbo].[FK_JobTitleStaff1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[JobTitles] DROP CONSTRAINT [FK_JobTitleStaff1];
GO
IF OBJECT_ID(N'[dbo].[FK_AvatarStaff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_AvatarStaff];
GO
IF OBJECT_ID(N'[dbo].[FK_PermissionStaff]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Staffs] DROP CONSTRAINT [FK_PermissionStaff];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Staffs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Staffs];
GO
IF OBJECT_ID(N'[dbo].[Departments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departments];
GO
IF OBJECT_ID(N'[dbo].[JobTitles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[JobTitles];
GO
IF OBJECT_ID(N'[dbo].[Avatars]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Avatars];
GO
IF OBJECT_ID(N'[dbo].[Permissions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Permissions];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Staffs'
CREATE TABLE [dbo].[Staffs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Guid] uniqueidentifier  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [OfficePhone] nvarchar(max)  NOT NULL,
    [CellPhone] nvarchar(max)  NOT NULL,
    [Address] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [DepartmentId] int  NOT NULL,
    [DepartmentGuid] uniqueidentifier  NOT NULL,
    [JobTitleId] int  NOT NULL,
    [JobTitleGuid] uniqueidentifier  NOT NULL,
    [LastLogin] datetime  NULL,
    [LastActive] datetime  NULL,
    [CreatedByStaffId] int  NULL,
    [CreatedByStaffGuid] uniqueidentifier  NULL,
    [ModifiedByStaffId] int  NULL,
    [ModifiedByStaffGuid] uniqueidentifier  NULL,
    [CreatedOn] datetime  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [AvatarId] int  NOT NULL,
    [AvatarGuid] uniqueidentifier  NOT NULL,
    [PermissionId] int  NOT NULL,
    [PermissionGuid] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Guid] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CreatedByStaffId] int  NULL,
    [CreatedByStaffGuid] uniqueidentifier  NULL,
    [CreatedOn] datetime  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [ModifiedByStaffId] int  NULL,
    [ModifiedByStaffGuid] uniqueidentifier  NULL
);
GO

-- Creating table 'JobTitles'
CREATE TABLE [dbo].[JobTitles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Guid] uniqueidentifier  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [ModifiedOn] datetime  NULL,
    [CreatedByStaffId] int  NULL,
    [CreatedByStaffGuid] uniqueidentifier  NULL,
    [ModifiedByStaffId] int  NULL,
    [ModifiedByStaffGuid] uniqueidentifier  NULL
);
GO

-- Creating table 'Avatars'
CREATE TABLE [dbo].[Avatars] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Guid] uniqueidentifier  NOT NULL,
    [AvatarContent] varbinary(max)  NOT NULL,
    [CreatedOn] datetime  NOT NULL,
    [ModifiedOn] datetime  NULL
);
GO

-- Creating table 'Permissions'
CREATE TABLE [dbo].[Permissions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Guid] uniqueidentifier  NOT NULL,
    [IsAdmin] bit  NOT NULL,
    [AddProject] bit  NOT NULL,
    [ManageUsers] bit  NOT NULL,
    [GiveAccess] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id], [Guid] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [PK_Staffs]
    PRIMARY KEY CLUSTERED ([Id], [Guid] ASC);
GO

-- Creating primary key on [Id], [Guid] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([Id], [Guid] ASC);
GO

-- Creating primary key on [Id], [Guid] in table 'JobTitles'
ALTER TABLE [dbo].[JobTitles]
ADD CONSTRAINT [PK_JobTitles]
    PRIMARY KEY CLUSTERED ([Id], [Guid] ASC);
GO

-- Creating primary key on [Id], [Guid] in table 'Avatars'
ALTER TABLE [dbo].[Avatars]
ADD CONSTRAINT [PK_Avatars]
    PRIMARY KEY CLUSTERED ([Id], [Guid] ASC);
GO

-- Creating primary key on [Id], [Guid] in table 'Permissions'
ALTER TABLE [dbo].[Permissions]
ADD CONSTRAINT [PK_Permissions]
    PRIMARY KEY CLUSTERED ([Id], [Guid] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DepartmentId], [DepartmentGuid] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_DepartmentStaff]
    FOREIGN KEY ([DepartmentId], [DepartmentGuid])
    REFERENCES [dbo].[Departments]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentStaff'
CREATE INDEX [IX_FK_DepartmentStaff]
ON [dbo].[Staffs]
    ([DepartmentId], [DepartmentGuid]);
GO

-- Creating foreign key on [JobTitleId], [JobTitleGuid] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_JobTitle_Staff]
    FOREIGN KEY ([JobTitleId], [JobTitleGuid])
    REFERENCES [dbo].[JobTitles]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobTitle_Staff'
CREATE INDEX [IX_FK_JobTitle_Staff]
ON [dbo].[Staffs]
    ([JobTitleId], [JobTitleGuid]);
GO

-- Creating foreign key on [CreatedByStaffId], [CreatedByStaffGuid] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_Staff_CreatedByStaff]
    FOREIGN KEY ([CreatedByStaffId], [CreatedByStaffGuid])
    REFERENCES [dbo].[Staffs]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Staff_CreatedByStaff'
CREATE INDEX [IX_FK_Staff_CreatedByStaff]
ON [dbo].[Staffs]
    ([CreatedByStaffId], [CreatedByStaffGuid]);
GO

-- Creating foreign key on [ModifiedByStaffId], [ModifiedByStaffGuid] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_StaffStaff]
    FOREIGN KEY ([ModifiedByStaffId], [ModifiedByStaffGuid])
    REFERENCES [dbo].[Staffs]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_StaffStaff'
CREATE INDEX [IX_FK_StaffStaff]
ON [dbo].[Staffs]
    ([ModifiedByStaffId], [ModifiedByStaffGuid]);
GO

-- Creating foreign key on [CreatedByStaffId], [CreatedByStaffGuid] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [FK_DepartmentStaff1]
    FOREIGN KEY ([CreatedByStaffId], [CreatedByStaffGuid])
    REFERENCES [dbo].[Staffs]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentStaff1'
CREATE INDEX [IX_FK_DepartmentStaff1]
ON [dbo].[Departments]
    ([CreatedByStaffId], [CreatedByStaffGuid]);
GO

-- Creating foreign key on [CreatedByStaffId], [CreatedByStaffGuid] in table 'JobTitles'
ALTER TABLE [dbo].[JobTitles]
ADD CONSTRAINT [FK_JobTitleStaff]
    FOREIGN KEY ([CreatedByStaffId], [CreatedByStaffGuid])
    REFERENCES [dbo].[Staffs]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobTitleStaff'
CREATE INDEX [IX_FK_JobTitleStaff]
ON [dbo].[JobTitles]
    ([CreatedByStaffId], [CreatedByStaffGuid]);
GO

-- Creating foreign key on [ModifiedByStaffId], [ModifiedByStaffGuid] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [FK_DepartmentStaff2]
    FOREIGN KEY ([ModifiedByStaffId], [ModifiedByStaffGuid])
    REFERENCES [dbo].[Staffs]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentStaff2'
CREATE INDEX [IX_FK_DepartmentStaff2]
ON [dbo].[Departments]
    ([ModifiedByStaffId], [ModifiedByStaffGuid]);
GO

-- Creating foreign key on [ModifiedByStaffId], [ModifiedByStaffGuid] in table 'JobTitles'
ALTER TABLE [dbo].[JobTitles]
ADD CONSTRAINT [FK_JobTitleStaff1]
    FOREIGN KEY ([ModifiedByStaffId], [ModifiedByStaffGuid])
    REFERENCES [dbo].[Staffs]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_JobTitleStaff1'
CREATE INDEX [IX_FK_JobTitleStaff1]
ON [dbo].[JobTitles]
    ([ModifiedByStaffId], [ModifiedByStaffGuid]);
GO

-- Creating foreign key on [AvatarId], [AvatarGuid] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_AvatarStaff]
    FOREIGN KEY ([AvatarId], [AvatarGuid])
    REFERENCES [dbo].[Avatars]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AvatarStaff'
CREATE INDEX [IX_FK_AvatarStaff]
ON [dbo].[Staffs]
    ([AvatarId], [AvatarGuid]);
GO

-- Creating foreign key on [PermissionId], [PermissionGuid] in table 'Staffs'
ALTER TABLE [dbo].[Staffs]
ADD CONSTRAINT [FK_PermissionStaff]
    FOREIGN KEY ([PermissionId], [PermissionGuid])
    REFERENCES [dbo].[Permissions]
        ([Id], [Guid])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PermissionStaff'
CREATE INDEX [IX_FK_PermissionStaff]
ON [dbo].[Staffs]
    ([PermissionId], [PermissionGuid]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------