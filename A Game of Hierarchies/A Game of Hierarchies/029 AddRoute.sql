/* A Game of Hierarchies
 * Add Route - SQL Server 2017+
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

 use GoT;
 GO

/*
Sources:
http://winteriscoming.net/2015/11/10/game-of-thrones-fan-tabulates-distances-between-places-in-westeros/
https://docs.google.com/document/d/1KAqa9wwODqaFkegqf8Si6fmuE55-M-GMIj0ZmcKUFxs/edit
*/

--The Westerlands
exec dbo.AddRoute
@From			= 'Casterly Rock',
@To				= 'Golden Tooth',
@RoadName		= '',
@MilesByLand	= 240,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Casterly Rock',
@To				= 'Lannisport',
@RoadName		= '',
@MilesByLand	= 40,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Casterly Rock',
@To				= 'Kayce',
@RoadName		= '',
@MilesByLand	= 100,
@MilesByWater		= 12

exec dbo.AddRoute
@From			= 'Casterly Rock',
@To				= 'Deep Den',
@RoadName		= 'Goldroad',
@MilesByLand	= 240,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Deep Den',
@To				= 'King''s Landing',
@RoadName		= 'Goldroad',
@MilesByLand	= 590,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Kayce',
@To				= 'Faircastle',
@RoadName		= '(by raven)',
@MilesByLand	= 480,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Faircastle',
@To				= 'The Crag',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater		= 115

exec dbo.AddRoute
@From			= 'The Crag',
@To				= 'Ashemark',
@RoadName		= '',
@MilesByLand	= 85,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Ashemark',
@To				= 'Casterly Rock',
@RoadName		= '',
@MilesByLand	= 170,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Ashemark',
@To				= 'Golden Tooth',
@RoadName		= '',
@MilesByLand	= 100,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Lannisport',
@To				= 'Crakehall',
@RoadName		= '',
@MilesByLand	= 260,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Crakehall',
@To				= 'Old Oak',
@RoadName		= '',
@MilesByLand	= 130,
@MilesByWater		= 0

--The Reach
exec dbo.AddRoute
@From			= 'Old Oak',
@To				= 'Highgarden',
@RoadName		= '',
@MilesByLand	= 275,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Highgarden',
@To				= 'Oldtown',
@RoadName		= '',
@MilesByLand	= 330,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Oldtown',
@To				= 'Blackcrown',
@RoadName		= '',
@MilesByLand	= 110,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Oldtown',
@To				= 'Three Towers',
@RoadName		= '',
@MilesByLand	= 120,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Blackcrown',
@To				= 'Three Towers',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater		= 60

exec dbo.AddRoute
@From			= 'Three Towers',
@To				= 'The Arbor',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater		= 140

exec dbo.AddRoute
@From			= 'Blackcrown',
@To				= 'The Arbor',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater		= 180

exec dbo.AddRoute
@From			= 'Mouth of the Mander River',
@To				= 'Shield Island',
@RoadName		= '',
@MilesByLand	= 70,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Highgarden',
@To				= 'Goldengrove',
@RoadName		= '',
@MilesByLand	= 150,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Goldengrove',
@To				= 'Silverhill',
@RoadName		= '',
@MilesByLand	= 220,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Highgarden',
@To				= 'King''s Landing',
@RoadName		= 'Roseroad',
@MilesByLand	= 760,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Highgarden',
@To				= 'Crownlands',
@RoadName		= 'Roseroad',
@MilesByLand	= 600,
@MilesByWater		= 0

exec dbo.AddRoute
@From			= 'Highgarden',
@To				= 'Cider Hall',
@RoadName		= 'River',
@MilesByLand	= 0,
@MilesByWater	= 140

exec dbo.AddRoute
@From			= 'Cider Hall',
@To				= 'Longtable',
@RoadName		= 'River',
@MilesByLand	= 0,
@MilesByWater	= 100

