import pandas as pd
import os

input_folder = "/Users/aharris/Desktop/Fifa Case Study/Data/RawData"
output_folder = "/Users/aharris/Desktop/Fifa Case Study/Data/TransposedData"

os.makedirs(output_folder, exist_ok=True)

for filename in os.listdir(input_folder):
    if filename.endswith(".csv"):
        input_file = os.path.join(input_folder, filename)
        
        lowercase_filename = filename.lower()
        output_file = os.path.join(output_folder, f"transposed_{lowercase_filename}" if "case_management" not in lowercase_filename else lowercase_filename)
        
        if lowercase_filename == "case_management.csv":
            data = pd.read_csv(input_file, low_memory=False)
            data.to_csv(output_file, index=False)
            print(f"Copied {filename} as {lowercase_filename} without transposing to: {output_file}")
            continue
        
        data = pd.read_csv(input_file)
        
        # Check if the first column is missing the label 'Date'
        if 'Date' not in data.columns:
            print(f"'Date' column not found in {filename}. Assuming the first column as 'Date'.")
            data.rename(columns={data.columns[0]: 'Date'}, inplace=True)
        
        # Transpose the data
        transposed_data = data.set_index('Date').T
        
        # Save the transposed file
        transposed_data.to_csv(output_file)
        print(f"Transposed file saved: {output_file}")

print("All files processed!")
