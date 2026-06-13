-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Task 1: Design The Database

-- Regions
-- An argument could be made to have region type as its own table but we will cross that bridge when 
-- we come to it. Most apps perform reads far more often than writes and joins are expensive so I
-- won't create a seperate table. Perhaps this is not 'normalised' but I would rather not abstract 
-- simply for the sake of hitting a random KPI

CREATE TABLE Region (
    RegionID INT PRIMARY KEY,
    RegionCode CHAR(3) NOT NULL UNIQUE,
    RegionName VARCHAR(45) NOT NULL,
    RegionType VARCHAR(45) NOT NULL
);