exec dbo.AddRoute
@From			= 'Cider Hall',
@To				= 'Ashford',
@RoadName		= 'River',
@MilesByLand	= 0,
@MilesByWater	= 110

exec dbo.AddRoute
@From			= 'Longtable',
@To				= 'Bitterbridge',
@RoadName		= 'River',
@MilesByLand	= 0,
@MilesByWater	= 70

exec dbo.AddRoute
@From			= 'Longtable',
@To				= 'Grassy Vale',
@RoadName		= 'River',
@MilesByLand	= 0,
@MilesByWater	= 100

--The Vale
exec dbo.AddRoute
@From			= 'Border',
@To				= 'Bloody Gate',
@RoadName		= '',
@MilesByLand	= 170,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Bloody Gate',
@To				= 'The Eyrie',
@RoadName		= '',
@MilesByLand	= 70,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Saltpans',
@To				= 'Wickenden',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 180

exec dbo.AddRoute
@From			= 'Wickenden',
@To				= 'Gulltown',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 310

exec dbo.AddRoute
@From			= 'Gulltown',
@To				= 'Runestone',
@RoadName		= '',
@MilesByLand	= 40,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Rundestone',
@To				= 'Iron Oaks',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 135

exec dbo.AddRoute
@From			= 'Runestone',
@To				= 'Old Anchor',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 95

exec dbo.AddRoute
@From			= 'Old Anchor',
@To				= 'Longbow Hall',
@RoadName		= '(by raven)',
@MilesByLand	= 115,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Old Anchor',
@To				= 'Longbow Hall',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 240

exec dbo.AddRoute
@From			= 'Longbow Hall',
@To				= 'Snakewoods',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 350

exec dbo.AddRoute
@From			= 'Longbow Hall',
@To				= 'Baelish Keep',
@RoadName		= '',
@MilesByLand	= 90,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Snakewoods',
@To				= 'Heart''s Home',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 125

exec dbo.AddRoute
@From			= 'Heart''s Home',
@To				= 'Strong Song',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 180

exec dbo.AddRoute
@From			= 'Snakewoods',
@To				= 'Coldwater',
@RoadName		= '(by raven)',
@MilesByLand	= 70,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Snakewoods',
@To				= 'Coldwater',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 450

exec dbo.AddRoute
@From			= 'The Sisters',
@To				= 'Pebble Island',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 190

exec dbo.AddRoute
@From			= 'Pebble Island',
@To				= 'The Paps',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 120

exec dbo.AddRoute
@From			= 'The Paps',
@To				= 'Coldwater',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 160

exec dbo.AddRoute
@From			= 'The Sisters',
@To				= 'White Harbor',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 275

--The North
exec dbo.AddRoute
@From			= 'Harroway',
@To				= 'Moat Cailin',
@RoadName		= 'Kingsroad',
@MilesByLand	= 700,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Moat Cailin',
@To				= 'Castle Cerwyn',
@RoadName		= 'Kingsroad',
@MilesByLand	= 260,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Castle Cerwyn',
@To				= 'Winterfell',
@RoadName		= 'Kingsroad',
@MilesByLand	= 100,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Greywater Watch',
@To				= 'Kingsroad',
@RoadName		= '',
@MilesByLand	= 75,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Flint''s Finger',
@To				= 'Kingsroad',
@RoadName		= '',
@MilesByLand	= 500,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Moat Cailin',
@To				= 'White Harbor',
@RoadName		= '',
@MilesByLand	= 160,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'White Harbor',
@To				= 'Winterfell',
@RoadName		= '',
@MilesByLand	= 340,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'White Harbor',
@To				= 'Ramsgate',
@RoadName		= '',
@MilesByLand	= 260,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Ramsgate',
@To				= 'The Hornwood',
@RoadName		= '',
@MilesByLand	= 220,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Ramsgate',
@To				= 'Widow''s Watch',
@RoadName		= '',
@MilesByLand	= 230,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Widow''s Watch',
@To				= 'Karhold',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 480

