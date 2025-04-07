import os
import pandas as pd

# Set your directories
csv_dir = './output_csvs'
video_dir = './cropped_videos'

# Get file lists
csv_files = sorted(f for f in os.listdir(csv_dir) if f.endswith('.csv'))
video_files = sorted(f for f in os.listdir(video_dir) if f.endswith('.mp4'))

# Assign file numbers
csv_numbers = {f: i + 1 for i, f in enumerate(csv_files)}
video_numbers = {f: i + 1 for i, f in enumerate(video_files)}

# Initialize mapping
participant_map = {}

# Helper function to extract participant_id and side
def extract_info(filename, ext):
    name = filename.replace(ext, '')
    try:
        base, side = name.rsplit('_', 1)
        return base, side.lower()
    except ValueError:
        return None, None

# Process CSV files
for f in csv_files:
    pid, side = extract_info(f, '.csv')
    if pid and side in ['left', 'right']:
        if pid not in participant_map:
            participant_map[pid] = {}
        participant_map[pid][f'csv_{side}'] = csv_numbers[f]

# Process Video files
for f in video_files:
    pid, side = extract_info(f, '.mp4')
    if pid and side in ['left', 'right']:
        if pid not in participant_map:
            participant_map[pid] = {}
        participant_map[pid][f'video_{side}'] = video_numbers[f]

# Convert to DataFrame
df = pd.DataFrame.from_dict(participant_map, orient='index')
df.index.name = 'participant_id'
df = df.reset_index()

# Save to CSV
df.to_csv('combined_file_mapping.csv', index=False)
