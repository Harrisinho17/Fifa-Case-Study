# Specialist Ticketing Engineer, FIFA World Cup 2026 - Alexander Harris 

# Overview
The expectation is that the candidate will be able to:

Analyze the data to be prepared to answer some questions about the trends, such as: What are the peak seasons, do we have more calls/casses during weekdays or weeknds, etc. 

It is also expected from the cnadidate to be able to identify some other trends in the data and, especually, to understand how thge condidate approaches the challenge of presenting these insights in a way that could be easily understandable to everyone.

The last step is to prepare the process to automatize future reports with similar data. 


# Key Questions

### Peak Activity Analysis
1. **What are the daily, weekly, or monthly peak periods for customer inquiries?**
    -  `Per language (daily_peaks.sql`, `weekly_peaks.sql, monthly_peaks.sql`, `total_daily_peaks.sql`, `total_weekly_peaks.sql`, `total_monthly_peaks.sql`
2. **What are the top 5 IVR topics generating the most customer interactions?**
    - `top_five_topics.sql`, `total_top_five_topics.sql`
3. **How effective is the IVR system in addressing customer questions before they escalate to an agent?**
    - `IVR_effectiveness,sql`
4. **Which IVR topic showed the greatest variability in daily interaction counts?**
    - `StdDev_by_topic.sql`, `total_stddev_by_topic.sql`
5. **Is there more interactions during the week or during the weeknd?**
    - `weeks_and_weeknds.sql`, `total_weeks_and_weeknds.sql`

### Language Breakdown
1. **What percentage of customer interactions come from each language?**
    - `percentage_by_language.sql`
2. **What percentage of total interactions is contributed by each IVR topic?**
    - `percentage_by_toppic.sql`

### 2022 Instances

1. **What is the Year Over Year analysis based on the data given?**
   -`YOY_IVR_analysis`

2. **What is the spread of instances by langauge, source, and origin?**
   - `instance_lanaguage.sql`
   - `instance_origin.sql`
   - `instance_source.sql`

## Tools and Technologies
- **Programming Language**: Python
- **Libraries**: Pandas, NumPy, SQLAlchemy
- **Database**: PostgreSQL
- **Notebook Environment**: VSCode
- **Visualization**: Tableau


# Project Structure

<div align="center">
    
## Code

</div>

### Python

`1.Transpose_Data.py`
- **Purpose**: Transposes CSV files with a ‘Date’ column, copies “case_management.csv” unchanged, and saves them to an output folder. It skips files without a ‘Date’ column and logs the process.
  
`2.Rename_Column.py`
- **Purpose**: Renames the first column to “Date” in all CSV files in a folder and saves the updates, ensuring consistency across files.
  
`3.Standardize_Columns.py`
- **Purpose**: Processes all CSV files in a folder by standardizing column names (making them lowercase, removing special characters, and handling duplicates), renaming the first column to “date,” converting it to a standardized date format, and saving the updates. It ensures consistent and clean data across all files.
  
`4.Cleaned.py`
- **Purpose**: Processes CSV files by removing unnamed columns and adjusting “case_management.csv” by deleting its first row. Cleaned files are saved in a new folder with “cleaned_” added to their filenames.
  
`ETL.py`
- **Purpose**: Uploads cleaned CSV files to a PostgreSQL database, matching each file to a specific table. Date columns are updated to Date datatypes. It logs success or missing files, ensuring all available data is imported into the database.

<div align="center">
    
## SQL

</div>

Case Management
- `total_cases_view.sql`
   - **Purpose**: Create a view of total sum of recieved ticket issues on all streams of information in 2022.

- `instance_language.sql`
   - **Purpose**: SUM of instances by langauge recieved.

- `instance_origin.sql`
   - **Purpose**: SUM of instances by origin. 

- `instance_source.sql`
   - **Purpose**: SUM of instances by source.

- `new_cases.sql`
   - **Purpose**: Analysis of new cases by date. 

- `total_ivr_instances_22_view.sql`
   - **Purpose**: An analysis to create a view with the sum of all ivr instances by date in 2022. 



Languages
- `1_1_daily_peaks.sql`
   - **Purpose**: Retrives the Sum of all instances excluding the return to main options by day for each language. 
    
- `1_1_weekly_peaks.sql`
   - **Purpose**: Retrives the Sum of all instances excluding the return to main options by day for each language.
    
- `1_1_monthly_peaks.sql`
   - **Purpose**: Retrives the Sum of all instances excluding the return to main options by day for each language.

- `1_2_total_topics.sql`
   - **Purpose**: Retrives the Sum of all instances aggregating similar topics. 

- `1_3_total_IVR_effectiveness.sql`
   - **Purpose**: Retrieves overall effectiveness of IVR resposnes by comparing it to the total of transfer to agent over total instances. 

- `1_4_total_stddev_by_topic.sql`
   - **Purpose**: Retrieves the standard deviation of IVR topics. 

- `1_5_total_weeks_and_weekends.sql.sql`
   - **Purpose**: Retrieves spread of weeks and weekends and the average interactions per day.  

- `2_2_percentage_by_topic.sql`
   - **Purpose**: Calculates the percentage spread by topic usage in the IVR.  



#### Total IVR

- `1_1_total_daily_peaks.sql`
   - **Purpose**: Retrive the daily instances of IVR usage in the Total_IVR dataset.
  
- `1_1_total_monthly_peaks.sql`
   - **Purpose**: Retrieves the Monthly instances of IVR usage in the Total_IVR dataset.
  
- `1_1_total_weekly_peaks.sql` 
   - **Purpose**: Retrieves the Weekly instances of IVR usage in the Total_IVR dataset.
  