exec dbo.AddRoute
@From			= 'Karhold',
@To				= 'Last Hearth',
@RoadName		= '',
@MilesByLand	= 210,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Karhold',
@To				= 'The Dreadfort',
@RoadName		= '',
@MilesByLand	= 260,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'The Dreadfort',
@To				= 'Last Hearth',
@RoadName		= '',
@MilesByLand	= 210,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'The Dreadfort',
@To				= 'Winterfell',
@RoadName		= '',
@MilesByLand	= 350,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Winterfell',
@To				= 'Torrhen''s Square',
@RoadName		= '',
@MilesByLand	= 230,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Winterfell',
@To				= 'Deepwood Motte',
@RoadName		= '',
@MilesByLand	= 350,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Deepwood Motte',
@To				= 'Torrhen''s Square',
@RoadName		= '',
@MilesByLand	= 320,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Deepwood Motte',
@To				= 'Bear Island',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 140

exec dbo.AddRoute
@From			= 'Winterfell',
@To				= 'Castle Black',
@RoadName		= '(by raven)',
@MilesByLand	= 600,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Winterfell',
@To				= 'Castle Black',
@RoadName		= 'Kingsroad',
@MilesByLand	= 650,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Winterfell',
@To				= 'The Hornwood',
@RoadName		= '',
@MilesByLand	= 280,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Barrowton',
@To				= 'Kingsroad',
@RoadName		= '',
@MilesByLand	= 260,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Barrowton',
@To				= 'Torrhen''s Square',
@RoadName		= '',
@MilesByLand	= 125,
@MilesByWater	= 60

exec dbo.AddRoute
@From			= 'Barrowton',
@To				= 'Saltspear',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 115

exec dbo.AddRoute
@From			= 'Barrowton',
@To				= 'Flint''s Finger',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 280

--The Riverlands
exec dbo.AddRoute
@From			= 'Harroway',
@To				= 'Oldsontes',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 270

exec dbo.AddRoute
@From			= 'Seagard',
@To				= 'Oldstones',
@RoadName		= '',
@MilesByLand	= 75,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Seagard',
@To				= 'The Twins',
@RoadName		= '',
@MilesByLand	= 60,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Seagard',
@To				= 'Pyke', --'Iron Islands',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 390

exec dbo.AddRoute
@From			= 'Harroway',
@To				= 'The Twins',
@RoadName		= '',
@MilesByLand	= 365,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Harroway',
@To				= 'Riverrun',
@RoadName		= '',
@MilesByLand	= 270,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Riverrun',
@To				= 'Casterly Rock',
@RoadName		= '',
@MilesByLand	= 430,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Riverrun',
@To				= 'Harrenhal',
@RoadName		= '',
@MilesByLand	= 255,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Harrenhal',
@To				= 'Harroway',
@RoadName		= '',
@MilesByLand	= 90,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Harrenhal',
@To				= 'Kingsroad',
@RoadName		= '',
@MilesByLand	= 40,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Harroway',
@To				= 'King''s Landing',
@RoadName		= 'Kingsroad',
@MilesByLand	= 400,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Riverrun',
@To				= 'Pinkmaiden',
@RoadName		= '',
@MilesByLand	= 215,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Harroway',
@To				= 'Saltpans',
@RoadName		= '',
@MilesByLand	= 145,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Harroway',
@To				= 'The Vale',
@RoadName		= 'Highroad',
@MilesByLand	= 60,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Saltpans',
@To				= 'Maidenpool',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 95

exec dbo.AddRoute
@From			= 'Maidenpool',
@To				= 'Harroway',
@RoadName		= '',
@MilesByLand	= 240,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Maidenpool',
@To				= 'King''s Landing',
@RoadName		= '',
@MilesByLand	= 270,
@MilesByWater	= 0

--The Crownlands
exec dbo.AddRoute
@From			= 'King''s Landing',
@To				= 'Casterly Rock',
@RoadName		= 'Goldroad',
@MilesByLand	= 830,
@MilesByWater	= 0

