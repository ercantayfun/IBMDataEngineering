---
markdown-version: v1
tool-type: instructional-lab
branch: lab-8139-instruction
version-history-start-date: '2023-09-06T07:11:38Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-29T03:54:55Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/Module3/Cheatsheet/ApacheSpark.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/UhMgG97EqO9M9ozIqGMnEQ/ApacheSpark-v1-locales.json
---
##

## Module 3 Cheat Sheet: Apache Spark


<table>
<tr>
    <th width="10%">Package/Method</th>
    <th width="50%">Description</th>
    <th width="30%">Code Example</th>
</tr>

<tr>
    <td>
      appName()
    </td>
    <td>
A name for your job to display on the cluster web UI.
    </td>
    <td>
	
    from pyspark.sql import SparkSession
	spark = SparkSession.builder.appName("MyApp").getOrCreate()

</td>
</tr>

<tr>
    <td>
        cache()
    </td>
    <td>
An Apache Spark transformation often used on a DataFrame, data set, or RDD when you want to perform multiple actions. cache() caches the specified DataFrame, data set, or RDD in the memory of your cluster's workers. Since cache() is a transformation, the caching operation takes place only when a Spark action (for example, count(), show(), take(), or write()) is also used on the same DataFrame, data set, or RDD in a single action.
    </td>
    <td>
		
	df = spark.read.csv("customer.csv")
	df.cache()


</td>
</tr>

<tr>
    <td>
        count()
    </td>
    <td>
Returns the number of elements with the specified value.
    </td>
    <td>

	count = df.count()
	print(count)


</td>
</tr>

<tr>
    <td>
        createTempView()
    </td>
    <td>
Creates a temporary view that can later be used to query the data. The only required parameter is the name of the view.
    </td>
    <td>

	df.createOrReplaceTempView("cust_tbl")

</td>
</tr>

<tr>
    <td>
        filter()
    </td>
    <td>
Returns an iterator where the items are filtered through a function to test if the item is accepted or not.
    <td>

	filtered_df = df.filter(df['age'] > 30)


</td>
</tr>

<tr>
    <td>
        getOrCreate()
    </td>
    <td>
Get or instantiate a SparkContext and register it as a singleton object.
    <td>

	spark = SparkSession.builder.getOrCreate()

</td>
</tr>

<tr>
    <td>
        import
    </td>
    <td>
Used to make code from one module accessible in another. Python imports are crucial for a successful code structure. You may reuse code and keep your projects manageable by using imports effectively, which can increase your productivity.
</td>
    <td>

    from pyspark.sql import SparkSession

</td>
</tr>

<tr>
    <td>
        len()
    </td>
    <td>
Returns the number of items in an object. When the object is a string, the len() function returns the number of characters in the string.
    <td>

    row_count = len(df.collect())
	print(row_count)


</td>
</tr>

<tr>
    <td>
        map()
    </td>
    <td>
Returns a map object (an iterator) of the results after applying the given function to each item of a given iterable (list, tuple, etc.)
    <td>

    rdd = df.rdd.map(lambda row: (row['name'],
	row['age']))

</td>
</tr>

<tr>
    <td>
        pip
    </td>
    <td>
To ensure that requests will function, the pip program searches for the package in the Python Package Index (PyPI), resolves any dependencies, and installs everything in your current Python environment.
    <td>

    pip list

</td>
</tr>


<tr>
    <td>
        pip install
    </td>
    <td>
The pip install <package> command looks for the latest version of the package and installs it.
    <td>

    pip install pyspark

</td>
</tr>

<tr>
    <td>
        print()
    </td>
    <td>
Prints the specified message to the screen or other standard output device.
The message can be a string or any other object; the object will be converted into a string before being written to the screen.
    <td>

    print("Hello, PySpark!")

</td>
</tr>

<tr>
    <td>
        printSchema()
    </td>
    <td>
Used to print or display the schema of the DataFrame or data set in tree format along with the column name and data type. If you have a DataFrame or data set with a nested structure, it displays the schema in a nested tree format.
    <td>

    df.printSchema()

   </td>
</tr>

<tr>
    <td>
       sc.parallelize()
    </td>
    <td>
Creates a parallelized collection. Distributes a local Python collection to form an RDD. Using range is recommended if the input represents a range for performance.
    <td>

    rdd = sc.parallelize([1, 2, 3, 4, 5])

</td>
</tr>

<tr>
    <td>
        select()
    </td>
    <td>
Used to select one or multiple columns, nested columns, column by index, all columns from the list, by regular expression from a DataFrame. select() is a transformation function in Spark and returns a new DataFrame with the selected columns.
    <td>

    selected_df = df.select('name', 'age')

</td>
</tr>

<tr>
    <td>
        show()
    </td>
    <td>
Spark DataFrame show() is used to display the contents of the DataFrame in a table row and column format . By default, it shows only twenty rows, and the column values are truncated at twenty characters.
    <td>

    df.show()

</td>
</tr>

<tr>
    <td>
        spark.read.json
    </td>
    <td>
Spark SQL can automatically infer the schema of a JSON data set and load it as a DataFrame. The read.json() function loads data from a directory of JSON files where each line of the files is a JSON object. Note that the file offered as a JSON file is not a typical JSON file.
    <td>

    json_df = spark.read.json("customer.json")

</td>
</tr>

<tr>
    <td>
        spark.sql()
    </td>
    <td>
To issue any SQL query, use the sql() method on the SparkSession instance . All spark.sql queries executed in this manner return a DataFrame on which you may perform further Spark operations if required.
    <td>

    result = spark.sql("SELECT name, age FROM cust_tbl WHERE age > 30")
	result.show()

</td>
</tr>

<tr>
    <td>
        time()
    </td>
    <td>
Returns the current time in the number of seconds since the Unix Epoch.
    <td>

    from pyspark.sql.functions import current_timestamp
	current_time = df.select(current_timestamp().alias("current_time"))
	current_time.show()


</td>
</tr>
</table>

<footer>

<img align="left" src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/footer%20logo.png" alt="">

</footer>


<!--## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2023-09-06 | 1.0 | Sameeksha Saxena | Initial version created |-->