- `1_2_total_topics.sql`
   - **Purpose**: Retrieves the amount of interactions by topics ordering by DESC.
  
- `1_3_total_IVR_effectiveness.sql`
   - **Purpose**: Retrieves the overall effectiveness of the IVR program.
  
- `1_4_total_stddev_by_topic.sql`
   - **Purpose**: Retrieves the standard deviation of topics.
  
- `1_5_total_weeks_and_weekends.sql` 
   - **Purpose**: Retrieves a weeks and weekends analysis breaking down the days with the most instances of IVR usage.
  
- `2_2_percentage_by_topic.sql`
   - **Purpose**: Retrieves the percentage of total IVR usage by topic. 

- `total_ivr_instances_23_view.sql`
   - **Purpose**: An analysis to create a view with the sum of all ivr instances by date in 2023. 

- `YOY_IVR_analysis.sql`
   - **Purpose**: Retrives the difference between the sums of total instances by month and gets a percentage of change. 

## Data 

<div align="center">
    
### Analyzed Data
    
</div>

- Case Management
   - `total_cases_view.csv`
   - `instance_language.csv`
   - `instance_origin.csv`
   - `instance_source.csv`
   - `new_cases.csv`

- Languages
1_1_peak_analysis

   - Arabic
      - `Ar_daily_peaks.csv`  
      - `Ar_monthly_peaks.csv`  
      - `Ar_weekly_peaks.csv`
    
   - English
       - `En_daily_peaks.csv`  
       - `En_monthly_peaks.csv`  
       - `En_weekly_peaks.csv`
    
   - French
       - `Fr_daily_peaks.csv`  
       - `Fr_monthly_peaks.csv`  
       - `Fr_weekly_peaks.csv`
    
   - German
       - `Ge_daily_peaks.csv`  
       - `Ge_monthly_peaks.csv`  
       - `Ge_weekly_peaks.csv`
    
   - Spanish
       - `Sp_daily_peaks.csv`  
       - `Sp_monthly_peaks.csv`  
       - `Sp_weekly_peaks.csv`
    
   - Top Five IVR
       - `1_3_IVR_effectiveness.csv`  
       - `1_4_stddev_by_topic.csv`  
       - `1_5_weeks_and_weekends.csv`  
       - `2_1_percentage_by_language.csv`  
       - `top_five_languages.csv`

- Total IVR
    - `1_1_total_daily_peaks.csv`  
    - `1_1_total_monthly_peaks.csv`  
    - `1_1_total_weekly_peaks.csv`  
    - `1_3_total_IVR_effectiveness.csv`  
    - `1_4_total_stddev_by_topics.csv`  
    - `2_2_percentage_by_topic.csv`

- `YOY_IVR_analysis.csv`


<div align="center">
    
### Cleaned Data

</div>

- `cleaned_case_management.csv`
- `cleaned_transposed_arabic_ivr.csv`
- `cleaned_transposed_english_ivr.csv`
- `cleaned_transposed_french_ivr.csv`
- `cleaned_transposed_german_ivr.csv`
- `cleaned_transposed_spanish_ivr.csv`
- `cleaned_transposed_total_ivr.csv`

<div align="center">
    
### Raw Data
    
</div>

- `Arabic.IVR.csv`
- `Case_Management.csv`
- `Englsih_IVR.csv`
- `French_IVR.csv`
- `French_IVR.csv`
- `German_IVR.csv`
- `Spanish_IVR.csv`
- `Total_IVR.csv`

<div align="center">
    
### Transposed Data
    
</div>

- `case_management.csv`
- `transposed_arabic_ivr.csv`
- `transposed_english_ivr.csv`
- `transposed_french_ivr.csv`
- `transposed_german_ivr.csv`
- `transposed_spanish_ivr.csv`
- `transposed_total_ivr.csv`


## Tools and Technologies

- **Programming Language**: Python
- **Libraries**: Pandas, NumPy, SQLAlchemy
- **Database**: PostgreSQL
- **Notebook Environment**: VSCode
- **Visualization**: Tableau

## Project Instructions 
**Data Engineer Case.xlsx** 


# Conclusion 

Overall this case study challenging but intriguing. The initial data set was well designed for human analysis and input however in order to analyze the data set with SQL I would need to complete some data formating scripts as well as removing and modifying null values within the dataset. The four python scripts that resulted were `1.transpose_data.py` which swapped the column names and dates on the diaganol axis which resulted in the dates on the rows side and the topics on the columns section. Case management was excluded from this trnasposing process as it was already in that format. It was still added to the transposed folder but without the prefix. The next issue I noticed was that the date column was not labled, my solution to this was `2.Rename_Colum.py`. The next one,`3.Standardize_columns.py`, worked to standardize the columns, handle special characters and convert all of the column names to lower case to make SQL scripts easier in PGAdmin. The final cleaning script was `4.Cleaned.py` and was meant to drop empty rows, and unanmed colums. I noticed the last column in the case_management dataset had an unamed column that had some months in it, this data correlated and was redundant as the dates were in the first column. I am aware these four scripts could have been implemented into one script however I was getting many errors and was running out of time to complete the case study. The final Python script was `ETL.py` and was meant to load the data from my folders to pgadmin without having to define each column. 


During the intial analysis I found some interesting KPI's. I noticed the total IVR dataset's SUM of usage was more than the sum of the five sperate data sets specified by lanague. This lead me to beleive that the total IVR data set must include other langauges that were not included in the case study. For peak analysis I had to work with both the total data set and for each lanaguage so I found it best to do this one seperately and find trends in the data. After this I summed all of the langauges created a view and answered the rest of the questions with that data. 
