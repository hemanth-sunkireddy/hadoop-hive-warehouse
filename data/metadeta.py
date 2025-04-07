import os
import pandas as pd

# Local folders (assumed to be copies of what's in HDFS)
video_dir = './cropped_videos'
csv_dir = './output_csvs'

# HDFS base paths
hdfs_video_path = 'hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/cropped_videos/'
hdfs_csv_path = 'hdfs://namenode:8020/user/hive/warehouse/plrdatabase.db/output_csvs/'

# Get file lists
video_files = sorted(f for f in os.listdir(video_dir) if f.endswith('.mp4'))
csv_files = sorted(f for f in os.listdir(csv_dir) if f.endswith('.csv'))

# Assign IDs
video_metadata = [(i+1, hdfs_video_path + f) for i, f in enumerate(video_files)]
csv_metadata = [(i+1, hdfs_csv_path + f) for i, f in enumerate(csv_files)]

# Create DataFrames
df_video = pd.DataFrame(video_metadata, columns=['video_id', 'hdfs_path'])
df_csv = pd.DataFrame(csv_metadata, columns=['csv_id', 'hdfs_path'])

# Save to CSVs
df_video.to_csv('video_metadata.csv', index=False, header=False)
df_csv.to_csv('csv_metadata.csv', index=False, header=False)
