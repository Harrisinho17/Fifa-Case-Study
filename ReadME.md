# Specialist Ticketing Engineer, FIFA World Cup 2026 - Alexander Harris 

## Overview
The expectation is that the candidate will be able to:

Analyze the data to be prepared to answer some questions about the trends, such as: What are the peak seasons, do we have more calls/casses during weekdays or weeknds, etc. 

It is also expected from the cnadidate to be able to identify some other trends in the data and, especually, to understand how thge condidate approaches the challenge of presenting these insights in a way that could be easily understandable to everyone.

The last step is to prepare the process to automatize future reports with similar data. 


## Key Questions

### Peak Activity Analysis
1. **What are the daily, weekly, or monthly peak periods for customer inquiries?**
    -  Per language (daily_peaks.sql, weekly_peaks.sql, monthly_peaks.sql), total_daily_peaks.sql, total_weekly_peaks.sql, total_monthly_peaks.sql
2. **What are the top 5 IVR topics generating the most customer interactions?**
    - top_five_topics.sql, total_top_five_topics.sql
3. **How effective is the IVR system in addressing customer questions before they escalate to an agent?**
    - IVR_effectiveness,sql
4. **Which IVR topic showed the greatest variability in daily interaction counts?**
    - StdDev_by_topic.sql, total_stddev_by_topic.sql
5. **Is there more interactions during the week or during the weeknd?**
    - weeks_and_weeknds.sql, total_weeks_and_weeknds.sql

### Language  Breakdown
1. **What percentage of customer interactions come from each language?**
    - percentage_by_language.sql
2. **What percentage of total interactions is contributed by each IVR topic?**
    - percentage_by_toppic.sql



## Tools and Technologies
- **Programming Language**: Python
- **Libraries**: Pandas, NumPy, SQLAlchemy
- **Database**: PostgreSQL
- **Notebook Environment**: VSCode
- **Visualization**: Tableau

# Conclusion 
**Peak Instances Analysis** - 
- Spanish
- Arabic
- English ( Had the most instances of IVR usage)
- French
- German
- Total_IVR

- total_ivr is different than the sum total of top 5 language IVR making it likely other langauges are involved that are not part of the data set I was given. 

**Instances Analysis Dashboard** - 
- instances of IVR usage are more apparent during the week rather than the weekend. 
- IVR effectiveness is 84% with the total IVR dataset. 
- Standard deviation of IVR instances show that "already Submitted_application" had the highest variablity meaning that interaction counts for these topics fluctuate significantly, possibly due to external factors (More analysis required). 

**Language Breakdown**


## Project Structure

## -Python
#### `1.Transpose_Data.py`
- **Purpose**: The script transposes CSV files with a ‘Date’ column, copies “case_management.csv” unchanged, and saves them to an output folder. It skips files without a ‘Date’ column and logs the process. 


#### `2.Rename_Column.py`
- **Purpose**: This script renames the first column to “Date” in all CSV files in a folder and saves the updates, ensuring consistency across files.


####  `3.Standardize_Columns.py`
- **Purpose**: This script processes all CSV files in a folder by standardizing column names (making them lowercase, removing special characters, and handling duplicates), renaming the first column to “date,” converting it to a standardized date format, and saving the updates. It ensures consistent and clean data across all files.


####  `4.Cleaned.py`
- **Purpose**: Processes CSV files by removing unnamed columns and adjusting “case_management.csv” by deleting its first row. Cleaned files are saved in a new folder with “cleaned_” added to their filenames.


#### `ETL.py`
- **Purpose**: This script uploads cleaned CSV files to a PostgreSQL database, matching each file to a specific table. Date columns are updated to Date datatypes. It logs success or missing files, ensuring all available data is imported into the database.


### SQL
#### Case Management
- `total_cases_view.sql`
- **Purpose**: Create a view of total sum of recieved ticket issues on all streams of information in 2022.

- `cases_by_language.sql`
- **Purpose**: SUM of instances by language. 


#### Languages
- `daily_peaks.sql`
- **Purpose**: Retrives the Sum of all instances excluding the return to main options by day for each language. 

- `weekly_peaks.sql`
- **Purpose**: Retrives the Sum of all instances excluding the return to main options by day for each language.

- `monthly_peaks.sql`
- **Purpose**: Retrives the Sum of all instances excluding the return to main options by day for each language. 


#### Total IVR


## -Data 
#### AnalyzedData

#### CleanedData
**cleaned_case_management.csv**
**cleaned_transposed_arabic_ivr.csv**
**cleaned_transposed_english_ivr.csv**
**cleaned_transposed_french_ivr.csv**
**cleaned_transposed_german_ivr.csv**
**cleaned_transposed_spanish_ivr.csv**
**cleaned_transposed_total_ivr.csv**

#### RawData
**Arabic.IVR.csv**
**Case_Management.csv**
**Englsih_IVR.csv**
**French_IVR.csv**
**French_IVR.csv**
**German_IVR.csv**
**Spanish_IVR.csv**
**Total_IVR.csv**

#### TransposedData
**case_management.csv**
**transposed_arabic_ivr.csv**
**transposed_english_ivr.csv**
**transposed_french_ivr.csv**
**transposed_german_ivr.csv**
**transposed_spanish_ivr.csv**
**transposed_total_ivr.csv**


## Tools and Technologies
- **Programming Language**: Python
- **Libraries**: Pandas, NumPy, SQLAlchemy
- **Database**: PostgreSQL
- **Notebook Environment**: VSCode
- **Visualization**: Tableau

## Project Instructions 
**Data Engineer Case.xlsx** 








