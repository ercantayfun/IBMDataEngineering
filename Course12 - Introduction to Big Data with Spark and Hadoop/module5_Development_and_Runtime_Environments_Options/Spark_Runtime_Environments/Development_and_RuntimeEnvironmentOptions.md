---
markdown-version: v1
tool-type: instructional-lab
branch: lab-8210-instruction
version-history-start-date: '2023-09-15T09:52:28Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-29T03:56:16Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/Module5/Cheatsheet/Development_and_RuntimeEnvironmentOptions.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/gcX94eYzTKKoYNJ-xgLDUw/Development%20and%20RuntimeEnvironmentOptions-v1-locales.json
---
##

## Module 5 Cheat Sheet: Development and Runtime Environment Options

<table>
<colgroup>
<col style="width: 12%" />
<col style="width: 31%" />
<col style="width: 56%" />
</colgroup>
<thead>
<tr class="header">
<th>Package or method</th>
<th>Description</th>
<th>Code example</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>SparkSession.builder.getOrCreate()</td>
<td>Gets an existing SparkSession or, if there is no existing one, creates a new one based on the options set in this builder.</td>
<td>
<pre>from pyspark.sql import SparkSession</pre>
<p>Create a SparkSession or get an existing one: </p>
<pre>spark = SparkSession.builder.appName("myApp").getOrCreate() </pre>
<p>Now you can use the spark object to work with Spark</p> </pre></td>
</tr>
<tr class="even">
<td>cd</td>
<td>Used to move efficiently from the existing working directory to
different directories on your system.</td>
	<td><p>Basic syntax of cd command:</p>
<pre>cd [options]... [directory]</pre>
		<p>Example 1: Change directory location to folder1:</p>
<pre>cd /usr/local/folder1</pre>
		<p>Example 2: Get back to the previous working directory</p>
	<pre>cd -</pre>
		<p>Example 3: Move up one level from the present working directory
tree </p>
<pre>cd ..</pre></td>
</tr>
<tr class="odd">
<td>docker-compose</td>
<td>Tool for defining and running multicontainer Docker applications. It uses the YAML file to configure the services and enables us to create and start all the services from just one configuration file. </td>
	<td><p>Example (docker-compose.yml) </p>
<pre>version: '3'
services:
  web:
    image: nginx:latest
    ports:
      - "80:80"
  db:
    image: postgres:latest </pre>
</td>
</tr>
<tr class="even">
<td>git clone </td>
<td>You can create a copy of a specific repository or branch within a repository. </td>
<td><pre>
git clone REPOSITORY_URL [DESTINATION_DIRECTORY]
</pre></td>
</tr>
<tr class="odd">
<td>import</td>
<td>Used to make code from one module accessible in another. Python imports are crucial for a successful code structure. You may reuse code and keep your projects manageable by using imports effectively to increase productivity.</td>
<td>
<pre>from pyspark.sql import SparkSession  </pre></td>
</tr>
<tr class="even">
<td>pip</td>
<td>To ensure that requests will function, the pip program searches for the package in the Python Package Index (PyPI), resolves any dependencies, and installs everything in your current Python environment.</td>
<td>
	<pre>pip list </pre></td>
<td>

<tr class="odd">
<td>pip install</td>
<td>The pip install <package> command looks for the latest version of the package and installs it. </td>
<td><pre>
pip install package_name 
</pre>
</td>
</tr>
<tr class="even">
<td>pip3 install</td>
<td>pip3 is the official package manager and pip command for Python 3. It enables installing and managing third-party software packages with features and functionality not found in the Python standard library. Pip3 installs packages from PyPI (Python Package Index), but it won't resolve dependencies or help you solve dependency conflicts. </td>
<td>
<pre>pip3 install package_name </pre></td>
</tr>
<tr class="odd">
<td>print() </td>
<td>Prints the specified message to the screen or other standard output device.  

The message can be a string or any other object; the object will be converted into a string before being written to the screen.</td>
<td>
<pre>print("Hello, World!")</pre></td>
</tr>
<tr class="even">
<td>python3 </td>
<td>Python 3 is a widely used programming language known for its readability and versatility.  </td>
<td><pre>sudo apt-get update
sudo apt-get install python3
python3 –-version #to verify the python version  </pre></td>
</tr>
<tr class="odd">
<td>sc.setloglevel() </td>
<td>Using this method, you can change the log level to the desired level. Valid log levels include ALL, DEBUG, ERROR, FATAL, INFO, OFF, TRACE, and WARN.</td>
<td><p>Import necessary modules:</p>
<pre>from pyspark import SparkContext </pre>

<p>Create a SparkContext:</p>
<pre>sc = SparkContext("local", "LogLevelExample") </pre>
<p>Set the log level to a desired level (e.g., INFO, ERROR):</p>
<pre>sc.setLogLevel("INFO")
</pre>
<p>Now, any logging messages with a severity level equal to or higher than INFO will be displayed</p></td>
</tr>
<tr class="even">
<td>setMaster() </td>
<td>Denotes where to run your Spark application, local or cluster. When you run on a cluster, you need to specify the address of the Spark master or Driver URL for a distributed cluster. We usually assign a local[*] value to setMaster() in Spark while doing internal testing.</td>
<td>
	
	<pre>from pyspark import SparkContext </pre>
	<p>Create a SparkContext with a local master:</p>
	<pre>sc = SparkContext("local[*]", "MyApp")</pre></td>
</tr>
<tr class="odd">
<td>show()</td>
<td>Spark DataFrame show() is used to display the contents of the DataFrame in a table row and column format. By default, it shows only twenty rows, and the column values are truncated at twenty characters.</td>
<td>
	<pre>df.show() </pre></td>
</tr>
<tr class="even">
<td>source</td>
<td>Used to execute a script file in the current shell environment, allowing you to modify the current shell environment in the same way you would if you had typed commands manually. </td>
<td>
<p>Assuming a Bash shell: </p>
<pre>source myscript.sh </pre></td>
</tr>
<tr class="odd">
<td>virtualenv </td>
<td>Primarily a command-line application. It modifies the environment variables in a shell to create an isolated Python environment, so you'll need to have a shell to run it. You can type in virtualenv (name of the application), followed by flags that control its behavior. </td>
<td>
<p> Creating a virtual environment named "myenv": </p><pre>virtualenv myenv </pre></td>
</tr>
</tbody>
</table>

<footer>

<img align="left" src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/images/footer%20logo.png" alt="">

</footer>


<!--## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
2023-09-19 | 2.0 | Kunal Merchant | QC reviewed with request to recheck color used to highlight code |
| 2023-09-15 | 1.0 | Sameeksha Saxena | Initial version created |-->
