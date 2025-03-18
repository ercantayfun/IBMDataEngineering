---
markdown-version: v1
tool-type: theiadocker
branch: lab-2984-instruction
version-history-start-date: '2022-12-20T11:31:45Z'
locales-url: https://cf-courses-data.static.labs.skills.network/3VO0HJK5twVbKQfnPqS7fA/spark-submit-lab-v1-locales.json
---
::page{title="Submit Apache Spark Applications Lab"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

**Estimated time needed: 20 minutes**

In this lab, you will learn how to submit Apache Spark applications from a Python script. This exercise is straightforward, thanks to Docker Compose.

## Learning objectives

In this lab, you will:

* Install a Spark Master and Worker using Docker Compose
* Create a Python script containing a Spark job
* Submit the job to the cluster directly from python (Note: you\'ll learn how to submit a job from the command line in the Kubernetes lab)


## Prerequisites

	**Note**: If you are running this lab within the Skills Network Lab environment, all prerequisites are already installed for you

The only prerequisites for this lab are:

* The *wget* command line tool
* A Python development environment


::page{title="Start the Spark Master"}

On the right hand side of these instructions, you\'ll find the Cloud IDE. Select the *Lab* tab. Then, in the menu bar, select *Terminal* > *New Terminal*.


<center>
<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/NewTerminal.png" width="80%">
</center>


2. Enter the following commands in the terminal to download the Spark environment:

```bash
wget https://archive.apache.org/dist/spark/spark-3.3.3/spark-3.3.3-bin-hadoop3.tgz && tar xf spark-3.3.3-bin-hadoop3.tgz && rm -rf spark-3.3.3-bin-hadoop3.tgz
```

>This process may take some time. It downloads Spark as a zipped archive and then unzips it into the current directory.

3. Run the following commands to set up `JAVA_HOME` (preinstalled in the environment) and `SPARK_HOME` (which you just downloaded):

```bash
export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
export SPARK_HOME=/home/project/spark-3.3.3-bin-hadoop3
```

4. Run the following command to create a config file for the master:

```bash
touch /home/project/spark-3.3.3-bin-hadoop3/conf/spark-defaults.conf
```
5. Click the button below to begin the Spark Master configuration process.

::openFile{path="/home/project/spark-3.3.3-bin-hadoop3/conf/spark-defaults.conf"}


6. Paste the following content into the `spark-defaults.conf` file. This will configure the number of cores and the amount of memory that the Master will allocate to the workers.

```
spark.executor.memory 4g
spark.executor.cores 2
```

7. Navigate to the `SPARK_HOME` directory:

```bash
cd $SPARK_HOME
```

8. Run the Spark master by executing the following command:

```bash
./sbin/start-master.sh
```

9. Once it starts up successfully, click the button below to verify that the Master is running as expected.

::startApplication{port="8080" display="external" name="Spark Master" route="/"}

If the application has started up successfully, you will see a page as given below.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/yAkQovkEjJYMKrA-XyiqRQ/spark%20master.jpg" style="width:90%;margin-bottom:1cm" />

10. Copy the URL of the Master as shown in the image and note it down in a text editor, such as Notepad, on your computer.

::page{title="Start the worker"}

1. Click `Terminal` from the menu, and click `New Terminal` to open a new terminal window.

<center>
<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/NewTerminal.png" width="80%">
</center>

2. Once the terminal opens up at the bottom of the window, run the following commands to set up `JAVA_HOME` and `SPARK_HOME`:

```bash
export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
export SPARK_HOME=/home/project/spark-3.3.3-bin-hadoop3
```

3. Navigate to the `SPARK_HOME` directory:

```bash
cd $SPARK_HOME
```

4. Run the Spark worker by executing the following command. Remember to replace the placeholder `yourname` in the command below with your name as given in the Spark master URL that you noted down in the previous step.

```bash
./sbin/start-worker.sh spark://theiadocker-yourname:7077 --cores 1 --memory 1g
```

5. Once it starts up successfully, click the button below to verify that the Worker is running as expected.

::startApplication{port="8080" display="external" name="Spark Master" route="/"}


You should see that the Worker is now registered with the Master.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/zYVs9FiWKEir2iinaXrEzw/spark-worker.jpg" style="width:90%;margin-bottom:1cm" />


::page{title="Create code and submit"}

1. Click `Terminal` from the menu, and click `New Terminal` to open a new terminal window.

<center>
<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/NewTerminal.png" width="80%">
</center>

2. Once the terminal opens up at the bottom of the window, run the following command to create the Python file:

```bash
touch submit.py
```
A new Python file called `submit.py` is created.

3. Open the file in the file editor by clicking the button below or following the visual guidance in the image.

::openFile{path="/home/project/submit.py"}

<center>
<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/edit_submitpy.png" width="80%">
</center>

4. Paste the following code to the file and save it. Remember to replace the placeholder `yourname` in the code below with your name as in the Spark master URL.

```python
import findspark
findspark.init()
from pyspark import SparkContext, SparkConf
from pyspark.sql import SparkSession
from pyspark.sql.types import StructField, StructType, IntegerType, StringType

spark = SparkSession.builder \
    .master('spark://theiadocker-yourname:7077') \
    .config('spark.executor.cores', '1') \
    .config('spark.executor.memory', '512m') \
    .getOrCreate()

df = spark.createDataFrame(
    [
        (1, "foo"),
        (2, "bar"),
    ],
    StructType(
        [
            StructField("id", IntegerType(), False),
            StructField("txt", StringType(), False),
        ]
    ),
)
print(df.dtypes)

print("\nDataFrame:")
df.show()
```

3. Run the following commands to set up `JAVA_HOME` and `SPARK_HOME`:

```bash
export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64
export SPARK_HOME=/home/project/spark-3.3.3-bin-hadoop3
```

4. Install the required packages to set up the Spark environment.

```bash
pip3 install findspark
```

5. Type in the following command in the terminal to execute the Python script:

```bash
python3 submit.py
```

You will see output as below:
```
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
25/01/27 23:50:53 WARN NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
[('id', 'int'), ('txt', 'string')]
+---+---+                                                                       
| id|txt|
+---+---+
|  1|foo|
|  2|bar|
+---+---+
```

::page{title="Experiment yourself"}

Please take a look at the UI of the Apache Spark Master and Worker.

1. Click the button below to launch the `Spark Master`. Alternatively, click the Skills Network button on the left. This will open the "Skills Network Toolbox." Then, click `Other` followed by `Launch Application`. From there, you can enter the port number as `8080` and launch the application.

::startApplication{port="8080" display="external" name="Spark Master" route="/"}


<center>
<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/Launch_Application--new_IDE.png" width="80%">
</center>

2. This will take you to the Spark Master\'s admin UI (if your popup blocker doesn\'t interfere).

<center>
<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/nWC79kDOSPta7AdpAn24_A/submit-success.jpg" width="80%">
</center>

3. Please note that you can see all registered workers (one in this case) and all running or completed jobs (also one in this case).

>Note: Due to the limitations of the lab environment, you cannot click on links within the UI. In a typical production environment, these links would be functional.

4. Click the button below to open the `Spark Worker` on 8081. Alternatively, click the Skills Network button on the left, it will open the "Skills Network Toolbox." Then, click `Other` followed by `Launch Application`.  From there, you should be able to enter the port number as `8081` and launch the application.

::startApplication{port="8081" display="external" name="Spark Worker" route="/"}

You should be able to find your currently running job listed here.

::page{title="Summary"}

In this lab, you\'ve learned how to set up an experimental Apache Spark cluster using Docker Compose. You are now able to submit a Spark job directly from Python code. In the subsequent Kubernetes lab, you will learn how to submit Spark jobs from the command line as well.

## Author(s)

Romeo Kienzler
[Lavanya T S](https://www.linkedin.com/in/lavanya-sunderarajan-199a445/)

<!--## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| October 2021 | 1.0 | Romeo Kienzler | Initial version |
| 01-09-2022 | 1.1 | K Sundararajan | Updated instructions for `Launch Application` as per new Theia IDE & the format for `Changelog`|
| 30-12-2022 | 1.2 | K Sundararajan | Updated `pyspark` installation command |
| 16-10-2023 | 1.3 | Lavanya T S | Updated and restructured the lab |
| 17-10-2023 | 1.4 | K Sundararajan | Made few more updates based on Beta testing osbervations |
| 28-01-2025 | 1.5 | Lavanya | Changed the lab to have the spark master and worker run in IDE |
| 18-02-2025 | 1.6 | Jojy John | ID Reviewed |
| 19-02-2025 | 1.6 | Rahul Rawat | QA pass |
-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>