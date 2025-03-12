---
markdown-version: v1
tool-type: instructional-lab
branch: lab-8183-instruction
version-history-start-date: '2023-09-13T08:35:16Z'
audio-timestamp-of-request-to-generate-wav: '2024-10-29T03:56:02Z'
audio-file-url: https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/Module2/Cheat_Sheet/Introduction_to_the_Hadoop_Ecosystem.md.wav
locales-url: https://cf-courses-data.static.labs.skills.network/KcgXAtCDJPxdhW4GMTn5vg/Introduction%20to%20the%20Hadoop%20Ecosystem-v1-locales.json
---
##

## Module 2 Cheat Sheet: Introduction to the Hadoop Ecosystem

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
<td>bin/hadoop</td>
<td>All Hadoop commands are invoked by the bin/hadoop script. Running
the Hadoop script without any arguments prints the description for all
commands.</td>
<td><p>
Running Hadoop script without arguments:
</p>
<pre>bin/hadoop</pre></td>
</tr>
<tr class="even">
<td>cat</td>
<td>Reads each file parameter in sequence and writes it to standard
output. If you do not specify a file name, the cat command reads from
standard input. You can also specify a file name of - (dash) for
standard input.</td>
<td><p>
Create two sample files. </p>
<pre>echo "This is file 1" > file1.txt 
echo "This is file 2" > file2.txt</pre>
<p>Use the cat command to read and display the contents of both files</p>
	<pre>cat file1.txt file2.txt</pre>
<p>Sample output (Contents of file1.txt and file2.txt):</p>
<pre>This is file 1
This is file 2</pre></td>
</tr>
<tr class="odd">
<td>cd</td>
<td>Used to move efficiently from the existing working directory to
different directories on your system.</td>
	<td><p>Basic syntax of cd command:</p>
<pre>cd [options]... [directory]</pre>
		<p>Example 1: Change directory location to "folder1"</p>
<pre>cd /usr/local/folder1</pre>
		<p>Example 2: Get back to the previous working directory</p>
	<pre>cd -</pre>
		<p>Example 3: Move up one level from the present working directory
tree </p>
<pre>cd ..</pre></td>
</tr>
<tr class="even">
<td>create table</td>
<td>Used to create a new table in a database</td>
<td><p>
Create a new database (if not already created).</p>
<pre>CREATE DATABASE your_database;</pre>
	<p>Use the newly created database.</p>
	<pre>USE your_database;</pre>
