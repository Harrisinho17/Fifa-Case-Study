import pandas as pd
import os

# Define paths
input_folder = "/Users/aharris/Documents/GitHub/Fifa-Case-Study/Data/TransposedData"
output_folder = "/Users/aharris/Documents/GitHub/Fifa-Case-Study/Data/CleanedData"
os.makedirs(output_folder, exist_ok=True)

def drop_unnamed_columns(data):
    return data.loc[:, ~data.columns.str.contains('^Unnamed', case=False)]

def remove_first_row(data):
    return data.drop(index=0) if len(data) > 0 else data

def process_file(input_file, output_file):
    try:
        
        data = pd.read_csv(input_file, low_memory=False)
        
        data = drop_unnamed_columns(data)
        
        # Drop row at index 1
        if "case_management.csv" in input_file.lower():
            data = remove_first_row(data)
        
        
        data.to_csv(output_file, index=False)
        print(f"Processed and saved: {output_file}")
    except Exception as e:
        print(f"Error processing file {input_file}: {e}")


for filename in os.listdir(input_folder):
    if filename.endswith(".csv"):
        input_file = os.path.join(input_folder, filename)
        output_file = os.path.join(output_folder, f"cleaned_{filename}")
        process_file(input_file, output_file)

print("All files processed!")