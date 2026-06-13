-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Print all Quests that are given out by ‘Warriors United’ in a ‘Large Scale City’.
-- Display Columns: Quest Name, NPC First Name. 

USE A00125081; -- database name is student number

SELECT Quest.QuestName, Player.FirstName
FROM Player
LEFT JOIN PlayerQuest ON Player.PlayerID = PlayerQuest.PlayerID
LEFT JOIN Quest ON Quest.QuestID = PlayerQuest.QuestID
LEFT JOIN Location ON Location.LocationID = Quest.LocationID
LEFT JOIN Region ON Location.RegionID = Region.RegionID
LEFT JOIN Member ON Member.PlayerID = Player.PlayerID
LEFT JOIN Faction ON Faction.FactionID = Member.FactionID
WHERE Faction.FactionCode = 'WAR' AND Region.RegionType = 'Large Scale City'