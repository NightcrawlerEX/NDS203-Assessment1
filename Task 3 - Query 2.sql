-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Print all Female NPCs. 
-- Display Columns: First Name and Last Name. 

USE A00125081; -- database name is student number

SELECT FirstName, LastName
FROM Player
WHERE Gender = 'F'