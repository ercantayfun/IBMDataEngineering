from pyspark.shell import spark
from pyspark.sql.types import StructType, IntegerType, FloatType, StringType, StructField

from pyspark.sql import SparkSession

spark1 = SparkSession.builder.appName("Test").getOrCreate()
print(spark1)

schema = StructType([
    StructField("Emp_Id", StringType(), False),
    StructField("Emp_Name", StringType(), False),
    StructField("Department", StringType(), False),
    StructField("Salary", IntegerType(), False),
    StructField("Phone", IntegerType(), True),
])

#create a dataframe on top a csv file
df = (spark1.read
      .format("csv")
      .schema(schema)
      .option("header", "true")
      .load("course12/employee.csv")
      )
# display the dataframe content
df.show()

df.printSchema()