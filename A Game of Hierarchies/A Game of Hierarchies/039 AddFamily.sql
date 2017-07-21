/* A Game of Hierarchies
 * Add Family
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

use [GoT]
go

-- Make it easier to insert rows in any order
ALTER TABLE dbo.Family
  DROP CONSTRAINT IF EXISTS FK_Family_Father;
ALTER TABLE dbo.Family
  DROP CONSTRAINT IF EXISTS FK_Family_Mother;


-- STARK
exec dbo.AddFamily
@ID			= 100,
@FirstName	= 'Benjen',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 101,
@FirstName	= 'Lysa',
@LastName	= 'Locke',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 102,
@FirstName	= 'Rickon',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 100,
@MotherID	= 101

exec dbo.AddFamily
@ID			= 103,
@FirstName	= 'Gilliane',
@LastName	= 'Glover',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 104,
@FirstName	= 'Cregan',
@LastName	= 'Stark',
@Titles		= 'The Old Man Of The North',
@Sex		= 'M',
@FatherID	= 102,
@MotherID	= 103

exec dbo.AddFamily
@ID			= 105,
@FirstName	= 'Lynara',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 106,
@FirstName	= 'Brandon',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 104,
@MotherID	= 105

exec dbo.AddFamily
@ID			= 107,
@FirstName	= 'Alys',
@LastName	= 'Karstark',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 108,
@FirstName	= 'Beron',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 106,
@MotherID	= 107

exec dbo.AddFamily
@ID			= 109,
@FirstName	= 'Lorra',
@LastName	= 'Royce',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 110,
@FirstName	= 'William',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 108,
@MotherID	= 109

exec dbo.AddFamily
@ID			= 111,
@FirstName	= 'Melantha',
@LastName	= 'Blackwood',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 112,
@FirstName	= 'Edwyle',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 110,
@MotherID	= 111

exec dbo.AddFamily
@ID			= 113,
@FirstName	= 'Marna',
@LastName	= 'Locke',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 114,
@FirstName	= 'Rickard',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 112,
@MotherID	= 113

exec dbo.AddFamily
@ID			= 115,
@FirstName	= 'Lyarra',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 116,
@FirstName	= 'Eddard',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 114,
@MotherID	= 115

--
exec dbo.AddFamily
@ID			= 132,
@FirstName	= '???',
@LastName	= 'Tully',
@Titles		= '',
@Sex		= 'M',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 130,
@FirstName	= 'Hoster',
@LastName	= 'Tully',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 132,
@MotherID	= null

exec dbo.AddFamily
@ID			= 131,
@FirstName	= 'Minisa',
@LastName	= 'Whent',
@Titles		= '',
@Sex		= 'M',
@FatherID	= null,
@MotherID	= null
--

exec dbo.AddFamily
@ID			= 117,
@FirstName	= 'Catelyn',
@LastName	= 'Tully',
@Titles		= 'Lady Stoneheart',
@Sex		= 'F',
@FatherID	= 130,
@MotherID	= 131

exec dbo.AddFamily
@ID			= 118,
@FirstName	= 'Robb',
@LastName	= 'Stark',
@Titles		= 'The Young Wolf',
@Sex		= 'M',
@FatherID	= 116,
@MotherID	= 117

exec dbo.AddFamily
@ID			= 119,
@FirstName	= 'Jayne',
@LastName	= 'Westerling',
@Titles		= '',
@Sex		= 'F',
@FatherID	= null,
@MotherID	= null

exec dbo.AddFamily
@ID			= 120,
@FirstName	= 'Sansa',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'F',
@FatherID	= 116,
@MotherID	= 117

exec dbo.AddFamily
@ID			= 121,
@FirstName	= 'Arya',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'F',
@FatherID	= 116,
@MotherID	= 117

exec dbo.AddFamily
@ID			= 122,
@FirstName	= 'Brandon',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 116,
@MotherID	= 117

exec dbo.AddFamily
@ID			= 123,
@FirstName	= 'Rickon',
@LastName	= 'Stark',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 116,
@MotherID	= 117

exec dbo.AddFamily
@ID			= 124,
@FirstName	= 'John',
@LastName	= 'Snow',
@Titles		= '',
@Sex		= 'M',
@FatherID	= 116,
@MotherID	= null


--reinforce constraints
ALTER TABLE dbo.Family
  ADD CONSTRAINT FK_Family_Father
    FOREIGN KEY(FatherID) REFERENCES dbo.Family(ID);
ALTER TABLE dbo.Family
  ADD CONSTRAINT FK_Family_Mother
    FOREIGN KEY(MotherID) REFERENCES dbo.Family(ID);

--SELECT * FROM dbo.Family;

/*
-- isMarried
exec dbo.AddFamilyEdge
@FromID				= 116,
@FamilyRelationShip = 'isMarried',
@ToID				= 117

exec dbo.AddFamilyEdge
@FromID				= 117,
@FamilyRelationShip = 'isMarried',
@ToID				= 116

exec dbo.AddFamilyEdge
@FromID				= 118,
@FamilyRelationShip = 'isMarried',
@ToID				= 119

exec dbo.AddFamilyEdge
@FromID				= 119,
@FamilyRelationShip = 'isMarried',
@ToID				= 118


-- isSibling
exec dbo.AddFamilyEdge
@FromID				= 118,
@FamilyRelationShip = 'isSibling',
@ToID				= 120

exec dbo.AddFamilyEdge
@FromID				= 118,
@FamilyRelationShip = 'isSibling',
@ToID				= 121

exec dbo.AddFamilyEdge
@FromID				= 118,
@FamilyRelationShip = 'isSibling',
@ToID				= 122

exec dbo.AddFamilyEdge
@FromID				= 118,
@FamilyRelationShip = 'isSibling',
@ToID				= 123

exec dbo.AddFamilyEdge
@FromID				= 118,
@FamilyRelationShip = 'isSibling',
@ToID				= 124

exec dbo.AddFamilyEdge
@FromID				= 120,
@FamilyRelationShip = 'isSibling',
@ToID			    = 121

exec dbo.AddFamilyEdge
@FromID				= 120,
@FamilyRelationShip = 'isSibling',
@ToID				= 122

exec dbo.AddFamilyEdge
@FromID				= 120,
@FamilyRelationShip = 'isSibling',
@ToID				= 123

exec dbo.AddFamilyEdge
@FromID				= 120,
@FamilyRelationShip = 'isSibling',
@ToID				= 124

exec dbo.AddFamilyEdge
@FromID				= 121,
@FamilyRelationShip = 'isSibling',
@ToID				= 122

exec dbo.AddFamilyEdge
@FromID				= 121,
@FamilyRelationShip = 'isSibling',
@ToID				= 123

exec dbo.AddFamilyEdge
@FromID				= 121,
@FamilyRelationShip = 'isSibling',
@ToID			    = 124

exec dbo.AddFamilyEdge
@FromID				= 122,
@FamilyRelationShip = 'isSibling',
@ToID			    = 123

exec dbo.AddFamilyEdge
@FromID				= 122,
@FamilyRelationShip = 'isSibling',
@ToID			    = 123

exec dbo.AddFamilyEdge
@FromID				= 123,
@FamilyRelationShip = 'isSibling',
@ToID			    = 124




*/