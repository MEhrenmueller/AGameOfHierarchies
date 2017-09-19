/* A Game of Hierarchies
 * Prepare POI - Pre-SQL Server 2017
 */

/*
Copyright (c) 2017 Markus Ehrenmüller-Jensen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

use master
go

--DROP DATABASE [AGameOfHierarchies]
--CREATE DATABASE [AGameOfHierarchies]
GO

USE [AGameOfHierarchies]
GO

IF OBJECT_ID(N'dbo.POI', N'U') IS NOT NULL DROP TABLE dbo.POI;
IF OBJECT_ID(N'dbo.Region', N'U') IS NOT NULL DROP TABLE dbo.Region;
IF OBJECT_ID(N'dbo.Continent', N'U') IS NOT NULL DROP TABLE dbo.Continent;
IF OBJECT_ID(N'dbo.World', N'U') IS NOT NULL DROP TABLE dbo.World;
GO
CREATE TABLE dbo.World (
	ID				int NOT NULL identity(1,1),
	WorldName		nvarchar(50)
)
ALTER TABLE dbo.World ADD CONSTRAINT PK_World PRIMARY KEY NONCLUSTERED(ID);

GO
CREATE TABLE dbo.Continent (
	ID				int NOT NULL identity(1,1),
	ContinentName	nvarchar(50),
	WorldID			int
)
ALTER TABLE dbo.Continent ADD CONSTRAINT PK_Continent PRIMARY KEY NONCLUSTERED(ID);
ALTER TABLE dbo.Continent
	ADD CONSTRAINT FK_Continent_World
		FOREIGN KEY(WorldID) REFERENCES dbo.World(ID);

GO
CREATE TABLE dbo.Region (
	ID				int NOT NULL identity(1,1),
	RegionName		nvarchar(50),
	ContinentID		int
)
ALTER TABLE dbo.Region ADD CONSTRAINT PK_Region PRIMARY KEY NONCLUSTERED(ID);
ALTER TABLE dbo.Region
  ADD CONSTRAINT FK_Region_Continent
    FOREIGN KEY(ContinentID) REFERENCES dbo.Continent(ID);

GO
CREATE TABLE dbo.POI (
	ID				int NOT NULL identity(1,1),
	POIName			nvarchar(50),
	RegionName		nvarchar(50),
	ContinentName	nvarchar(50),
	WorldName		nvarchar(50),
	RegionID		int,
	ContinentID		int,
	WorldID			int
)
ALTER TABLE dbo.POI ADD CONSTRAINT PK_POI PRIMARY KEY NONCLUSTERED(ID);
ALTER TABLE dbo.POI
	ADD CONSTRAINT FK_POI_Region
		FOREIGN KEY(RegionID) REFERENCES dbo.Region(ID);
ALTER TABLE dbo.POI
	ADD CONSTRAINT FK_POI_Continent
		FOREIGN KEY(ContinentID) REFERENCES dbo.Continent(ID);
ALTER TABLE dbo.POI
	ADD CONSTRAINT FK_POI_World
		FOREIGN KEY(WorldID) REFERENCES dbo.World(ID);

GO

CREATE OR ALTER PROCEDURE dbo.AddPOI (
	@POIName		nvarchar(50), 
	@RegionName		nvarchar(50), 
	@ContinentName	nvarchar(50), 
	@WorldName		nvarchar(50)
)
AS
BEGIN

DECLARE
	@POIID			int, 
	@RegionID		int, 
	@ContinentID	int, 
	@WorldID		int

--Normalized
IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.World WHERE [WorldName]=@WorldName)
	INSERT INTO dbo.World (WorldName)
	VALUES	(@WorldName)
SELECT @WorldID = ID FROM dbo.World WHERE WorldName=@WorldName;

IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.Continent WHERE ContinentName=@ContinentName)
	INSERT INTO dbo.Continent (ContinentName, WorldID)
	VALUES	(@ContinentName, @WorldID)
SELECT @ContinentID = ID FROM dbo.Continent WHERE ContinentName=@ContinentName;

IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.Region WHERE RegionName=@RegionName)
	INSERT INTO dbo.Region (RegionName, ContinentID)
	VALUES	(@RegionName, @ContinentID)
SELECT @RegionID = ID FROM dbo.Region WHERE RegionName=@RegionName;

--Normalized & Denormalized
IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.POI WHERE POIName=@POIName)
	INSERT INTO dbo.POI (POIName, RegionName, ContinentName, WorldName, RegionID, ContinentID, WorldID)
	VALUES	(@POIName, @RegionName, @ContinentName, @WorldName, @RegionID, @ContinentID, @WorldID)


END
GO

CREATE OR ALTER FUNCTION [dbo].[BinaryToInteger]
--http://improve.dk/converting-between-base-2-10-and-16-in-t-sql/
(
	@Input varchar(255)
)
RETURNS bigint
AS
BEGIN

	DECLARE @Cnt tinyint = 1
	DECLARE @Len tinyint = LEN(@Input)
	DECLARE @Output bigint = CAST(SUBSTRING(@Input, @Len, 1) AS bigint)

	WHILE(@Cnt < @Len) BEGIN
		SET @Output = @Output + POWER(CAST(SUBSTRING(@Input, @Len - @Cnt, 1) * 2 AS bigint), @Cnt)

		SET @Cnt = @Cnt + 1
	END

	RETURN @Output	

END
