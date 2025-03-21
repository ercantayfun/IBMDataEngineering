---
markdown-version: v1
tool-type: instructional-lab
branch: lab-8249-instruction
version-history-start-date: '2023-09-18T07:50:26Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-29T03:56:26Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/Module6/Cheatsheet/Monitoring_and_Tuning.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/6vd_sVOZYqIonqQQ01Ftlw/Monitoring%20and%20Tuning-v1-locales.json
---
##

## Module 6 Cheat Sheet: Monitoring and Tuning

<table>
<colgroup>
<col style="width: 12%" />
<col style="width: 31%" />
<col style="width: 56%" />
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
<td>agg()</td>
<td>Used to get the aggregate values like count, sum, avg, min, and max for each group. </td>
<td>
<pre>agg_df = df.groupBy("column_name").agg({"column_to_aggregate": "sum"}) </pre>
</td>
</tr>
<tr class="even">
<td>cache()</td>
<td>Apache Spark transformation that is often used on a DataFrame, data set, or RDD when you want to perform more than one action. cache() caches the specified DataFrame, data set, or RDD in the memory of your cluster's workers. Since cache() is a transformation, the caching operation takes place only when a Spark action (for example, count(), show(), take(), or write()) is also used on the same DataFrame, Dataset, or RDD in a single action.</td>
	<td>
<pre>df = spark.read.csv("customer.csv")
df.cache()  </pre>
</td>
</tr>
<tr class="odd">
<td>cd</td>
<td>Used to move efficiently from the existing working directory to different directories on your system.</td>
	<td><p>Basic syntax of the cd command:</p>
<pre>cd [options]… [directory] </pre>
<p>Example 1: Change directory location to folder1. </p>
<pre>cd /usr/local/folder1 </pre>
<p>Example 2: Get back to the previous working directory. </p>
<pre>cd - </pre>
<p>Example 3: Move up one level from the present working directory tree.</p>
<pre>cd .. </pre>
</td>
</tr>
<tr class="even">
<td>def</td>
<td>Used to define a function. It is placed before a function name that is provided by the user to create a user-defined function.</td>
<td><pre>
def greet(name): </pre>
	<p>This function takes a name as a parameter and prints a greeting.</p>
    <pre>print(f"Hello, {name}!")</pre>
<p>Calling the function:</p>
<pre>greet("John")
</pre></td>
</tr>
<tr class="odd">
<td>docker exec  </td>
<td>Runs a new command in a running container. Only runs while the container's primary process is running, and it is not restarted if the container is restarted.  </td>
<td>
<pre>docker exec -it container_name command_to_run
docker exec -it my_container /bin/bash </pre></td>
</tr>
<tr class="even">
<td>docker rm </td>
<td>Used to remove one or more containers. </td>
<td>
<p>To remove a single container by name or ID: </p>
	<pre>docker rm container_name_or_id </pre>
<p>To remove multiple containers by specifying their names or IDs: </p>
	<pre>docker rm container1_name_or_id container2_name_or_id </pre>
<p>To remove all stopped containers: </p>
	<pre>docker rm $(docker ps -aq) </pre></td>
<td>
<tr class="odd">
<td>docker run </td>
<td>It runs a command in a new container, getting the image and starting the container if needed. </td>
<td><pre>
docker run [OPTIONS] IMAGE [COMMAND] [ARG...] 
</pre>
</td>
</tr>
<tr class="even">
<td>for</td>
	<td>The <i>for</i> loop operates on lists of items. It repeats a set of commands for every item in a list. </td>
<td>
<pre>fruits = ["apple", "banana", "cherry"] </pre>
<p>Iterating through the list using a <i>for</i> loop
for fruit in fruits: </p>
<pre>print(f"I like {fruit}s")</pre></td>
</tr>
<tr class="odd">
<td>groupby()</td>
<td>Used to collect the identical data into groups on DataFrame and perform count, sum, avg, min, max functions on the grouped data. </td>
<td><pre>import pandas as pd </pre>
<p>Sample DataFrame: </p>
<pre>data = {'Category': ['A', 'B', 'A', 'B', 'A', 'B'], 
        'Value': [10, 20, 15, 25, 30, 35]}
df = pd.DataFrame(data) </pre>
<p>Grouping by "Category" and performing aggregation operations:</p>
<pre>grouped = df.groupby('Category').agg({'Value': ['count', 'sum', 'mean', 'min', 'max']}) 
print(grouped) </pre>
	</td>
