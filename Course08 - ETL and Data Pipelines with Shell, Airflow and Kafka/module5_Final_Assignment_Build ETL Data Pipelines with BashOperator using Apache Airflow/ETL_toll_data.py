from airflow import DAG
from airflow.operators.bash import BashOperator
from airflow.utils.dates import days_ago
from datetime import timedelta

#defining DAG arguments
default_args = {
    'owner': 'Ercan Tayfun',
    'start_date': days_ago(0),
    'email': ['et@somemail.com'],
    'email_on_failure': True,
    'email_on_retry': True,
    'retries': 1,
    'retry_delay': timedelta(minutes=5),
}

# define the DAG
dag = DAG(
    dag_id='ETL_toll_data',
    default_args=default_args,
    description='Apache Airflow Final Assignment',
    schedule_interval=timedelta(days=1),
)

# Task1: Unzip the downloaded data
unzip_data = BashOperator(
    task_id='unzip_data',
    bash_command='tar -xvzf /home/project/airflow/dags/finalassignment/tolldata.tgz -C /home/project/airflow/dags/finalassignment',
    dag=dag,
)

# Task2: Extract data from vehicle-data.csv
extract_data_from_csv = BashOperator(
    task_id='extract_data_from_csv',
    bash_command='cut -d"," -f1-4 /home/project/airflow/dags/finalassignment/vehicle-data.csv > /home/project/airflow/dags/finalassignment/csv_data.csv',
    dag=dag,
)

# Task3: Extract data from tollplaza-data.tsv
extract_data_from_tsv = BashOperator(
    task_id='extract_data_from_tsv',
    bash_command="cut -f5-7 /home/project/airflow/dags/finalassignment/tollplaza-data.tsv | tr '\t' ',' | sed 's/,$//' > /home/project/airflow/dags/finalassignment/tsv_data.csv",
    dag=dag,
)

# Task4: Extract data from payment-data.txt
extract_data_from_fixed_width = BashOperator(
    task_id='extract_data_from_fixed_width',
    bash_command=(
        'cut -c59-61,62-67 /home/project/airflow/dags/finalassignment/payment-data.txt | '
        'tr " " "," > /home/project/airflow/dags/finalassignment/fixed_width_data.csv'
    ),
    dag=dag,
)

# Task 5: Consolidate extracted data into a single CSV file ()
consolidate_data = BashOperator(
    task_id='consolidate_data',
    bash_command="""
    paste -d"," \
        /home/project/airflow/dags/finalassignment/csv_data.csv \
        /home/project/airflow/dags/finalassignment/tsv_data.csv \
        /home/project/airflow/dags/finalassignment/fixed_width_data.csv \
    > /home/project/airflow/dags/finalassignment/extracted_data.csv
    """, 
    dag=dag,
)

# Task6: Transform the data (convert vehicle_type to uppercase)
transform_data = BashOperator(
    task_id='transform_data',
    bash_command="""awk -F',' '{ $4 = toupper($4); print $0 }' OFS=',' /home/project/airflow/dags/finalassignment/extracted_data.csv > /home/project/airflow/dags/finalassignment/transformed_data.csv""",
    dag=dag,
)

# Define task dependencies
unzip_data >> extract_data_from_csv >> extract_data_from_tsv >> extract_data_from_fixed_width >> consolidate_data >> transform_data