-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Task 1: Design The Database

-- Create the database
CREATE DATABASE IF NOT EXISTS A00125081; -- student number for database name
USE A00125081;

-- ===================================================================================================
-- ====================================== Region ====================================================
-- ===================================================================================================
-- An argument could be made to have region type as its own table but we will cross that bridge when 
-- we come to it. Perhaps this is not 'normalised' but I would rather not abstract for simplicity

-- Region code could have been chosen as PK but I chose to just use an integer

CREATE TABLE IF NOT EXISTS Region (
    RegionID INT PRIMARY KEY,
    RegionCode CHAR(3) NOT NULL UNIQUE,
    RegionName VARCHAR(50) NOT NULL,
    RegionType VARCHAR(50) NOT NULL
);


-- ===================================================================================================
-- ===================================== Location ====================================================
-- ===================================================================================================

CREATE TABLE IF NOT EXISTS Location (
    LocationID INT PRIMARY KEY,
    RegionID INT NOT NULL, -- FK
    LocationName VARCHAR(50) NOT NULL,
    
    FOREIGN KEY (RegionID) REFERENCES Region(RegionID)
);


-- ===================================================================================================
-- ======================================= Quest ====================================================
-- ===================================================================================================

CREATE TABLE IF NOT EXISTS Quest (
    QuestID INT PRIMARY KEY,
    LocationID INT NOT NULL, -- FK
    QuestName VARCHAR(100) NOT NULL,

    FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
);

-- ===================================================================================================
-- ======================================= Skill ====================================================
-- ===================================================================================================

CREATE TABLE IF NOT EXISTS SkillType (
    SkillTypeID INT PRIMARY KEY,
    SkillTypeName VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Skill (
    SkillID INT PRIMARY KEY,
    SkillTypeID INT NOT NULL, -- FK
    SkillName VARCHAR(40) NOT NULL,
    FOREIGN KEY (SkillTypeID) REFERENCES SkillType(SkillTypeID)
);

-- ===================================================================================================
-- ======================================= Faction ===================================================
-- ===================================================================================================

CREATE TABLE IF NOT EXISTS Faction (
    FactionID INT PRIMARY KEY,
    FactionCode VARCHAR(5) NOT NULL,
    FactionName VARCHAR(50) NOT NULL,
    FactionMotto VARCHAR(100)
);

-- ===================================================================================================
-- ===================================== Player ===================================================
-- ===================================================================================================

CREATE TABLE IF NOT EXISTS Player(
    PlayerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender CHAR(1) NOT NULL
);


CREATE TABLE IF NOT EXISTS Member (
    MemberID INT PRIMARY KEY,
    FactionID INT NOT NULL, -- FK
    PlayerID INT NOT NULL, -- FK
    FOREIGN KEY (FactionID) REFERENCES Faction(FactionID),
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);

CREATE TABLE IF NOT EXISTS PlayerSkill (
    PlayerSkillID INT PRIMARY KEY,
    SkillID INT NOT null, -- FK
    PlayerID INT NOT null, -- FK
    FOREIGN KEY (SkillID) REFERENCES Skill(SkillID),
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID)
);

CREATE TABLE IF NOT EXISTS PlayerQuest (
    PlayerQuestID INT PRIMARY KEY,
    PlayerID INT NOT NULL, -- FK
    QuestID INT NOT NULL, -- FK
    FOREIGN KEY (PlayerID) REFERENCES Player(PlayerID),
    FOREIGN KEY (QuestID) REFERENCES Quest(QuestID)
);