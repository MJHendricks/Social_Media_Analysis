# Social Media Engagement and Reach Dashboard

This project utilizes a combination of SQL Queries and Tableau for the visualization of the audience distribution, reach and engagement of a brand over multiple social media platforms for 2024 up to March 8.

## Dataset
- [The original dataset](https://www.kaggle.com/datasets/aliredaelblgihy/social-media-engagement-report) contains 100,000 posts across various social media platforms, providing details such as engagement, reach, and other post-related information.
  
## Tools

- SQL Server Management Studio
- Tableau

## Cleaning
- The dataset was initially split into two sheets in the excel workbook as the dataset was too large for the xls format. This was joined together into a single table.
- The "Post Timestamp" column was split into seperate "Date" and "Time" columns.
- Unused columns were dropped to improve performance.
- Only 2024 data was used for the visualization.
  

## Visualization

The visualization contains the following information:
- Total Impressions and Average Engagement by Time of Day for selected month(s), day of the week and platform.
- Global Reach for current selected month(s) and platforms.
- Distribution of Audience Gender and Age for month, day of the week and platform.
- Total Engagement (Likes, Comments, Shares) for each selected platform for month(s) and day of the week .

## Output

- [View the visualization on Tableau Public.](https://public.tableau.com/app/profile/matthew.hendricks3792/viz/Book1_17132732550360/Dashboard1)
- The dataset used for the above visualization has been exported as a csv file, social_media_data_clean_output.csv.
