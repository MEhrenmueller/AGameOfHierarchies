/* A Game of Hierarchies
 * Adding Recipe & Ingredients
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

--Recipes
exec dbo.AddIngredient
--@ID			= 201,
@Name		= 'Poudre Douce',
@Desc		= ''

exec dbo.AddRecipe
@RecipeName		= 'Poudre Douce',
@IngredientName	= 'cinnamon',
@Amount			= 4.5,
@Metric			= 'teaspoons'

exec dbo.AddRecipe
@RecipeName		= 'Poudre Douce',
@IngredientName	= 'ground ginger',
@Amount			= 1,
@Metric			= 'teaspoon'

exec dbo.AddRecipe
@RecipeName		= 'Poudre Douce',
@IngredientName	= 'grains of paradise',
@Amount			= 1,
@Metric			= 'teaspoon'

exec dbo.AddRecipe
@RecipeName		= 'Poudre Douce',
@IngredientName	= 'nutmeg',
@Amount			= 1,
@Metric			= 'pinch'

exec dbo.AddRecipe
@RecipeName		= 'Poudre Douce',
@IngredientName	= 'galangal',
@Amount			= 1,
@Metric			= 'pinch'

exec dbo.AddRecipe
@RecipeName		= 'Poudre Douce',
@IngredientName	= 'sugar',
@Amount			= 1,
@Metric			= 'cup'


--exec dbo.AddIngredient
--@ID			= 201,
--@Name		= 'Poudre Forte',
--@Desc		= null

--exec dbo.AddRecipe
--@RecipeName		= 'Poudre Forte',
--@IngredientName	= 'cinnamon',
--@Amount			= 4.5,
--@Metric			= 'teaspoons'




exec dbo.AddIngredient
@Name		= 'Medieval Cold Fruit Soup',
@Desc		= 'Pairs well with Breakfast at Winterfell, Modern Pork Pie, cold cider'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Cold Fruit Soup',
@IngredientName	= 'Apples',
@Amount			= 2,
@Metric			= ''

exec dbo.AddRecipe
@RecipeName		= 'Medieval Cold Fruit Soup',
@IngredientName	= 'almond milk',
@Amount			= 1,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Cold Fruit Soup',
@IngredientName	= 'honey',
@Amount			= 0.33,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Cold Fruit Soup',
@IngredientName	= 'sandalwood powder',
@Amount			= 1,
@Metric			= 'tablespoon'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Cold Fruit Soup',
@IngredientName	= 'saffron',
@Amount			= 1,
@Metric			= 'pinch'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Cold Fruit Soup',
@IngredientName	= 'salt',
@Amount			= 1,
@Metric			= 'pinch'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Cold Fruit Soup',
@IngredientName	= 'poudre douce',
@Amount			= 1,
@Metric			= ''



exec dbo.AddIngredient
@Name		= 'Onions in Gravy',
@Desc		= 'Pairs well with Aurochs Roasted with Leeks,Crusty White Bread, Baked Apples'

exec dbo.AddRecipe
@RecipeName		= 'Onions in Gravy',
@IngredientName	= 'pearl onions',
@Amount			= 10,
@Metric			= 'ounces'

exec dbo.AddRecipe
@RecipeName		= 'Onions in Gravy',
@IngredientName	= 'honey',
@Amount			= 1,
@Metric			= 'tablespoon'

exec dbo.AddRecipe
@RecipeName		= 'Onions in Gravy',
@IngredientName	= 'unsalted butter',
@Amount			= 1,
@Metric			= 'tablespoon'

exec dbo.AddRecipe
@RecipeName		= 'Onions in Gravy',
@IngredientName	= 'fresh herbs',
@Amount			= 1,
@Metric			= 'teaspoon'

exec dbo.AddRecipe
@RecipeName		= 'Onions in Gravy',
@IngredientName	= 'apple cider',
@Amount			= 0.33,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Onions in Gravy',
@IngredientName	= 'flour',
@Amount			= 1,
@Metric			= 'tablespoon'

exec dbo.AddRecipe
@RecipeName		= 'Onions in Gravy',
@IngredientName	= 'beef stock',
@Amount			= 3,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Onions in Gravy',
@IngredientName	= 'brandy',
@Amount			= 1,
@Metric			= 'splash',
@IsOptional		= 1




exec dbo.AddIngredient
@Name		= 'Medieval Pastry Dough',
@Desc		= 'Makes enough for eight 4-inch tarts, two 9-inch tarts, or one 9-inch double-crust pie  Prep: 10 minutes'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Pastry Dough',
@IngredientName	= 'saffron',
@Amount			= 1,
@Metric			= 'pinch'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Pastry Dough',
@IngredientName	= 'water',
@Amount			= 0.5,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Pastry Dough',
@IngredientName	= 'unsalted butter',
@Amount			= 0.5,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Pastry Dough',
@IngredientName	= 'flour',
@Amount			= 3,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Pastry Dough',
@IngredientName	= 'egg yolk',
@Amount			= 2,
@Metric			= 'piece'





exec dbo.AddIngredient
@Name		= 'Medieval Beef and Bacon Pie',
@Desc		= 'Pairs well with Salad at Castle Black,Roman Buttered Carrots, dark or hoppy beer'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'diced bacon',
@Amount			= 0.5,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'beef',
@Amount			= 1.5,
@Metric			= 'pound'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'black pepper',
@Amount			= 0.5,
@Metric			= 'teaspoon'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'salt',
@Amount			= 0.5,
@Metric			= 'teaspoon'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'vinegar',
@Amount			= 0.25,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'prunes',
@Amount			= 0.33,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'raisins',
@Amount			= 0.33,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'dates',
@Amount			= 0.33,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'beef broth',
@Amount			= 1,
@Metric			= 'cup'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'flour',
@Amount			= 2.5,
@Metric			= 'tablespoons'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'Medieval Pastry Dough',
@Amount			= 1,
@Metric			= 'batch'

exec dbo.AddRecipe
@RecipeName		= 'Medieval Beef and Bacon Pie',
@IngredientName	= 'beaten egg',
@Amount			= 1,
@Metric			= 'piece'





exec dbo.AddIngredient
@Name		= 'Grilled Aurochs',
@Desc		= 'Serves a whole wedding party'

exec dbo.AddRecipe
@RecipeName		= 'Grilled Aurochs',
@IngredientName	= 'aurochs',
@Amount			= 1,
@Metric			= 'piece'

select * from dbo.Ingredient
select * from dbo.Recipe

/*
DROP TABLE IF EXISTS dbo.Substitute;
GO
CREATE TABLE Substitute AS EDGE;

DROP PROC IF EXISTS dbo.AddSubstitute;
GO
CREATE PROC dbo.AddSubstitute
@IngredientID	int,
@SubstituteID	int
,@debug bit = 0
AS

SET NOCOUNT ON;

DECLARE
  @IngredientNodeID		AS nvarchar(255),
  @SubstituteNodeID		AS nvarchar(255),
  @Substitute2ID		AS int,
  @Substitute2NodeID	AS nvarchar(255);

BEGIN TRAN;

SET @IngredientNodeID = (SELECT $node_id FROM dbo.Ingredient WITH (UPDLOCK) WHERE ID = @IngredientID);
SET @SubstituteNodeID = (SELECT $node_id FROM dbo.Ingredient WHERE ID = @SubstituteID);

if @debug=1 select @IngredientID, @IngredientNodeID, @SubstituteID, @SubstituteNodeID
-- substitution is a two-way graph
INSERT INTO dbo.Substitute VALUES(@IngredientNodeID, @SubstituteNodeID)
INSERT INTO dbo.Substitute VALUES(@SubstituteNodeID, @IngredientNodeID)

DECLARE SubstituteCur CURSOR LOCAL FOR
SELECT STo.ID SubstituteID FROM dbo.Substitute s 
inner join dbo.Ingredient Sfrom on Sfrom.$node_id = s.$from_id
inner join dbo.Ingredient Sto on Sto.$node_id = s.$to_id
WHERE Sfrom.ID=@IngredientID and Sto.ID <> @SubstituteID

OPEN SubstituteCur;

WHILE 1=1
BEGIN
	FETCH NEXT FROM SubstituteCur INTO @Substitute2ID;

	IF @@FETCH_STATUS <> 0
		BREAK

	--exec dbo.AddSubstitute @SubstituteID, @Substitute2ID
	SET @Substitute2NodeID = (SELECT $node_id FROM dbo.Ingredient WHERE ID = @Substitute2ID);
	if @debug=1 select @Substitute2ID, @Substitute2NodeID, @SubstituteID, @SubstituteNodeID
	INSERT INTO dbo.Substitute VALUES(@Substitute2NodeID, @SubstituteNodeID)
	INSERT INTO dbo.Substitute VALUES(@SubstituteNodeID, @Substitute2NodeID)

END

CLOSE SubstituteCur;
DEALLOCATE SubstituteCur;

COMMIT;

GO

DROP PROC IF EXISTS dbo.AddSubstitute2;
GO
CREATE PROC dbo.AddSubstitute2
@IngredientID	int,
@SubstituteID	int
,@debug bit = 0
AS

SET NOCOUNT ON;

DECLARE
  @IngredientNodeID		AS nvarchar(255),
  @SubstituteNodeID		AS nvarchar(255),
  @Substitute2ID		AS int,
  @Substitute2NodeID	AS nvarchar(255);

BEGIN TRAN;

SET @IngredientNodeID = (SELECT $node_id FROM dbo.Ingredient WITH (UPDLOCK) WHERE ID = @IngredientID);
SET @SubstituteNodeID = (SELECT $node_id FROM dbo.Ingredient WHERE ID = @SubstituteID);

if @debug=1 select @IngredientID, @IngredientNodeID, @SubstituteID, @SubstituteNodeID
-- substitution is a two-way graph
INSERT INTO dbo.Substitute VALUES(@IngredientNodeID, @SubstituteNodeID)
INSERT INTO dbo.Substitute VALUES(@SubstituteNodeID, @IngredientNodeID)

COMMIT;

GO

--Substitutes
exec dbo.AddSubstitute
@IngredientName	= 'Aurochs',
@SubstituteName	= 'Beef'

exec dbo.AddSubstitute
@IngredientName	= 'Aurochs',
@SubstituteName	= 'Bison'

exec dbo.AddSubstitute
@IngredientName	= 'cinnamon',
@SubstituteName	= 'grounded cinnamon'

exec dbo.AddSubstitute
@IngredientName	= 'pepper',
@SubstituteName	= 'grains of paradise'

exec dbo.AddSubstitute
@IngredientName	= 'verjuice',
@SubstituteName	= 'equal parts of vinegar and cider'

exec dbo.AddSubstitute
@IngredientName	= 'poudre douce',
@SubstituteName	= 'cinnamon sugar'

exec dbo.AddSubstitute
@IngredientName	= 'sandalwood powder',
@SubstituteName	= 'red food coloring'

exec dbo.AddSubstitute
@IngredientName	= 'pearl onions',
@SubstituteName	= 'boiler onions'





--truncate table dbo.Substitute
exec dbo.AddSubstitute2
@IngredientID	= 100,
@SubstituteID	= 101

exec dbo.AddSubstitute2
@IngredientID	= 100,
@SubstituteID	= 102
,@debug=1

exec dbo.AddSubstitute2
@IngredientID	= 100,
@SubstituteID	= 103
,@debug=1
exec dbo.AddSubstitute2
@IngredientID	= 102,
@SubstituteID	= 104
,@debug=1

select * from dbo.Substitute
*/

