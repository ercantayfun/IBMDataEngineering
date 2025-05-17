# Import libraries required for connecting to mysql
import mysql.connector

# Import libraries required for connecting to DB2 or PostgreSql
import psycopg2

# Connect to MySQL
mysql_conn = mysql.connector.connect(
    host='172.21.86.42',
    user='root',
    password='vUeYN29bDegkRze0oLsSyOLw',
    database='sales'  # staging data warehouse
)
mysql_cursor = mysql_conn.cursor()

# Connect to DB2 or PostgreSql
pg_conn = psycopg2.connect(
    host='172.21.25.242',
    user='postgres',
    password='2zV8PMl2d24GAquyXa2amRRl',
    dbname='sales'
)
pg_cursor = pg_conn.cursor()

# Find out the last rowid from DB2 data warehouse or PostgreSql data warehouse
# The function get_last_rowid must return the last rowid of the table sales_data on the IBM DB2 database or PostgreSql.

def get_last_rowid():
    pg_cursor.execute("SELECT MAX(rowid) FROM sales_data")
    result = pg_cursor.fetchone()
    return result[0] if result[0] is not None else 0

last_row_id = get_last_rowid()
print("Last row id on production datawarehouse = ", last_row_id)

# List out all records in MySQL database with rowid greater than the one on the Data warehouse
# The function get_latest_records must return a list of all records that have a rowid greater than the last_row_id in the sales_data table in the sales database on the MySQL staging data warehouse.

def get_latest_records(rowid):
    query = "SELECT * FROM sales_data WHERE rowid > %s"
    mysql_cursor.execute(query, (rowid,))
    records = mysql_cursor.fetchall()
    return records

new_records = get_latest_records(last_row_id)

print("New rows on staging datawarehouse = ", len(new_records))

# Insert the additional records from MySQL into DB2 or PostgreSql data warehouse.
# The function insert_records must insert all the records passed to it into the sales_data table in IBM DB2 database or PostgreSql.

def insert_records(records):
    insert_query = "INSERT INTO sales_data (rowid, product_id, customer_id, quantity) VALUES (%s, %s, %s, %s)"
    for record in records:
        pg_cursor.execute(insert_query, record)
    pg_conn.commit()

insert_records(new_records)
print("New rows inserted into production datawarehouse = ", len(new_records))

# disconnect from mysql warehouse
mysql_cursor.close()
mysql_conn.close()

# disconnect from DB2 or PostgreSql data warehouse 
pg_cursor.close()
pg_conn.close()

# End of program