--exec dbo.AddRoute
--@From			= 'King''s Landing',
--@To				= 'Highgarden',
--@RoadName		= 'Roseroad',
--@MilesByLand	= 760,
--@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'King''s Landing',
@To				= 'Storm''s End',
@RoadName		= 'Kingsroad',
@MilesByLand	= 385,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'King''s Landing',
@To				= 'Winterfell',
@RoadName		= 'Kingsroad',
@MilesByLand	= 1460,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'King''s Landing',
@To				= 'Duskendale',
@RoadName		= '',
@MilesByLand	= 160,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Duskendale',
@To				= 'Maidenpool',
@RoadName		= '',
@MilesByLand	= 145,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Duskendale',
@To				= 'Rook''s Rest',
@RoadName		= '',
@MilesByLand	= 125,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Rook''s Rest',
@To				= 'Dyre Den',
@RoadName		= '',
@MilesByLand	= 120,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'King''s Landing',
@To				= 'Wendwater',
@RoadName		= '',
@MilesByLand	= 210,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'King''s Landing',
@To				= 'Sharp Point',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 320

exec dbo.AddRoute
@From			= 'Sharp Point',
@To				= 'Dragonstone',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 100

exec dbo.AddRoute
@From			= 'Dragonstone',
@To				= 'Rook''s Rest',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 140

exec dbo.AddRoute
@From			= 'Dragonstone',
@To				= 'Gulltown',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 410

--The Stormlands
exec dbo.AddRoute
@From			= 'Wendwater',
@To				= 'Bronzegate',
@RoadName		= '',
@MilesByLand	= 80,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Bronzegate',
@To				= 'Storm''s End',
@RoadName		= '',
@MilesByLand	= 95,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Storm''s End',
@To				= 'Evenfall Hall',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 180

exec dbo.AddRoute
@From			= 'Storm''s End',
@To				= 'Griffin''s Roost',
@RoadName		= '',
@MilesByLand	= 110,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Storm''s End',
@To				= 'Rain House',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 200

exec dbo.AddRoute
@From			= 'Storm''s End',
@To				= 'Summerhall',
@RoadName		= '',
@MilesByLand	= 260,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Summerhall',
@To				= 'Blackhaven',
@RoadName		= '',
@MilesByLand	= 140,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Blackhaven',
@To				= 'Wyl',
@RoadName		= 'Boneway',
@MilesByLand	= 220,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Rain House',
@To				= 'Mistwood',
@RoadName		= '',
@MilesByLand	= 180,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Mistwood',
@To				= 'Weeping Tower',
@RoadName		= '',
@MilesByLand	= 50,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Weeping Tower',
@To				= 'Wyl',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 370

exec dbo.AddRoute
@From			= 'Mistwood',
@To				= 'Stonehelm',
@RoadName		= '',
@MilesByLand	= 160,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Stonehelm',
@To				= 'Grandview',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 150

--Dorne
exec dbo.AddRoute
@From			= 'Wyl',
@To				= 'Yronwood',
@RoadName		= 'Boneway',
@MilesByLand	= 270,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Yronwood',
@To				= 'The Tor',
@RoadName		= '',
@MilesByLand	= 220,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'The Tor',
@To				= 'Godsgrace',
@RoadName		= '',
@MilesByLand	= 90,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Godsgrace',
@To				= 'Lemonwood',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 180

exec dbo.AddRoute
@From			= 'Godsgrace',
@To				= 'Sunspear',
@RoadName		= '',
@MilesByLand	= 250,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Godsgrace',
@To				= 'Saltshore',
@RoadName		= '',
@MilesByLand	= 90,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Saltshore',
@To				= 'Vaith',
@RoadName		= '',
@MilesByLand	= 135,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Vaith',
@To				= 'Hellholt',
@RoadName		= '',
@MilesByLand	= 230,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Hellholt',
@To				= 'Sandstone',
@RoadName		= '',
@MilesByLand	= 115,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Hellholt',
@To				= 'Starfall',
@RoadName		= '',
@MilesByLand	= 170,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Hellholt',
@To				= 'Skyreach',
@RoadName		= '',
@MilesByLand	= 140,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Skyreach',
@To				= 'Yronwood',
@RoadName		= '',
@MilesByLand	= 180,
@MilesByWater	= 0

