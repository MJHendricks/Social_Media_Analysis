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