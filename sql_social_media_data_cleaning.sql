  -- merge two datasets together
SELECT * INTO Social_Media_Data
FROM [data_1$];

INSERT INTO Social_Media_Data
SELECT *
FROM [data_2$];

SELECT * FROM Social_Media_Data

-- split post timestamp column into date and time
ALTER TABLE Social_Media_Data
ADD "Date Posted" DATE, "Time Posted" TIME;

-- update date column
UPDATE Social_Media_Data
SET "Date Posted" = CONVERT(DATE, [Post Timestamp]);

-- update time column
UPDATE Social_Media_Data
SET "Time Posted" = CONVERT(TIME, [Post Timestamp]);

-- add a column for just the hours
ALTER TABLE Social_Media_Data
ADD "Hour Posted" INT;


UPDATE Social_Media_Data
SET "Hour Posted" = DATEPART(HOUR, [Time Posted]);

-- Drop columns that i wont be using to improve performance
ALTER TABLE Social_Media_Data
DROP COLUMN "Post TimeStamp", "Audience Interests", "Campaign ID", "Sentiment", "Influencer ID";

-- select only 2024 data for the viz
SELECT * FROM Social_Media_Data
WHERE DATEPART(YEAR, [Date Posted]) = '2024';

