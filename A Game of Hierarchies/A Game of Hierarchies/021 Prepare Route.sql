/* A Game of Hierarchies
 * Prepare Route - SQL Server 2017+
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

USE [GoT]
GO

DROP TABLE IF EXISTS dbo.[Route];
CREATE TABLE dbo.[Route](
	RoadName		nvarchar(50),
	MilesByLand		int,
	MilesByWater		int,
	Miles			int
) AS EDGE;

DROP PROC IF EXISTS dbo.AddRoute;
GO
CREATE PROC dbo.AddRoute
	@From			nvarchar(50),
	@To				nvarchar(50),
	@RoadName		nvarchar(50),
	@MilesByLand	int,
	@MilesByWater		int
AS
BEGIN

SET NOCOUNT ON

DECLARE
  @FromNodeID		AS nvarchar(255),
  @ToNodeID	AS nvarchar(255);


SET @FromNodeID	  = (SELECT $node_id FROM dbo.POI WITH (UPDLOCK) WHERE POIName = @From);
SET @ToNodeID = (SELECT $node_id FROM dbo.POI WITH (UPDLOCK) WHERE POIName = @To);

If @FromNodeID is null
begin
	--print 'Error! ''' + @From + ''' is unknown!'
	return
end

If @ToNodeID is null
begin
	--print 'Error! ''' + @To + ''' is unknown!'
	return
end

--avoid duplicates
IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.[Route] WHERE $from_id = @FromNodeID AND $to_id = @ToNodeID)
	INSERT INTO dbo.[Route] VALUES(@FromNodeID, @ToNodeID, @RoadName, @MilesByLand, @MilesByWater, @MilesByLand+@MilesByWater)
--route is valid in both directions
IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.[Route] WHERE $from_id = @ToNodeID AND $to_id = @FromNodeID)
	INSERT INTO dbo.[Route] VALUES(@ToNodeID, @FromNodeID, @RoadName, @MilesByLand, @MilesByWater, @MilesByLand+@MilesByWater)


END
GO

--select count(*) from dbo.[Route]

