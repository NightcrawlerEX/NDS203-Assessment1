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

INSERT INTO Faction(FactionID, FactionCode, FactionName, FactionMotto) VALUES
(1, 'MAG', 'School of Magicians', 'Always a spell for the job'),
(2, 'WAR', 'Warriors United', 'Ready for war!'),
(3, 'ROG', 'Rogues Guild', 'Never get caught');


INSERT INTO Player(PlayerID, FirstName, LastName, Gender) VALUES
(1, 'Adelina', 'Dragonscream', 'F'),
(2, 'Agaell', 'Clavira', 'F'),
(3, 'Alicia', 'Stormmane', 'F'),
(4, 'Cara', 'the Menace', 'F'),
(5, 'Davis', 'Smokes', 'M'),
(6, 'Pikipius', 'Tepewrick', 'M');

INSERT INTO Member(MemberID, FactionID, PlayerID) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 2),
(4, 2, 3),
(5, 2, 4),
(6, 3, 4),
(7, 3, 5),
(8, 1, 6),
(9, 2, 6);

INSERT INTO PlayerSkill(PlayerSkillID, PlayerID, SkillID) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 3, 5),
(6, 4, 6),
(7, 4, 7),
(8, 4, 1),
(9, 4, 8),
(10, 5, 9),
(11, 5, 10),
(12, 5, 11),
(13, 6, 3),
(14, 6, 12),
(15, 6, 13),
(16, 6, 4),
(17, 6, 2),
(18, 6, 14),
(19, 6, 7);

INSERT INTO PlayerQuest(PlayerQuestID, PlayerID, QuestID) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 6, 4);