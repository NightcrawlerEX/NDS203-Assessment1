-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Print all members of the ‘Rogues Guild’ in ascending order. 
-- Display Columns: First Name, Last Name, Gender and Faction Code.

USE A00125081; -- database name is student number

SELECT Player.FirstName, Player.LastName, Player.Gender, Faction.FactionCode
FROM Player
LEFT JOIN Member
    ON Player.PlayerID = Member.PlayerID
LEFT JOIN Faction
    ON Faction.FactionID = Member.FactionID
WHERE Faction.FactionCode = 'ROG'