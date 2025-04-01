import pandas as pd

# Load the XLSX file
df = pd.read_excel('data.xlsx')

# Save as CSV
df.to_csv('data.csv', index=False)
