-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Print all Quests given from NPCs in the location ‘Arcane Capital’. 
-- Display Columns: Quest Name, NPC First Name

USE A00125081; -- database name is student number

SELECT Quest.QuestName, Player.FirstName
FROM Player
LEFT JOIN PlayerQuest ON Player.PlayerID = PlayerQuest.PlayerID
LEFT JOIN Quest ON Quest.QuestID = PlayerQuest.QuestID
LEFT JOIN Location ON Location.LocationID = Quest.LocationID
WHERE Location.LocationName = 'Arcane Capital'