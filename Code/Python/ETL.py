import pandas as pd
from sqlalchemy import create_engine
from pathlib import Path


db_username = 'postgres'
db_password = 'Mudkip'
db_host = 'localhost'
db_port = '5432'
db_name = 'FifaCaseStudy'


engine = create_engine(f'postgresql://{db_username}:{db_password}@{db_host}:{db_port}/{db_name}')


cleaned_data_path = Path('/Users/aharris/Desktop/Fifa Case Study/Data/CleanedData')


files_to_tables = {
    'cleaned_transposed_arabic_ivr.csv': 'arabic_ivr',
    'cleaned_transposed_english_ivr.csv': 'english_ivr',
    'cleaned_transposed_french_ivr.csv': 'french_ivr',
    'cleaned_transposed_german_ivr.csv': 'german_ivr',
    'cleaned_transposed_spanish_ivr.csv': 'spanish_ivr',
    'cleaned_transposed_total_ivr.csv': 'total_ivr',
    'cleaned_case_management.csv': 'case_management'
}

from sqlalchemy.types import Date

for file_name, table_name in files_to_tables.items():
    file_path = cleaned_data_path / file_name
    if file_path.exists():
        df = pd.read_csv(file_path, low_memory=False)
        df.to_sql(
            table_name,
            engine,
            if_exists='replace',
            index=False,
            dtype={
                'date': Date()  # Explicitly set the Date column to DATE type
            }
        )
        print(f"Table '{table_name}' created and data imported successfully from '{file_name}'.")
    else:
        print(f"File '{file_name}' not found in '{cleaned_data_path}'.")

print("All available tables have been created and data imported successfully!")