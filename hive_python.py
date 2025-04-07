# from pyhive import hive

# # Connect to Hive
# conn = hive.Connection(host='localhost', port=10000, database='bsvdatabase')

# cursor = conn.cursor()

# # Step 1: Show tables
# query = "SHOW TABLES"
# print(f"Executing: {query}")
# cursor.execute(query)
# for row in cursor.fetchall():
#     print(row)

# # Step 2: Select all from 'participants' table
# print("\nExecuting: SELECT * FROM participants")
# cursor.execute("SELECT * FROM participant")

# # Fetch and display results
# columns = [desc[0] for desc in cursor.description]  # Get column names
# print(" | ".join(columns))  # Print header

# for row in cursor.fetchall():
#     print(" | ".join(str(col) for col in row))
    


# # Close the connection
# cursor.close()
# conn.close()

from pyhive import hive

# Connect to Hive
conn = hive.Connection(host='localhost', port=10000)
cursor = conn.cursor()

# Step 1: Get all databases
cursor.execute("SHOW DATABASES")
databases = [db[0] for db in cursor.fetchall()]

# Step 2: Loop through each database
for db in databases:
    print(f"\n--- DATABASE: {db} ---")
    try:
        # Switch to the database
        cursor.execute(f"USE {db}")
        
        # Step 3: Check if 'participant' table exists in this database
        cursor.execute("SHOW TABLES")
        tables = [t[0] for t in cursor.fetchall()]
        
        if 'participant' in tables:
            print(f"\nFetching data from {db}.participant:")
            cursor.execute("SELECT * FROM participant")
            
            # Get and print column names
            columns = [desc[0] for desc in cursor.description]
            print(" | ".join(columns))
            
            # Print data rows
            for row in cursor.fetchall():
                print(" | ".join(str(col) for col in row))
        else:
            print("Table 'participant' not found in this database.")
    
    except Exception as e:
        print(f"Error while processing database {db}: {e}")

# Clean up
cursor.close()
conn.close()



