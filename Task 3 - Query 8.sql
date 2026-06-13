-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Change the data type of the field ‘Gender’ to CHAR() and update every NPC 
-- to hold the values ‘Male’ and ‘Female’ instead of ‘M’ and ‘F’ respectively using a
-- single update call. Then show all NPCs. 
-- Display Columns: First Name, Last Name and Gender

USE A00125081; -- database name is student number

ALTER TABLE Player MODIFY Gender CHAR(6);

UPDATE Player
SET Gender = CASE Gender
    WHEN 'M' THEN "Male"
    WHEN 'F' THEN "Female"
END;

-- Reference:
-- MySQL CASE Statement. (n.d.). Www.w3schools.com. https://www.w3schools.com/mysql/mysql_case.asp