<p>Create a new table named "employees" in Hive.</p>
<pre>CREATE TABLE employees (
    id INT,
    first_name STRING,
    last_name STRING,
    email STRING,
    hire_date DATE
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;</pre>
<p>Show the list of tables in the database.</p>
<pre>SHOW TABLES;</pre>
<p>Sample Output (List of Tables):</p>
<pre>OK
employees</pre>
</td>
</tr>
<tr class="odd">
<td>curl</td>
<td>A command-line tool (pronounced "curl") that allows data to be
exchanged between a device and a server through a terminal. The user
specifies the server URL, the location where they want to send the
request, and the data they want to send to the server URL using this
command-line interface (CLI).</td>
<td>
	<p>Example 1: Sending a GET request and displaying the response</p>
	<p>Send a GET request to a server and display the response.</p>
<pre>curl https://www.example.com</pre>
	<p>In this example, we use the curl command to send a GET request to https://www.example.com and display the HTML response from the server.</p>
------------------------
<p>Example 2: Sending data to a server using POST Request:</p>
	<p> Send a POST request with data to a server and display the response.</p>
<pre>curl -X POST -d "name=John&age=30" https://www.example.com/api</pre>
	<p>In this example, we use the curl command to send a POST request to https://www.example.com/api with data <code>name=John&age=30</code> and display the JSON response from the server. </p>
</td>
</tr>
<tr class="even">
<td>docker exec</td>
<td>Runs a new command in a running container. It only runs when the
container's primary process is running, and it is not restarted if the
container is restarted.</td>
<td><p>Running a command in a running Docker container:

Run a new command inside a running Docker container.
	<pre>docker exec -it container_name_or_id ls /app</pre>

Sample Output (List of files in the  \'/app\' Directory inside the container):</p>
<pre>file1.txt
file2.txt
subdirectory </pre>

<p>In this example:

- `docker exec` is used to run a new command (`ls /app`) inside a running Docker container.

- `-it` enables an interactive terminal session, which allows you to see the output of the command.

- `container_name_or_id` is the name or ID of the running Docker container you want to execute the command in.

- `ls /app` is the command that lists the files and directories in the \'/app\' directory inside the container.</p></td>
</tr>
<tr class="odd">
<td>docker-compose</td>
<td>Compose is a tool for defining and running multi-container Docker
applications. It uses the YAML file to configure the services and
enables us to create and start all the services from just one
configuration file.</td>
<td><p>
Starting Docker containers using docker-compose:

Suppose you have a `docker-compose.yml` file like this: </p>
<pre>version: '3'
	services:
		web:
    		image: nginx:latest
    		ports:
      		- "80:80"
		db:
    		image: postgres:latest
    		environment:
    		POSTGRES_PASSWORD: example_password </pre>
<p>
You can use <code>docker-compose</code> to start the services defined in the docker-compose.yml file as follows:

Navigate to the directory containing the docker-compose.yml file.
	</p>

<pre>cd /path/to/your/docker-compose-project</pre>
<p>Start the Docker containers defined in the docker-compose.yml file </p>
<pre>docker-compose up</pre>
</td>
</tr>
<tr class="even">
<td>docker pull</td>
<td>You can download Docker images from the internet.</td>
<td><pre>docker pull [OPTIONS] IMAGE_NAME[:TAG]</pre></td>
</tr>
<tr class="odd">
<td>docker run</td>
<td>It runs a command in a new container, getting the image and starting
the container if needed.</td>
<td><pre>docker run [OPTIONS] IMAGE [COMMAND] [ARG...]</pre></td>
</tr>
<tr class="even">
<td>git clone</td>
<td>You can create a copy of a specific repository or branch within a
repository.</td>
<td><pre>git clone REPOSITORY_URL [DESTINATION_DIRECTORY]</pre></td>
</tr>
<tr class="odd">
<td>hdfs dfs</td>
<td>Apache Hadoop hadoop fs or hdfs dfs are file system commands to
interact with HDFS. These commands are very similar to Unix commands.
Hadoop provides two types of commands to interact with the file system:
hadoop fs or hdfs dfs. The major difference is that Hadoop commands are
supported with multiple file systems like S3, Azure, and many more.</td>
<td><p>Example-1:</p>
<p>Listing files and directories in HDFS:

List files and directories in the root directory of HDFS. </p>
<pre>hdfs dfs -ls /</pre>

<p>Example-2: In this example, we use the <code>hdfs dfs -ls</code> command to list files and directories in the root directory of HDFS.</p>
<pre>hdfs dfs -ls /</pre>
<p>Sample output:</p>
<pre>drwxr-xr-x   - hdfs hduser          0 2023-09-13 10:00 /user
drwxrwxrwx   - hdfs hduser          0 2023-09-13 10:05 /tmp
drwxrwxrwx   - mapred hduser        0 2023-09-13 10:10 /mapred
</pre>
<p>Create a new directory named "mydata" in HDFS.</p>
<pre>hdfs dfs -mkdir /user/your_username/mydata 
</pre></td>
</tr>
<tr class="even">
<td>hdfs dfs -cat</td>
<td>Display the contents for a file.</td>
<td><p>Display the contents of a file in HDFS.
</p>
<pre>hdfs dfs -cat /path/to/file.txt</pre></td>
</tr>
<tr class="odd">
<td>hdfs dfs -mkdir</td>
<td>Creates a directory named path in HDFS</td>
<td><p>Create a directory in HDFS.
</p>
<pre>hdfs dfs -mkdir /user/username/mydirectory</pre></td>
</tr>
<tr class="even">
<td>hdfs dfs -put</td>
<td>Upload a file or folder from the local disk to HDFS.</td>
<td><p>Upload a file from the local file system to HDFS.
</p>
<pre>hdfs dfs -put localfile.txt /user/username/hdfsfile.txt</pre></td>
</tr>
<tr class="odd">
<td>LOAD DATA INPATH</td>
<td>Hive provides the functionality to load precreated table entities
either from the local file system or from HDFS. This command is used to
load data into the hive table.</td>
<td><p>Load data from HDFS into a Hive table.</p>
<pre>LOAD DATA INPATH '/user/username/hdfsfile.txt' INTO TABLE
mytable;</pre></td>
</tr>
<tr class="even">
<td>ls</td>
<td>Writes to standard output the contents of each specified Directory
parameter or the name of each specified file parameter, along with any
other information you ask for with the flags. If you do not specify a
file or directory parameter, the ls command displays the contents of the
current directory.</td>
	<td><p>Basic command syntax</p>
<pre>ls [options] [file/directory]</pre>
		<p>Example 1: Sorts the file names displayed in the order of last modification time. 'r' is for displaying in reverse order</p>
<pre>ls -lt
ls -ltr</pre>
		<p>Example 2: Displays hidden files</p>
<pre>ls -a</pre></td>
</tr>
<tr class="odd">
<td>mkdir</td>
<td>Used to create one or more directories specified by the Directory
parameter. Each new directory contains the standard entries dot (.) and
dot dot (..). You can specify the permissions for the new directories
with the -m Mode flag.</td>
<td><p>Create a new directory named "myfolder."
</p>
<pre>mkdir myfolder</pre></td>
</tr>
<tr class="even">
<td>SELECT * FROM</td>
<td>Lists all the rows from the table to check if the data has been
loaded from the file.</td>
<td><p>
	Select all rows from a table.
	</p>
<pre>SELECT * FROM tablename;</pre></td>
</tr>
<tr class="odd">
<td>show tables</td>
<td>Used to see all the tables in the database that have been
selected.</td>
<td><p>
	 Show all tables in the selected database.
	</p>
<pre>SHOW TABLES;</pre></td>
</tr>
<tr class="even">
<td>tar</td>
<td>Looks for archives on the default device (usually tape) unless you
specify another device. When writing to an archive, the tar command uses
a temporary file (the /tmp/tar* file) and maintains in memory a table of
files with several links.</td>
<td><p>Create a tar archive of a directory.
</p>
	<pre>tar -cvf archive.tar /path/to/directory</pre></td>
</tr>
<tr class="odd">
<td>wget</td>
<td>Stands for web get. The wget is a free, noninteractive file
downloader command. Noninteractive means it can work in the background
when the user is not logged in.</td>
<td><p>
	Basic syntax of the wget command; commonly used options are <code>[-V], [-h], [-b], [-e], [-o], [-a], [-q]</code></p>
	<pre>wget [options]... [URL]...</pre>
Example 1: Specifies to download file.txt over HTTP website URL into the working directory.
	<pre>wget http://example.com/file.txt</pre>
Example 2: Specifies to download the archive.zip over the HTTP website URL in the background and returns you to the command prompt in the interim.
<pre>wget -b http://www.example.org/files/archive.zip</pre></td>
</tr>
</tbody>
</table>

<footer>
<img align="left" src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/RO_15neLwV614E3qzsKKSQ/SNIBMfooter.png" alt="cognitiveclass.ai logo"  />
</footer>


<!--## Changelog

| Date | Version | Changed by | Change Description |
|------|--------|--------|---------|
| 2023-09-20 | 2.0 | Kunal Merchant | QC Reviewed |
| 2023-09-20 | 1.0 | Gagandeep Singh | Initial version created |

## <h3 align="center"> IBM Corporation 2023. All rights reserved. <h3/>-->