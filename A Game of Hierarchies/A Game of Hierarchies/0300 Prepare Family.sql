/* A Game of Hierarchies
 * Prepare Family - Pre SQL Server 2017
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

use [AGameOfHierarchies]
go

IF OBJECT_ID(N'dbo.Family', N'U') IS NOT NULL DROP TABLE dbo.Family;
GO
CREATE TABLE dbo.Family (
	ID			int NOT NULL,
	FirstName	varchar(50),
	LastName	varchar(50),
	Titles		varchar(255),
	Sex			char(1),
	FatherID	int,
	MotherID	int,
	FatherLvl	int,
	MotherLvl	int,
	FatherPath	varchar(255),
	MotherPath	varchar(255),
	FatherHID	hierarchyid,
	MotherHID	hierarchyid,
	CHECK (ID <> FatherID), --no one can be his own father
	CHECK (ID <> MotherID)  --no one can be his own mother
)
GO
--depth-first & breadth-first indexes
CREATE UNIQUE CLUSTERED INDEX idx_Family_depth_first_Father ON dbo.Family(FatherPath);
CREATE UNIQUE INDEX idx_Family_depth_first_Mother ON dbo.Family(MotherPath);
CREATE UNIQUE INDEX idx_Family_breadth_first_Father ON dbo.Family(FatherLvl, FatherPath);
CREATE UNIQUE INDEX idx_Family_breadth_first_Mother ON dbo.Family(MotherLvl, MotherPath);
ALTER TABLE dbo.Family 
	ADD CONSTRAINT PK_Family 
		PRIMARY KEY NONCLUSTERED(ID);

IF OBJECT_ID(N'dbo.AddFamily', N'P') IS NOT NULL DROP PROC dbo.AddFamily;
GO
CREATE PROC dbo.AddFamily
	@ID			int,
	@FirstName	varchar(50),
	@LastName	varchar(50),
	@Titles		varchar(255),
	@Sex		char(1),
	@FatherID	int,
	@MotherID	int
AS

SET NOCOUNT ON;

DECLARE
  @FatherPath			varchar(255),
  @MotherPath			varchar(255),
  @FatherHID			AS HIERARCHYID,
  @MotherHID			AS HIERARCHYID,
  @FathersHID			AS HIERARCHYID,
  @MothersHID			AS HIERARCHYID,
  @FathersLastChildHID	AS HIERARCHYID,
  @MothersLastChildHID	AS HIERARCHYID;

BEGIN TRAN;

IF @FatherID IS NULL
BEGIN
  SET @FatherPath = '.' + CAST(@ID AS VARCHAR(10)) + '.';
  SET @FatherHID = hierarchyid::GetRoot().GetDescendant((select MAX(FatherHID) from dbo.Family where FatherHID.GetAncestor(1) = hierarchyid::GetRoot()), NULL);
END
ELSE
BEGIN
  SET @FathersHID = (SELECT FatherHID FROM dbo.Family WITH (UPDLOCK) WHERE ID = @FatherID);
  SET @FathersLastChildHID = (SELECT MAX(FatherHID) FROM dbo.Family WHERE FatherHID.GetAncestor(1) = @FathersHID);
  SET @FatherHID = @FathersHID.GetDescendant(@FathersLastChildHID, NULL);
END

IF @MotherID IS NULL
BEGIN
  SET @MotherPath = '.' + CAST(@ID AS VARCHAR(10)) + '.';
  SET @MotherHID = hierarchyid::GetRoot().GetDescendant((select MAX(MotherHID) from dbo.Family where MotherHID.GetAncestor(1) = hierarchyid::GetRoot()), NULL);
END
ELSE
BEGIN
  SET @MothersHID = (SELECT MotherHID FROM dbo.Family WITH (UPDLOCK) WHERE ID = @MotherID);
  SET @MothersLastChildHID = (SELECT MAX(MotherHID) FROM dbo.Family WHERE MotherHID.GetAncestor(1) = @MothersHID);
  SET @MotherHID = @MothersHID.GetDescendant(@MothersLastChildHID, NULL);
END
-- Handle case where the new Family-Member has no ascendant (root)
IF @FatherID IS NULL and @MotherID IS NULL
  INSERT INTO dbo.Family(ID, FirstName, LastName, Titles, Sex, FatherID, MotherID, FatherLvl, MotherLvl, FatherPath, MotherPath, FatherHID, MotherHID)
    VALUES(@ID, @Firstname, @LastName, @Titles, @Sex, @FatherID, @MotherID, 
      0, 0, '.' + CAST(@ID AS VARCHAR(10)) + '.', '.' + CAST(@ID AS VARCHAR(10)) + '.',
	  @FatherHID, @MotherHID);
-- Handle descendants case (non-root)
ELSE
  INSERT INTO dbo.Family(ID, FirstName, LastName, Titles, Sex, FatherID, MotherID, FatherLvl, MotherLvl, FatherPath, MotherPath, FatherHID, MotherHID)
  SELECT @ID, @Firstname, @LastName, @Titles, @Sex, @FatherID, @MotherID, 
	MAX(ISNULL(x.FatherLvl, 0)), 
	MAX(ISNULL(x.MotherLvl, 0)), 
	ISNULL(@FatherPath, MAX(ISNULL(x.FatherPath, '.'))), 
	ISNULL(@MotherPath, MAX(ISNULL(x.MotherPath, '.'))), 
	@FatherHID, @MotherHID
  FROM (
    SELECT FatherLvl + 1 FatherLvl, null MotherLvl, FatherPath + CAST(@ID AS VARCHAR(10)) + '.' FatherPath, null MotherPath
    FROM dbo.Family
    WHERE ID = @FatherID
	UNION ALL
    SELECT null FatherLvl, MotherLvl + 1 MotherLvl, null FatherPath, MotherPath + CAST(@ID AS VARCHAR(10)) + '.' MotherPath
    FROM dbo.Family
    WHERE ID = @MotherID
	) x;

COMMIT;

GO

