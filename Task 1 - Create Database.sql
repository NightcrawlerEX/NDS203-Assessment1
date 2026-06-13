-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Task 1: Design The Database

-- Regions
-- An argument could be made to have region type as its own table but we will cross that bridge when 
-- we come to it. Most apps perform reads far more often than writes and joins are expensive so I
-- won't create one just for expandability
CREATE TABLE IF NOT EXISTS `mydb`.`Region` (
  `RegionCode` VARCHAR(5) NOT NULL,
  `RegionName` VARCHAR(45) NOT NULL,
  `RegionType` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`RegionCode`),
  UNIQUE INDEX `RegionCode_UNIQUE` (`RegionCode` ASC) VISIBLE)
ENGINE = InnoDB;