/*
--
SELECT * FROM dbo.Ingredient
SELECT * FROM dbo.Recipe

SELECT * FROM dbo.Recipe 
inner join dbo.Ingredient Recipe ON Recipe.$from_id = Recipe.$node_id
inner join dbo.Ingredient Ingredient ON Recipe.$to_id = Ingredient.$node_id

--
--Find substitute
SELECT Ingredient.[Name] Ingredient, Substitute.[Name] Substitute
FROM
	dbo.Ingredient Ingredient, dbo.Substitute IsSubstitute, dbo.Ingredient Substitute
WHERE MATCH(Ingredient-(IsSubstitute)->Substitute)
   AND Ingredient.[Name] <  Substitute.[Name]  -- but only one couple
;

select * from dbo.Substitute;

--including substitutes of substitues
DECLARE @Ingredient as nvarchar(255) = 'Aurochs';
;WITH MySubstitutes AS (
SELECT Ingredient.[Name] Ingredient, Substitute.[Name] Substitute
FROM
	dbo.Ingredient Ingredient, dbo.Substitute IsSubstitute, dbo.Ingredient Substitute
WHERE MATCH(Ingredient-(IsSubstitute)->Substitute)
   AND Ingredient.[Name] <  Substitute.[Name]  -- but only one couple
   AND Ingredient.[Name]=@Ingredient 
UNION -- instead of OR
SELECT Ingredient.[Name] Ingredient, Substitute2.[Name] Substitute
FROM
	dbo.Ingredient Ingredient, dbo.Substitute IsSubstitute, dbo.Ingredient Substitute, dbo.Substitute IsSubstitute2, dbo.Ingredient Substitute2, dbo.Substitute IsSubstitute3, dbo.Ingredient Substitute3
WHERE MATCH(Ingredient-(IsSubstitute)->Substitute-(IsSubstitute2)->Substitute2)
   AND Ingredient.[Name] <  Substitute.[Name]  -- but only one couple
   AND Ingredient.[Name]=@Ingredient 
   AND Ingredient.[Name]<>Substitute2.[Name]
--UNION -- instead of OR
--SELECT Ingredient.[Name] Ingredient, Substitute3.[Name] Substitute
--FROM
--	dbo.Ingredient Ingredient, dbo.Substitute IsSubstitute, dbo.Ingredient Substitute, dbo.Substitute IsSubstitute2, dbo.Ingredient Substitute2, dbo.Substitute IsSubstitute3, dbo.Ingredient Substitute3
--WHERE MATCH(Ingredient-(IsSubstitute)->Substitute-(IsSubstitute2)->Substitute2-(IsSubstitute3)->Substitute3)
--   AND Ingredient.[Name] <  Substitute.[Name]  -- but only one couple
--   AND Ingredient.[Name]=@Ingredient 
--   AND Ingredient.[Name]=Substitute2.[Name]
--   AND Substitute.[Name]<>Substitute3.[Name]
)
SELECT * FROM MySubstitutes;

SELECT Substitute
FROM dbo.Substitute s1
INNER JOIN MySubstitutes s2 ON
	s2.Substitute = s1.Ingredient


--DECLARE @Ingredient as nvarchar(255) = 'Aurochs';
SELECT Ingredient.[Name] Ingredient, Substitute.[Name] Substitute
FROM
	dbo.Ingredient Ingredient, dbo.Substitute IsSubstitute, dbo.Ingredient Substitute, dbo.Substitute IsSubstitute2, dbo.Ingredient Substitute2
WHERE MATCH(Ingredient-(IsSubstitute)->Substitute-(IsSubstitute2)->Substitute2)
   AND Ingredient.[Name] <  Substitute.[Name]  -- but only one couple
   AND Ingredient.[Name]=@Ingredient 


SELECT * FROM dbo.Ingredient WHERE ID = 100; --@IngredientID;
SELECT * FROM dbo.Substitute WHERE ID = 100; --@IngredientID;

*/