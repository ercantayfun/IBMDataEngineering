---
markdown-version: v1
tool-type: instructional-lab
branch: lab-8193-instruction
version-history-start-date: '2023-09-14T07:58:12Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-29T03:55:45Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/Module4/Cheat_Sheet/DataFrames_and_SparkSQL.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/JeaDHp5SDiS5HZMjmOAu4A/DataFrames%20and%20SparkSQL-v1-locales.json
---
##

## Module 4 Cheat Sheet: DataFrames and Spark SQL

<table>
<colgroup>
<col style="width: 16%" />
<col style="width: 30%" />
<col style="width: 52%" />
</colgroup>
<thead>
<tr class="header">
<th>Package/Method</th>
<th>Description</th>
<th>Code Example</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>appName()</td>
<td>A name for your job to display on the cluster web UI.</td>
<td><pre>from pyspark.sql import SparkSession
spark = SparkSession.builder.appName("MyApp").getOrCreate()</pre></td>
</tr>
<tr class="even">
<td>createDataFrame()</td>
<td>Used to load the data into a Spark DataFrame.</td>
<td><pre>from pyspark.sql import SparkSession
spark = SparkSession.builder.appName("MyApp").getOrCreate()
data = [("Jhon", 30), ("Peter", 25), ("Bob", 35)]
columns = ["name", "age"]</pre>
<p>Creating a DataFrame</p>
<pre>df = spark.createDataFrame(data, columns)</pre></td>
</tr>
<tr class="odd">
<td>createTempView()</td>
<td>Create a temporary view that can later be used to query the data.
The only required parameter is the name of the view.</td>
	<td><pre>df.createOrReplaceTempView("cust_tbl")</pre></td>
</tr>
<tr class="even">
<td>fillna()</td>
<td>Used to replace NULL/None values on all or selected multiple
DataFrame columns with either zero (0), empty string, space, or any
constant literal values.</td>
<td>
<p>
Replace NULL/None values in a DataFrame
	</p><pre>
filled_df = df.fillna(0)</pre>
<p>
Replace with zero
	</p></td>
</tr>
<tr class="odd">
<td>filter()</td>
<td>Returns an iterator where the items are filtered through a function
to test if the item is accepted or not.</td>
	<td><pre>filtered_df = df.filter(df['age'] &gt; 30)</pre></td>
</tr>
<tr class="even">
<td>getOrCreate()</td>
<td>Get or instantiate a SparkContext and register it as a singleton
object.</td>
	<td><pre>spark = SparkSession.builder.getOrCreate()</pre></td>
</tr>
<tr class="odd">
<td>groupby()</td>
<td>Used to collect the identical data into groups on DataFrame and
perform count, sum, avg, min, max functions on the grouped data.</td>
<td><p>
	Grouping data and performing aggregation
	</p>
<pre>grouped_df = df.groupBy("age").agg({"age": "count"})</pre></td>
</tr>
<tr class="even">
<td>head()</td>
<td>Returns the first <em>n</em> rows for the object based on
position.</td>
<td><p>Returning the first 5 rows
	</p>
<pre>first_5_rows = df.head(5)</pre></td>
</tr>
<tr class="odd">
<td>import</td>
<td>Used to make code from one module accessible in another. Python
imports are crucial for a successful code structure. You may reuse code
and keep your projects manageable by using imports effectively, which
can increase your productivity.</td>
	<td><pre>from pyspark.sql import SparkSession</pre></td>
</tr>
<tr class="even">
<td>pd.read_csv()</td>
<td>Required to access data from the CSV file from Pandas that retrieves
data in the form of the data frame.</td>
<td><pre>import pandas as pd</pre>
<p>
	Reading data from a CSV file into a DataFrame
	</p>
<pre>df_from_csv = pd.read_csv("data.csv")</pre></td>
</tr>
<tr class="odd">
<td>pip</td>
<td>To ensure that requests will function, the pip program searches for
the package in the Python Package Index (PyPI), resolves any
dependencies, and installs everything in your current Python
environment.</td>
	<td><pre>pip list</pre></td>
</tr>
<tr class="even">
<td>pip install</td>
<td>The pip install &lt;package&gt; command looks for the latest version
of the package and installs it.</td>
	<td><pre>pip install pyspark</pre></td>
</tr>
<tr class="odd">
<td>printSchema()</td>
<td>Used to print or display the schema of the DataFrame or data set in
tree format along with the column name and data type. If you have a
DataFrame or data set with a nested structure, it displays the schema in
a nested tree format.</td>
	<td><pre>df.printSchema()</pre></td>
</tr>
<tr class="even">
<td>rename()</td>
<td>Used to change the row indexes and the column labels.</td>
<td><pre>import pandas as pd</pre>
<p>Create a sample DataFrame</p>
	<pre>data = {'A': [1, 2, 3], 'B': [4, 5, 6]}
