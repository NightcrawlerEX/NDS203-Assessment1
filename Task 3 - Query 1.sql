-- Student: James Simpson
-- Student No: A00125081
-- https://github.com/NightcrawlerEX/NDS203-Assessment1

-- Print all skills that can be learned in this database. 
-- Display Columns: Name and Type.

USE A00125081; -- database name is student number

SELECT SkillName, SkillType
FROM Skill
LEFT JOIN SkillType
    On Skill.SkillTypeID = SkillType.SkillTypeID