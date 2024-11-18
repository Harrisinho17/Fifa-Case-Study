import pandas as pd
import os

# Define Path
input_folder = "/Users/aharris/Documents/GitHub/Fifa-Case-Study/Data/TransposedData" 

for filename in os.listdir(input_folder):
    if filename.endswith(".csv"):
        input_file = os.path.join(input_folder, filename)
        
        data = pd.read_csv(input_file, low_memory=False)
        
        data.rename(columns={data.columns[0]: "Date"}, inplace=True)

        data["Date"] = pd.to_datetime(data["Date"], errors='coerce').dt.date

        data.to_csv(input_file, index=False)
        print(f"Updated file: {filename} - First column renamed to 'date'.")

print("All files processed!")