--By Sea
exec dbo.AddRoute
@From			= 'Pyke', --'Iron Islands',
@To				= 'Flint''s Finger',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 640

exec dbo.AddRoute
@From			= 'Pyke', --'Iron Islands',
@To				= 'Bear Island',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 1500

exec dbo.AddRoute
@From			= 'Pyke', --'Iron Islands',
@To				= 'Faircastle',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 280

exec dbo.AddRoute
@From			= 'Pyke', --'Iron Islands',
@To				= 'Lannisport',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 650

exec dbo.AddRoute
@From			= 'Pyke', --'Iron Islands',
@To				= 'Shield Island',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 600

exec dbo.AddRoute
@From			= 'Lannisport',
@To				= 'Shield Islands',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 980

exec dbo.AddRoute
@From			= 'The Shield Islands',
@To				= 'The Arbor',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 630

exec dbo.AddRoute
@From			= 'The Arbor',
@To				= 'Dornish Coast',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 300

exec dbo.AddRoute
@From			= 'The Southern Dornish Coastline',
@To				= 'Lemonwood',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 900

exec dbo.AddRoute
@From			= 'Lemonwood',
@To				= 'Lys',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 530

exec dbo.AddRoute
@From			= 'Lemonwood',
@To				= 'Sunspear',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 85

exec dbo.AddRoute
@From			= 'Sunspear',
@To				= 'Tyrosh',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 430

exec dbo.AddRoute
@From			= 'Tyrosh',
@To				= 'Lys',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 475

exec dbo.AddRoute
@From			= 'Tyrosh',
@To				= 'Myr',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 300

exec dbo.AddRoute
@From			= 'Tyrosh',
@To				= 'Storm''s End',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 450

exec dbo.AddRoute
@From			= 'Tyrosh',
@To				= 'Dragonstone',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 700

exec dbo.AddRoute
@From			= 'Tyrosh',
@To				= 'Pentos',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 660

exec dbo.AddRoute
@From			= 'Tyrosh',
@To				= 'Gulltown',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 1025

exec dbo.AddRoute
@From			= 'Pentos',
@To				= 'Gulltown',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 795

exec dbo.AddRoute
@From			= 'Braavos',
@To				= 'Runestone',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 420

exec dbo.AddRoute
@From			= 'Braavos',
@To				= 'Pentos',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 900

exec dbo.AddRoute
@From			= 'Braavos',
@To				= 'Ramsgate',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 770

exec dbo.AddRoute
@From			= 'Braavos',
@To				= 'Paps',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 450

exec dbo.AddRoute
@From			= 'Braavos',
@To				= 'Lorath',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 380

exec dbo.AddRoute
@From			= 'Lorath',
@To				= 'Ibben',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 3000

exec dbo.AddRoute
@From			= 'Lys',
@To				= 'Volantis',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 800

exec dbo.AddRoute
@From			= 'Volantis',
@To				= 'Naath',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 1270

exec dbo.AddRoute
@From			= 'Volantis',
@To				= 'New Ghis',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 2000

exec dbo.AddRoute
@From			= 'New Ghis',
@To				= 'Old Ghis',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 360

exec dbo.AddRoute
@From			= 'New Ghis',
@To				= 'Astapor',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 1400

exec dbo.AddRoute
@From			= 'New Ghis',
@To				= 'Yunkai',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 1530

exec dbo.AddRoute
@From			= 'New Ghis',
@To				= 'Meereen',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 1640

exec dbo.AddRoute
@From			= 'New Ghis',
@To				= 'Bhorash',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 1470

exec dbo.AddRoute
@From			= 'New Ghis',
@To				= 'Qarth',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 1360

exec dbo.AddRoute
@From			= 'New Ghis',
@To				= 'Ax Island',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 420