df = pd.DataFrame(data)</pre>
	<p>Rename columns</p>
<pre>df = df.rename(columns={'A': 'X', 'B': 'Y'})</pre>
<p>
	The columns 'A' and 'B' are now renamed to 'X' and 'Y'
	</p>
<pre>print(df)</pre></td>
</tr>
<tr class="odd">
<td>select()</td>
<td>Used to select one or multiple columns, nested columns, column by
index, all columns from the list, by regular expression from a
DataFrame. select() is a transformation function in Spark and returns a
new DataFrame with the selected columns.</td>
	<td><pre>selected_df = df.select('name', 'age')</pre></td>
</tr>
<tr class="even">
<td>show()</td>
<td>Spark DataFrame show() is used to display the contents of the
DataFrame in a table row and column format. By default, it shows only
twenty rows, and the column values are truncated at twenty
characters.</td>
	<td><pre>df.show()</pre></td>
</tr>
<tr class="odd">
<td>sort()</td>
<td>Used to sort DataFrame by ascending or descending order based on
single or multiple columns.</td>
	<td><p>Sorting DataFrame by a column in ascending order</p>
<pre>sorted_df = df.sort("age")</pre>
		<p>Sorting DataFrame by multiple columns in descending order</p>
<pre>sorted_df_desc = df.sort(["age", "name"], ascending=[False, True])</pre></td>
</tr>
<tr class="even">
<td>SparkContext()</td>
<td>It is an entry point to Spark and is defined in org.apache.spark
package since version 1.x and used to programmatically create Spark RDD,
accumulators, and broadcast variables on the cluster.</td>
<td><pre>from pyspark import SparkContext</pre>
<p>
	Creating a SparkContext
	</p>
<pre>sc = SparkContext("local", "MyApp")</pre></td>
</tr>
<tr class="odd">
<td>SparkSession</td>
<td>It is an entry point to Spark, and creating a SparkSession instance
would be the first statement you would write to the program with RDD,
DataFrame, and dataset</td>
<td><pre>from pyspark.sql import SparkSession</pre>
<p>
	Creating a SparkSession
	</p>
<pre>spark = SparkSession.builder.appName("MyApp").getOrCreate()</pre></td>
</tr>
<tr class="even">
<td>spark.read.json()</td>
<td>Spark SQL can automatically infer the schema of a JSON data set and
load it as a DataFrame. The read.json() function loads data from a
directory of JSON files where each line of the files is a JSON object.
Note that the file offered as a JSON file is not a typical JSON
file.</td>
	<td><pre>json_df = spark.read.json("customer.json")</pre></td>
</tr>
<tr class="odd">
<td>spark.sql()</td>
<td>To issue any SQL query, use the sql() method on the SparkSession
instance. All spark.sql queries executed in this manner return a
DataFrame on which you may perform further Spark operations if
required.</td>
<td><pre>result = spark.sql("SELECT name, age FROM cust_tbl WHERE age &gt; 30")
result.show()</pre></td>
</tr>
<tr class="even">
<td>spark.udf.register()</td>
<td>In PySpark DataFrame, it is used to register a user-defined function
(UDF) with Spark, making it accessible for use in Spark SQL queries.
This allows you to apply custom logic or operations to DataFrame columns
using SQL expressions.</td>
<td><p>Registering a UDF (User-defined Function)</p>
<pre>from pyspark.sql.functions import udf
from pyspark.sql.types import StringType
def my_udf(value):
return value.upper()
spark.udf.register("my_udf", my_udf, StringType())</pre></td>
</tr>
<tr class="odd">
<td>where()</td>
<td>Used to filter the rows from DataFrame based on the given condition.
Both filter() and where() functions are used for the same purpose.</td>
	<td><p>Filtering rows based on a condition</p>
<pre>filtered_df = df.where(df['age'] &gt; 30)</pre></td>
</tr>
<tr class="even">
<td>withColumn()</td>
<td>Transformation function of DataFrame used to change the value,
convert the data type of an existing column, create a new column, and
many more.</td>
	<td><p>Adding a new column and performing transformations</p>
<pre>from pyspark.sql.functions import col
new_df = df.withColumn("age_squared", col("age") ** 2)</pre></td>
</tr>
<tr class="odd">
<td>withColumnRenamed()</td>
<td>Returns a new DataFrame by renaming an existing column.</td>
	<td><p>Renaming an existing column</p>
<pre>renamed_df = df.withColumnRenamed("age", "years_old")</pre></td>
</tr>
</tbody>
</table>

<footer>

<img align="left" src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/footer%20logo.png" alt="">

</footer>


<!--## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2023-09-20 | 1.0 | Gagandeep Singh | Initial version created |
|2023-09-21| 2.0| Pornima More| QA pass with edits |-->
