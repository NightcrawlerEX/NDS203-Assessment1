-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1
-- Task 2: Insert Data

USE A00125081; -- database name is student number

-- ==============================================================================
-- ============================ Task 2: Insert Data =============================
-- ==============================================================================

INSERT INTO Region (RegionID, RegionCode, RegionName, RegionType) VALUES
(1, 'ARC', 'Arcanum', 'Large Scale City'),
(2, 'HER', 'Herodi', 'Magical Demiplane');

INSERT INTO Location(LocationID, RegionID, LocationName) VALUES
(1, 1, 'Warriors HQ'),
(2, 2, 'The Void'),
(3, 1, 'Arena Pits'),
(4, 1, 'Poor Quarter'),
(5, 1, 'Arcane Capital');

INSERT INTO Quest(QuestID, LocationID, QuestName) VALUES
(1, 1, 'Kill the dragon lord: Aegeras'),
(2, 2, 'Clear the training room of summoned creatures'),
(3, 3, 'Capture a storm giant'),
(4, 5, 'Research the blue crystal');