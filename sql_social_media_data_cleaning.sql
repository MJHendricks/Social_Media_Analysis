SELECT TOP (1000) [Platform]
      ,[Post ID]
      ,[Post Type]
      ,[Post Content]
      ,[Post Timestamp]
      ,[Likes]
      ,[Comments]
      ,[Shares]
      ,[Impressions]
      ,[Reach]
      ,[Engagement Rate]
      ,[Audience Age]
      ,[Audience Gender]
      ,[Audience Location]
      ,[Audience Interests]
      ,[Campaign ID]
      ,[Sentiment]
      ,[Influencer ID]
  FROM [social].[dbo].[data_1$]

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

-- Drop columns that i wont be using to improve performance
ALTER TABLE Social_Media_Data
DROP COLUMN "Post TimeStamp", "Audience Interests", "Campaign ID", "Sentiment", "Influencer ID";