import pandas as pd
import os
import re

# Define Path
input_folder = "/Users/aharris/Documents/GitHub/Fifa-Case-Study/Data/TransposedData"

# Special Character handling 
def clean_and_deduplicate_columns(columns):
    cleaned_columns = []
    seen = {}

    for col in columns:
        col = col.lower()
        col = re.sub(r'[^a-z\s_]', '', col)
        col = col.strip().replace(' ', '_')
        col = re.sub(r'_+', '_', col) 
        if col in seen:
            seen[col] += 1
            col = f"{col}_{seen[col]}"
        else:
            seen[col] = 1

        cleaned_columns.append(col)
    
    return cleaned_columns

# Standardize case across data set
def standardize_columns(data):
    data.columns = clean_and_deduplicate_columns(data.columns.tolist())
    first_column = data.columns[0]
    data.rename(columns={first_column: "date"}, inplace=True)
    return data

# Convert date column datatype to DateTime(YYYY-MM-DD)
def convert_date_column(data):
    if 'date' in data.columns:
        data['date'] = pd.to_datetime(data['date'], errors='coerce').dt.strftime('%Y-%m-%d')
        print("'date' column converted to datetime.")
    else:
        print("No 'date' column found in DataFrame.")
    return data

def process_file(input_file):
    try:
        data = pd.read_csv(input_file,low_memory=False)
        data = standardize_columns(data)
        data = convert_date_column(data)
        data.to_csv(input_file, index=False)
        print(f"Processed and updated: {input_file}")
    except Exception as e:
        print(f"Error processing file {input_file}: {e}")

for filename in filter(lambda f: f.endswith(".csv"), os.listdir(input_folder)):
    input_file = os.path.join(input_folder, filename)
    process_file(input_file)

print("All files processed!")