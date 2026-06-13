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

INSERT INTO SkillType(SkillTypeID, SkillTypeName) VALUES
(1, 'Melee'),
(2, 'Magic'),
(3, 'Non Lethal');

INSERT INTO Skill(SkillID, SkillTypeID, SkillName) VALUES
(1, 1, 'Hamstring'),
(2, 2, 'Water Torrent'),
(3, 2, 'Fireball'),
(4, 1, 'Heart Strike'),
(5, 1, 'Cleave'),
(6, 1, 'Lunging Strike'),
(7, 1, 'Overpower'),
(8, 1, 'Backstab'),
(9, 3, 'Steal'),
(10, 1, 'Eye Gouge'),
(11, 3, 'Sap'),
(12, 2, 'Ice Blast'),
(13, 2, 'Thunder Bolt'),
(14, 2, 'Arcane Storm');


