CREATE DATABASE Tablue_Project_1
USE Tablue_Project_1;

SELECT * FROM [dbo].[Depression+Student+Dataset];

-- CHECKING OF GENDER GROUP:
SELECT Gender,COUNT(*) AS Gender_Count
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Gender;

-- TRANSFORMING OF GENDER GROUP:
UPDATE [dbo].[Depression+Student+Dataset]
SET Gender='M' WHERE Gender='MALE';

UPDATE [dbo].[Depression+Student+Dataset]
SET Gender='F' WHERE Gender='FEMALE';

-- CHECKING THE AGE COLUMN:-
SELECT Age,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Age
ORDER BY AGE ASC;

-- CREATING AGE_GROUP COLUMN:
ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD Age_Group varchar(max)

--FILLING VALUES INSIDE AGE_GROUP:
UPDATE [dbo].[Depression+Student+Dataset]
SET AGE_GROUP =

CASE 
WHEN Age BETWEEN 18 AND 24 THEN '18-24'
WHEN Age BETWEEN 25 AND 30 THEN '25-30'
ELSE '30+'
END

-- CREATING AN INDEX COLUMN:
ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD index_column INT IDENTITY(1,1);

--CHANGE THE TYPE-WRITING OF DERPRESSION COLUMN

--CONVERTING THE TYPE OF DEPRESSION COLUMN
ALTER TABLE [dbo].[Depression+Student+Dataset]
ALTER COLUMN DEPRESSION VARCHAR(MAX);

--CONVERT 1 AS YES, 0 AS NO
UPDATE [dbo].[Depression+Student+Dataset]
SET Depression='YES' WHERE DEPRESSION='1';

UPDATE [dbo].[Depression+Student+Dataset]
SET Depression='NO' WHERE DEPRESSION='0';

-- CHECKING OF COLUMN QUALITY:
SELECT * FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME LIKE 'Depression+Student+Dataset';

SELECT Academic_Pressure,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Academic_Pressure;

SELECT Study_Hours,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Study_Hours;

SELECT Study_Satisfaction,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Study_Satisfaction;

SELECT Sleep_Duration,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Sleep_Duration;

SELECT Dietary_Habits,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Dietary_Habits;

SELECT Have_you_ever_had_suicidal_thoughts,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Have_you_ever_had_suicidal_thoughts;

SELECT Financial_Stress,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Financial_Stress;

SELECT Family_History_of_Mental_Illness,COUNT(*)
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Family_History_of_Mental_Illness;