</tr>
<tr class="even">
<td>repartition()</td>
<td>Used to increase or decrease the RDD or DataFrame partitions by number of partitions or by a single column name or multiple column names.</td>
<td>
<p>Create a sample DataFrame:</p>
<pre>data = [("John", 25), ("Peter", 30), ("Julie", 35), ("David", 40), ("Eva", 45)] 
columns = ["Name", "Age"] 
df = spark.createDataFrame(data, columns) </pre>
<p>Show the current number of partitions.</p>
<pre>print("Number of partitions before repartitioning: ", df.rdd.getNumPartitions()) </pre>
<p>Repartition the DataFrame to 2 partitions.</p>
<pre>df_repartitioned = df.repartition(2)</pre>
<p>Show the number of partitions after repartitioning.</p>
<pre>print("Number of partitions after repartitioning: ", df_repartitioned.rdd.getNumPartitions())</pre>
<p>Stop the SparkSession.</p>
<pre>spark.stop() </pre>
	</td>
</tr>
<tr class="odd">
<td>return</td>
<td>Used to end the execution of the function call and returns the result (value of the expression following the return keyword) to the caller. </td>
<td>
<pre>def add_numbers(a, b): 
    result = a + b 
    return result </pre>
<p>Calling the function and capturing the returned value:</p>
<pre>sum_result = add_numbers(5, 6) </pre>
<p>Printing the result.</p>
<pre>print("The sum is:", sum_result)
</pre>
<p>Output.</p>
<pre>The sum is: 11
</pre>
</td>
</tr>
<tr class="even">
<td>show()</td>
<td>Spark DataFrame show() is used to display the contents of the DataFrame in a table row and column format. By default, it shows only 20 rows, and the column values are truncated at 20 characters.</td>
<td>
	<pre>df.show() </pre></td>
</tr>
<tr class="even">
<td>spark.read.csv(“path”)</td>
<td>Using this, you can read a CSV file with fields delimited by pipe, comma, tab (and many more) into a Spark DataFrame.</td>
<td>
<pre>from pyspark.sql import SparkSession </pre>
<p>Create a SparkSession. </p>
<pre>spark = SparkSession.builder.appName("CSVReadExample").getOrCreate() </pre>
<p>Read a CSV file into a Spark DataFrame.</p>
<pre>df = spark.read.csv("path_to_csv_file.csv", header=True, inferSchema=True) </pre>
<p>Show the first few rows of the DataFrame. </p>
<pre>df.show() </pre>
<p>Stop the SparkSession.</p>
<pre>spark.stop() </pre>
</td>
</tr>
<tr class="odd">
<td>wget</td>
<td>Stands for web get. The wget is a free noninteractive file downloader command. Noninteractive means that it can work in the background when the user is not logged in. </td>
<td>
<p>Basic syntax of the wget command; commonly used
	options are <code>[-V], [-h], [-b], [-e], [-o], [-a], [-q]</code></p>
<pre>wget [options]… [URL]… </pre>
<p> Example 1: Specifies to download file.txt over HTTP
website URL into the working directory. </p>
	<pre>wget http://example.com/file.txt </pre>
<p>Example 2: Specifies to download the archive.zip over HTTP website URL in the background and returns you to the command prompt in the interim.</p>
	<pre>wget -b http://www.example.org/files/archive.zip </pre>
</td>
</tr>
<tr class="even">
<td>withColumn() </td>
<td>Transformation function of DataFrame which is used to change the value, convert the datatype of an existing column, create a new column, and many more. </td>
<td>
<p>Sample DataFrame:</p>
<pre>data = [("John", 25), ("Peter", 30), ("David", 35)]
columns = ["Name", "Age"]
df = spark.createDataFrame(data, columns) </pre>
<p>Using withColumn to create a new column and change values </p>
<pre>updated_df = df \ 
    .withColumn("DoubleAge", col("Age") * 2)  # Create a new column "DoubleAge" by doubling the "Age" column 
updated_df = updated_df \ 
    .withColumn("AgeGroup", when(col("Age") <= 30, "Young") 
                .when((col("Age") > 30) & (col("Age") <= 40), "Middle-aged") 
                .otherwise("Old"))  # Create a new column "AgeGroup" based on conditions 
updated_df.show() </pre>
<p>Stop the SparkSession.</p>
<pre>spark.stop()</pre>
</td>
</tr>
</tbody>
</table>

<footer>

<img align="left" src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/footer%20logo.png" alt="">

</footer>


<!--## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
|2023-09-20 | 2.0 | Kunal Merchant | QC reviewed|
| 2023-09-18 | 1.0 | Sameeksha Saxena | Initial version created |-->

