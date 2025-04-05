from pyhive import hive

# Connect to Hive
conn = hive.Connection(host='localhost', port=10000, database='bsvdatabase')

cursor = conn.cursor()

# Step 1: Show tables
query = "SHOW TABLES"
print(f"Executing: {query}")
cursor.execute(query)
for row in cursor.fetchall():
    print(row)

# Step 2: Select all from 'participants' table
print("\nExecuting: SELECT * FROM participants")
cursor.execute("SELECT * FROM participant")

# Fetch and display results
columns = [desc[0] for desc in cursor.description]  # Get column names
print(" | ".join(columns))  # Print header

for row in cursor.fetchall():
    print(" | ".join(str(col) for col in row))

# Close the connection
cursor.close()
conn.close()

