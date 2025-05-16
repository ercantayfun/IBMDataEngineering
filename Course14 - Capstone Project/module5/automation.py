# Import libraries required for connecting to mysql
import mysql.connector

# Import libraries required for connecting to DB2 or PostgreSql
import psycopg2

# Connect to MySQL
mysql_config = {
    'host': '172.21.248.240',
    'database': 'sales',
    'user': 'root',
    'password': 'kJnJZGBiepPvsKbgRGrB9O5i'
}

# Connect to PostgreSql
pg_config = {
    'host': '172.21.20.96',
    'port': '5432',
    'database': 'postgres',
    'user': 'postgres',
    'password': 'rTzfgaJSBSXihEPbNoyLwTzT'
}

# Find out the last rowid from DB2 data warehouse or PostgreSql data warehouse
# The function get_last_rowid must return the last rowid of the table sales_data on the IBM DB2 database or PostgreSql.

def get_last_rowid():
    try:
        conn = psycopg2.connect(**pg_config)
        cursor = conn.cursor()
        cursor.execute("SELECT MAX(rowid) FROM sales_data")
        result = cursor.fetchone()
        cursor.close()
        conn.close()
        return result[0] if result[0] else 0
    except Exception as e:
        print("Error in get_last_rowid():", e)
        return 0

last_row_id = get_last_rowid()
print("Last row id on production datawarehouse = ", last_row_id)

# List out all records in MySQL database with rowid greater than the one on the Data warehouse
# The function get_latest_records must return a list of all records that have a rowid greater than the last_row_id in the sales_data table in the sales database on the MySQL staging data warehouse.

def get_latest_records(last_rowid):
    try:
        conn = mysql.connector.connect(**mysql_config)
        cursor = conn.cursor()
        query = "SELECT * FROM sales_data WHERE rowid > %s"
        cursor.execute(query, (last_rowid,))
        records = cursor.fetchall()
        cursor.close()
        conn.close()
        return records
    except Exception as e:
        print("Error in get_latest_records():", e)
        return []	

new_records = get_latest_records(last_row_id)

print("New rows on staging datawarehouse = ", len(new_records))

# Insert the additional records from MySQL into DB2 or PostgreSql data warehouse.
# The function insert_records must insert all the records passed to it into the sales_data table in IBM DB2 database or PostgreSql.

def insert_records(records):
    if not records:
        return
    try:
        conn = psycopg2.connect(**pg_config)
        cursor = conn.cursor()
        insert_query = "INSERT INTO sales_data (rowid, product_id, customer_id, quantity) VALUES (%s, %s, %s, %s)"
        cursor.executemany(insert_query, records)
        conn.commit()
        cursor.close()
        conn.close()
    except Exception as e:
        print("Error in insert_records():", e)

insert_records(new_records)
print("New rows inserted into production datawarehouse = ", len(new_records))

# disconnect from mysql warehouse
# already closed

# disconnect from DB2 or PostgreSql data warehouse 
# already closed

# End of program