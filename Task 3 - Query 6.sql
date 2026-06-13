-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Print the number of quests given in each Location. 
-- Display Columns: Location Name, Number of quests. 

USE A00125081; -- database name is student number

SELECT LocationName, COUNT(QuestID)
FROM Location
LEFT JOIN Quest
    ON Location.LocationID = Quest.LocationID
GROUP BY Location.LocationID, Location.LocationName

