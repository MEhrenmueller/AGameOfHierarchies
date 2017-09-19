/* A Game of Hierarchies
 * Preparing recipe tables
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

use AGameOfHierarchies
go

DROP TABLE IF EXISTS dbo.Ingredient;
GO
CREATE TABLE dbo.Ingredient (
ID		int NOT NULL identity(1,1),
[Name]	varchar(50),
[Desc]	varchar(50)
) AS NODE
GO
ALTER TABLE dbo.Ingredient 
	ADD CONSTRAINT PK_Ingredient 
		PRIMARY KEY NONCLUSTERED(ID);

DROP PROC IF EXISTS dbo.AddIngredient;
GO
CREATE PROC dbo.AddIngredient
@ID		int = null,
@Name	varchar(50),
@Desc	varchar(50) = ''
AS

SET NOCOUNT ON;

--INSERT INTO dbo.Ingredient(ID, [Name], [Desc])
--VALUES(@ID, @Name, @Desc);
IF NOT EXISTS (SELECT TOP 1 1 FROM dbo.Ingredient WHERE [Name]=@Name)
	INSERT INTO dbo.Ingredient([Name], [Desc])
	VALUES(@Name, @Desc);

GO


DROP TABLE IF EXISTS dbo.Recipe;
GO
CREATE TABLE Recipe (
Amount			decimal(9,2),
Metric			varchar(50),
IsOptional		bit
) AS EDGE;

DROP PROC IF EXISTS dbo.AddRecipe;
GO
CREATE PROC dbo.AddRecipe
@RecipeID		int = null,
@RecipeName		varchar(50),
@IngredientID	int = null,
@IngredientName varchar(50) = null,
@Amount			decimal(9,2),
@Metric			varchar(50),
@IsOptional		bit = 0
AS

SET NOCOUNT ON;

DECLARE
  @RecipeNodeID		AS nvarchar(255),
  @IngredientNodeID	AS nvarchar(255);

BEGIN TRAN;

IF NOT EXISTS (SELECT TOP  1 1 FROM dbo.Ingredient WITH (UPDLOCK) WHERE ID = @RecipeID or [Name]=@RecipeName)
	exec dbo.AddIngredient @Name=@RecipeName;
SET @RecipeNodeID	  = (SELECT $node_id FROM dbo.Ingredient WITH (UPDLOCK) WHERE ID = @RecipeID or [Name]=@RecipeName);
IF NOT EXISTS (SELECT TOP  1 1 FROM dbo.Ingredient WITH (UPDLOCK) WHERE ID = @IngredientID or [Name]=@IngredientName)
	exec dbo.AddIngredient @Name=@IngredientName;
SET @IngredientNodeID = (SELECT $node_id FROM dbo.Ingredient WITH (UPDLOCK) WHERE ID = @IngredientID or [Name]=@IngredientName);

INSERT INTO dbo.Recipe VALUES(@RecipeNodeID, @IngredientNodeID, @Amount, @Metric, @IsOptional)

COMMIT;
GO