exec dbo.AddRoute
@From			= 'New Ghis',
@To				= 'Valyria',
@RoadName		= '',
@MilesByLand	= 100,
@MilesByWater	= 740

exec dbo.AddRoute
@From			= 'Astapor',
@To				= 'Yunkai',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 280

exec dbo.AddRoute
@From			= 'Yunkai',
@To				= 'Meereen',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 130

exec dbo.AddRoute
@From			= 'Volantis',
@To				= 'Dagger Lake',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 715

exec dbo.AddRoute
@From			= 'Dagger Lake',
@To				= 'Qohor',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 430

exec dbo.AddRoute
@From			= 'Dagger Lake',
@To				= 'Norvos',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 470

exec dbo.AddRoute
@From			= 'The Stepstones',
@To				= 'The Wall',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 2870

exec dbo.AddRoute
@From			= 'The Smoking Sea (west)',
@To				= 'The Smoking Sea (east)',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 520

--Essos by land
exec dbo.AddRoute
@From			= 'Myr',
@To				= 'Selhorys',
@RoadName		= '',
@MilesByLand	= 420,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Selhorys',
@To				= 'Volantis',
@RoadName		= '',
@MilesByLand	= 300,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Selhorys',
@To				= 'Qohor',
@RoadName		= '',
@MilesByLand	= 740,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Qohor',
@To				= 'Norvos',
@RoadName		= '',
@MilesByLand	= 525,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Norvos',
@To				= 'Pentos',
@RoadName		= '',
@MilesByLand	= 525,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Volantis',
@To				= 'Mantarys',
@RoadName		= '',
@MilesByLand	= 650,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Volantis',
@To				= 'Myr',
@RoadName		= '',
@MilesByLand	= 725,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Vaes Dothrak',
@To				= 'Volantis',
@RoadName		= '',
@MilesByLand	= 2420,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Vaes Dothrak',
@To				= 'Dagger Lake',
@RoadName		= '',
@MilesByLand	= 2230,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Vaes Dothrak',
@To				= 'Qohor',
@RoadName		= '',
@MilesByLand	= 1850,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Vaes Dothrak',
@To				= 'Bhorash',
@RoadName		= '',
@MilesByLand	= 1350,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Mantarys',
@To				= 'Bhorash',
@RoadName		= '',
@MilesByLand	= 390,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Mantarys',
@To				= 'Oros',
@RoadName		= '',
@MilesByLand	= 510,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Bhorash',
@To				= 'Meereen',
@RoadName		= '',
@MilesByLand	= 420,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Meereen',
@To				= 'Yunkai',
@RoadName		= '',
@MilesByLand	= 145,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Yunkai',
@To				= 'Astapor',
@RoadName		= '',
@MilesByLand	= 320,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Meereen',
@To				= 'Vaes Dothrak',
@RoadName		= '',
@MilesByLand	= 1115,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Meereen',
@To				= 'Qarth',
@RoadName		= '(by raven)',
@MilesByLand	= 1435,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Astapor',
@To				= 'Qarth',
@RoadName		= '(by raven)',
@MilesByLand	= 1445,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Lys',
@To				= 'Disputed Lands',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 140

exec dbo.AddRoute
@From			= 'Tyrosh',
@To				= 'Disputed Lands',
@RoadName		= '',
@MilesByLand	= 0,
@MilesByWater	= 20

exec dbo.AddRoute
@From			= 'Myr',
@To				= 'Dagger Lake',
@RoadName		= '',
@MilesByLand	= 650,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Myr',
@To				= 'Pentos',
@RoadName		= '',
@MilesByLand	= 650,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Pentos',
@To				= 'Braavos',
@RoadName		= '(by raven)',
@MilesByLand	= 720,
@MilesByWater	= 0

exec dbo.AddRoute
@From			= 'Norvos',
@To				= 'Braavos',
@RoadName		= '(by raven)',
@MilesByLand	= 640,
@MilesByWater	= 0