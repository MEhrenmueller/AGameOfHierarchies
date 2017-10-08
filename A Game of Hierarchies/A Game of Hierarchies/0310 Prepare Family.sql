/* A Game of Hierarchies
 * Prepare Family - SQL Server 2017+
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

DROP TABLE IF EXISTS dbo.Family;
GO
CREATE TABLE dbo.Family (
	--PK
	ID			int NOT NULL,
	--Attributes
	FirstName	varchar(50),
	LastName	varchar(50),
	Titles		varchar(255),
	Sex			char(1),
	--self-join
	FatherID	int,
	MotherID	int,
	--materialized path
	FatherLvl	int,
	MotherLvl	int,
	FatherPath	varchar(255),
	MotherPath	varchar(255),
	--hierarchyid
	FatherHID	hierarchyid,
	MotherHID	hierarchyid,
	--CHECK
	CHECK (ID <> FatherID), --no one can be his own father
	CHECK (ID <> MotherID)  --no one can be his own mother
	--,CHECK((SELECT COUNT(*) FROM dbo.Family)-1 =(SELECT COUNT(FatherID) FROM dbo.Family)
	--,CHECK(SELECT(COUNT(*) FROM dbo.Family WHERE FatherID IS NULL) = 1)
) AS NODE;
GO
--primary key
ALTER TABLE dbo.Family ADD CONSTRAINT PK_Family PRIMARY KEY NONCLUSTERED(ID);
--self-join
CREATE UNIQUE INDEX idx_Family_FatherID_ID ON dbo.Family(FatherID, ID);
CREATE UNIQUE INDEX idx_Family_MotherID_ID ON dbo.Family(MotherID, ID);
--materialized path
CREATE UNIQUE INDEX idx_Family_depth_first_Father ON dbo.Family(FatherPath);
CREATE UNIQUE INDEX idx_Family_depth_first_Mother ON dbo.Family(MotherPath);
CREATE UNIQUE INDEX idx_Family_breadth_first_Father ON dbo.Family(FatherLvl, FatherPath);
CREATE UNIQUE INDEX idx_Family_breadth_first_Mother ON dbo.Family(MotherLvl, MotherPath);
--hierarchyid
CREATE UNIQUE INDEX idx_Family_FatherHID ON dbo.Family(FatherHID);
CREATE UNIQUE INDEX idx_Family_MotherHID ON dbo.Family(MotherHID);


DROP TABLE IF EXISTS dbo.IsFather;
CREATE TABLE dbo.IsFather AS EDGE;
CREATE INDEX IX_IsFather_$from_id_$to_id ON dbo.IsFather ($from_id, $to_id);

DROP TABLE IF EXISTS dbo.IsMother;
CREATE TABLE IsMother AS EDGE;
CREATE INDEX IX_IsMother_$from_node_$to_id ON dbo.IsMother ($from_id, $to_id);


DROP PROC IF EXISTS dbo.AddFamily;
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
	--materialized path
	@FatherPath			varchar(255),
	@MotherPath			varchar(255),
	--hierarchyid
	@FatherHID			AS HIERARCHYID, --HID of actual node in Father Hierarchy
	@MotherHID			AS HIERARCHYID, --HID of actual node in Mother Hierarchy
	@FathersHID			AS HIERARCHYID, --HID of Father
	@MothersHID			AS HIERARCHYID, --HID of Mother
	@FathersLastChildHID	AS HIERARCHYID,
	@MothersLastChildHID	AS HIERARCHYID,
	--graph
	@NodeID				AS VARCHAR(1000),
	@FatherNodeID			AS VARCHAR(1000),
	@MotherNodeID			AS VARCHAR(1000),
	@MyNodeID			AS varchar(1000);

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
	SET @FatherNodeID = (SELECT $node_id FROM dbo.Family WHERE ID = @FatherID);
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
	SET @MotherNodeID = (SELECT $node_id FROM dbo.Family WHERE ID = @MotherID);
END

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

--Graph
SET @NodeID = (SELECT $node_id FROM dbo.Family WHERE ID = @ID);
IF @FatherNodeID IS NOT NULL
	INSERT INTO dbo.IsFather VALUES(@FatherNodeID, @NodeID)
IF @MotherNodeID IS NOT NULL
	INSERT INTO dbo.IsMother VALUES(@MotherNodeID, @NodeID)

COMMIT;

GO

