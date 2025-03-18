from pyspark.sql import SparkSession
# Create a Spark session
spark = SparkSession.builder.appName("MySparkApp").getOrCreate()
# Load data
data = spark.read.csv("course12/employee.csv", header=True, inferSchema=True)
data.csv
# Perform operations
result = data.groupBy("dept").agg({"salary": "avg"})
# Show result
result.show()
# Stop the Spark session
spark.stop()