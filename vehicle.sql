SELECT State, count(State) FROM registration WHERE myear < 1990 GROUP BY State;
SELECT Make, count(Make) FROM registration group by Make Order BY count(Make) DESC limit 10;
SELECT count(county) from registration where Electrification  = 'BEV (Battery Electric Vehicle)';
SELECT PaymentType, count(make) FROM registration group by PaymentType ORDER BY count(make) DESC;
SELECT TransactionChannel, count(make) FROM registration group by TransactionChannel ORDER BY count(make) DESC;
SELECT color from registration where color is not NULL group by color;

--what is the model oldest year represented in the database? newest?
--Select Myear FROM registration Order BY Myear ASC limit 1; 
--oldest = 1980
--Select Myear FROM registration Order BY Myear DESC limit 1; 
--newest = 2023

--number of Tesla vehicles by model?
--SELECT model, count(make) FROM registration WHERE make = 'TESLA' group by model ORDER BY count(make) DESC;
--  model   | count
------------+-------
-- MODEL 3  |  1898
-- MODEL Y  |  1615
-- MODEL S  |   545
-- MODEL X  |   395
-- ROADSTER |     4
--(5 rows)

--how are BEVs distributed by county?
--Select county, count(county) from registration where Electrification  = 'BEV (Battery Electric Vehicle)' GROUP BY county ORDER by count(county) DESC;
--         county          | count
---------------------------+-------
-- King                    |  4103
-- Snohomish               |   858
-- Pierce                  |   510
-- Clark                   |   442
-- Kitsap                  |   222
-- Thurston                |   204
-- Whatcom                 |   157
-- Spokane                 |   140
-- Island                  |    78
-- Benton                  |    70
-- Skagit                  |    63
-- Unknown or Out of State |    58
-- San Juan                |    37
-- Cowlitz                 |    36
-- Clallam                 |    35
-- Chelan                  |    34
-- Yakima                  |    33
-- Jefferson               |    28
-- Mason                   |    27
-- Grant                   |    24
-- Franklin                |    24
-- Lewis                   |    23
-- Kittitas                |    20
-- Walla Walla             |    18
-- Grays Harbor            |    17
-- Douglas                 |    10
-- Stevens                 |     8
-- Klickitat               |     7
-- Okanogan                |     6
-- Skamania                |     6
-- Whitman                 |     6
-- Pacific                 |     5
-- Pend Oreille            |     2
-- Asotin                  |     2
-- Adams                   |     2
-- Wahkiakum               |     1
--(36 rows)


--ask one question for yourself
--how many vehicles per FuelTypePrimary?
--SELECT FuelTypePrimary, count(make) FROM registration group by FuelTypePrimary ORDER BY count(make) DESC; 
--             fueltypeprimary              | count
--------------------------------------------+--------
-- Gasoline                                 | 358065
-- Diesel                                   |  17119
-- Flexible Fuel Vehicle (FFV)              |  12689
-- Electric                                 |   9232
-- Ethanol (E85)                            |    128
-- Compressed Natural Gas (CNG)             |     10
-- Liquefied Petroleum Gas (propane or LPG) |     10
-- Hybrid                                   |      5
-- Other                                    |      2
-- Not Applicable                           |      2
--(10 rows)

