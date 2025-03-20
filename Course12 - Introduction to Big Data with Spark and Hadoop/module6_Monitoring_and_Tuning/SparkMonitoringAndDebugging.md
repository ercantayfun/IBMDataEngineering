---
markdown-version: v1
tool-type: theiadocker
branch: lab-2972-instruction
version-history-start-date: '2022-12-20T11:11:40Z'
locales-url: https://cf-courses-data.static.labs.skills.network/8_95LhV8-a-rYYsVB0w05w/SparkMonitoringAndDebugging-v1-locales.json
---
::page{title="Apache Spark Monitoring and Debugging"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

**Estimated time needed:** 30 minutes

This lab will instruct you on how to monitor and debug a Spark application through the web UI.

## Objectives

After completing this lab, you will be able to:

1. Start a Spark Standalone Cluster and connect with the PySpark shell.
1. Create a DataFrame and open the application web UI.
1. Debug a runtime error by locating the failed task in the web UI.
1. Run an SQL query to monitor, then scale up by adding another worker to the cluster.

::page{title="Exercise 1 : Start a Spark Standalone Cluster"}

In this exercise, you will initialize a Spark Standalone Cluster with a Master and one Worker.
Next, you will start a PySpark shell that connects to the cluster and open the Spark Application
Web UI to monitor it. We will be using the Theia terminal to run commands and docker-based
containers to launch the Spark processes.

### Task A : Download Sample Data for Spark

1. Open a Theia terminal by clicking on the menu item `Terminal -> New Terminal`.
   
2. Use the following command to download the data set we will be using in this lab to the
   container running Spark.

```bash
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/data/cars.csv
```

::page{title="Task B : Initialize the Cluster"}

1. Stop any previously running containers with the command:

   

```bash
for i in `docker ps | awk '{print $1}' | grep -v CONTAINER`; do docker kill $i; done
```

2. Remove any previously used containers:<br>
   Ignore any errors that say "No such container"

```bash
docker rm spark-master spark-worker-1 spark-worker-2
```

3. Start the Spark Master server:

```bash
docker run \
    --name spark-master \
    -h spark-master \
    -e ENABLE_INIT_DAEMON=false \
    -p 4040:4040 \
    -p 8080:8080 \
    -v `pwd`:/home/root \
    -d bde2020/spark-master:3.1.1-hadoop3.2
```

4. Start a Spark Worker that will connect to the Master:

```bash
docker run \
    --name spark-worker-1 \
    --link spark-master:spark-master \
    -e ENABLE_INIT_DAEMON=false \
    -p 8081:8081 \
    -v `pwd`:/home/root \
    -d bde2020/spark-worker:3.1.1-hadoop3.2
```

::page{title="Task C : Connect a PySpark Shell to the Cluster and Open the UI"}

1. Launch a PySpark shell in the running Spark Master container:

```bash
docker exec \
    -it `docker ps | grep spark-master | awk '{print $1}'` \
    /spark/bin/pyspark \
    --master spark://spark-master:7077
```

 

  

2. Create a DataFrame in the shell with:
> **_NOTE:_** Press Enter twice to proceed after running the command in shell
```python
df = spark.read.csv("/home/root/cars.csv", header=True, inferSchema=True) \
    .repartition(32) \
    .cache()
df.show()
```

 

3. Click on the Skills Network button on the left, it will open the "Skills Network Toolbox". Then click `OTHER` then `Launch Application`.  From there you should be able to enter the port number as `4040` and launch  the Spark Application UI in your browser.

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/Launch_Application--new_IDE.png">

<br><br>

4. Verify you can see the application jobs page that should look like the following, although
   not necessarily exactly the same:
   ![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/SparkUI-Initial-Page.png)

::page{title="Exercise 2 : Run an SQL Query and Debug in the Application UI"}

In this exercise, you will define a user-defined function (UDF) and run a query that results in an
error. We will locate that error in the application UI and find the root cause. Finally, we will
correct the error and re-run the query.

### Task A : Run an SQL Query

1. Define a UDF to show engine type. Copy and paste the code and click `Enter`.

```python
from pyspark.sql.functions import udf
import time

@udf("string")
def engine(cylinders):
    time.sleep(0.2)  # Intentionally delay task
    eng = {6: "V6", 8: "V8"}
    return eng[cylinders]
```

  

2. Add the UDF as a column in the DataFrame
  
   

```python
df = df.withColumn("engine", engine("cylinders"))
```

3. Group the DataFrame by "cylinders" and aggregate other columns

   

```python
dfg = df.groupby("cylinders")
```

```python
dfa = dfg.agg({"mpg": "avg", "engine": "first"})
```

```python
dfa.show()
```

   

4. The query will have failed and you should see lots of messages and outputs in the console. 
The next task will be to locate the error in the Application UI and determine the root cause.

::page{title="Task B : Debug the error in the Application UI"}

1. Find the error in the Application UI
Open UI to the Jobs, look at list of Failed Jobs, click on first job.

![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/Failure-Jobs-tab.png)

2. This will bring up the Job
   details with a list of stages for that job. In the list of Failed Stages, click on the first
   failed stage to show the stage details with a list of tasks for that stage.
 

![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/Failure-Jobs-detail.png)

3. Here we see lots
   of failed tasks. Looking at the first one, the far right column shows details of the failure.

   

![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/Failure-Stage-list.png)

   

   Click to expand the details. 

![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/Failure-Task-details.png)

   

Scroll down a little until you can see the last part of the Python
error that shows the cause. You should be able to see this was caused by a KeyError in our UDF
`engine()`.

You could also view these errors by looking at the column that has links to the logs and click on 
"std err" to show the standard error log.

Close the PySpark browser tab.

4. In the Theia terminal, fix the UDF by adding an entry to the dictionary of engine types and provide a
default for all other types. Copy and paste this code and click `Enter`.

 ```python
 @udf("string")
 def engine(cylinders):
     time.sleep(0.2)  # Intentionally delay task
     eng = {4: "inline-four", 6: "V6", 8: "V8"}
     return eng.get(cylinders, "other")
 ```

5. Re-run the query. You will have to add the "engine" column again and enter the query since
we changed the UDF.

```python
df = df.withColumn("engine", engine("cylinders"))
```

```python
dfg = df.groupby("cylinders")
```

```python
dfa = dfg.agg({"mpg": "avg", "engine": "first"})
```

```python
dfa.show()
 ```

Once the query completes without errors, you should see output similar to this.

 ```
 +---------+------------------+-------------+                                    
 |cylinders|          avg(mpg)|first(engine)|
 +---------+------------------+-------------+
 |        6|19.985714285714288|           V6|
 |        3|             20.55|        other|
 |        5|27.366666666666664|        other|
 |        4|29.286764705882348|  inline-four|
 |        8|14.963106796116506|           V8|
 +---------+------------------+-------------+
```

::page{title="Exercise 3 : Monitor Application Performance with the UI"}

Now that we have run our query successfully, we will scale up our application by adding a worker 
to the cluster. This will allow the cluster to run more tasks in parallel and improve the
overall performance.

### Task A : Add a Worker to the Cluster

1. View the Stages tab, then
click on the stage with 32 tasks. In that stage our UDF is being applied to each partition of the
DataFrame.

![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/Perf-stage-udf.png)

   

Looking at the timeline, you can see there is a single worker with id `0 / <ip-address>` that can
run up to a certain amount of tasks in parallel at one time. Adding another worker will allow an 
additional tasks to be run in parallel.

![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/Perf-parallel-tasks-1.png)

2. Open a new Theia terminal by clicking on the menu item `Terminal -> New Terminal`.
   
3. Add a second worker to the cluster with the command in the new terminal:

```bash
docker run \
    --name spark-worker-2 \
    --link spark-master:spark-master \
    -e ENABLE_INIT_DAEMON=false \
    -p 8082:8082 \
    -d bde2020/spark-worker:3.1.1-hadoop3.2
```

4. If the command is successful, there will be a single output showing the container id:

```
theia@theiadocker-user:/home/project$ docker run \
>     --name spark-worker-2 \
>     --link spark-master:spark-master \
>     -e ENABLE_INIT_DAEMON=false \
>     -p 8082:8082 \
>     -d bde2020/spark-worker:3.1.1-hadoop3.2
1935a71827668ae3476e6a16f0bebcd4c2a342a21271dc22be487aa1b1731708
theia@theiadocker-user:/home/project$
```

5. Click back to the first terminal that has the PySpark shell open to continue.

::page{title="Task B : Re-run the query and check performance"}

1. Re-run the query, this time we can simply call `show()` again:

   

```python
dfa.show()
```

2. Launch Application on port number `4040` by following the same process as above, to open the PySpark browser. 
Go to the **Stages** tab and see the most recent stage Id.
![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/RecentStageView.png)

3. You will see that the additional worker with id `1 / <ip-address>` is listed and now allows more tasks 
to be run in parallel. The task timeline should look similar to the following.

![image](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/images/Perf-parallel-tasks-2.png)

## Author(s)

Aije 

### Other Contributor(s) 

Lavanya

<!--## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2021-07-16 | 0.1 | Aije | Initial version created |
| 2022-01-03 | 0.2  | Lavanya  | Changed the instructions for second node  |
| 2022-09-01 | 0.3  | K Sundararajan  | Updated instructions for `Launch Application` as per new Theia IDE  |-->

## <h3 align="center"> © IBM Corporation 2021. All rights reserved. <h3/>

