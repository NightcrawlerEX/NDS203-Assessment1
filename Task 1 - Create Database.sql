-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Task 1: Design The Database

-- Create the database
CREATE DATABASE IF NOT EXISTS A00125081; -- student number for database name
USE A00125081;

-- Regions
-- An argument could be made to have region type as its own table but we will cross that bridge when 
-- we come to it. Perhaps this is not 'normalised' but I would rather not abstract for simplicity

-- Region code could have been chosen as PK but I chose to just use an integer

CREATE TABLE IF NOT EXISTS Region (
    RegionID INT PRIMARY KEY,
    RegionCode CHAR(3) NOT NULL UNIQUE,
    RegionName VARCHAR(50) NOT NULL,
    RegionType VARCHAR(50) NOT NULL
);


-- Locations

CREATE TABLE IF NOT EXISTS Location (
    LocationID INT PRIMARY KEY,
    RegionID INT NOT NULL, -- FK
    LocationName VARCHAR(50) NOT NULL,
    
    FOREIGN KEY (RegionID)
        REFERENCES Region(RegionID)
);
