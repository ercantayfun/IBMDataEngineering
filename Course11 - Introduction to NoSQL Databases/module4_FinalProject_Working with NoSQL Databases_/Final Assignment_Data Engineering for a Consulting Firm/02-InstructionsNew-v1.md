---
markdown-version: v1
tool-type: theiadocker
locales-url: https://cf-courses-data.static.labs.skills.network/jluaMSvudqcOXHnCgxiuHQ/02-InstructionsNew-v1-locales.json
---
::page{title="Final Assignment: Data Engineering for a Consulting Firm"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-CC0100EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">  


<br>  
<br>  

**Estimated time needed:** 45 mins

You are a data engineer at a data analytics consulting company. Your company prides itself in being able to efficiently handle data in any format on any database on any platform. Analysts in your office need to work with data on different databases, and data in different formats. While these analysts are good at analyzing data, they count on you to be able to move data from external sources into various databases, to be able to move data from one type of database to another, and be able to run basic queries on various databases.

## Objectives

In this assignment you will:

- Import data into a MongoDB database.
- Query data in a MongoDB database.
- Export data from MongoDB.
- Import data into a Cassandra database.
- Query data in a Cassandra database.

::page{title="About Skills Network Cloud IDE"}

Skills Network Cloud IDE (based on Theia and Docker) provides an environment for hands on labs for course and project related labs. Theia is an open source IDE (Integrated Development Environment), that can be run on desktop or on the cloud. to complete this lab, we will be using the Cloud IDE based on Theia and MongoDB/Cassandra running in a Docker container.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.

::page{title="Set-up: Start MongoDB"}

Navigate to Skills Network Toolbox.

![skillup network toolbox](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/skills-network-toolbox.png "skillup network toolbox")

You will notice MongoDB listed there, but inactive, which means the database is not available to use.

![MongoDB shown as inactive](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/inactive-mongodb.png "MongoDB shown as inactive")

Once you click on the database, you will see more details and a button to start the database.

![mongo-inactive-new.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/0H2R2Gu5FuNmdtFHkraT8Q/mongo-inactive-new.png)

Clicking  the Create button runs a background process to configure and start your MongoDB server.

![starting-mongodb-new.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/pBxGMvTsMnWPFbK-RkDcFA/starting-mongodb-new.png)

Soon, your server is ready for use. This deployment has access control enabled and MongoDB enforces authentication. So, take note of the password. You will need this password to login as `root` user.
**`Note:`** For Password and other information click on `Connection Information`

![mongo-connection-info.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/F0HRMkbNYNm2GZK6uDVifw/mongo-connection-info.png)

You can now open a new terminal window.

![Launch new terminal](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/new-terminal.png "Launch new terminal")

The new terminal window opens at the bottom of the screen as seen in the following image.

![New terminal launched](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/terminal-launched.png "New terminal launched")

Run the following command in the newly opened terminal window. (You can copy the code by clicking on the copy button on the bottom right of the following codeblock and then paste the code where needed.)

```bash
mongosh -u root -p PASSWORD --authenticationDatabase admin local --host mongo
```
![mongo-cell-new.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/6ctHFG9EXdOZdpuy_zKaHA/mongo-cell-new.png)


The command contains the username and password to connect to mongodb server (the text after the -p option is the password). Your output would be different from the output shown in the prior image. Copy the command given to you, and keep this command handy. You will need this command in the next step.  

Or, you can simply click on MongoDB CLI 

![mongo-CLI.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/iHEyMoWjCjAwNqIQKJ3jSQ/mongo-CLI.png)

In MongoDB CLI (the mongo shell), switch the context to the `training` database.

```
use training
```

Create a collection called `bigdata`

```
db.createCollection("bigdata")
```

::page{title="Set-up: Start Cassandra"}

Navigate to Skills Network Toolbox.

![skillup network toolbox](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/skills-network-toolbox.png "skillup network toolbox")

Cassandra is listed, but inactive, which means a database is not available to use.

![Cassandra shown as inactive](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/inactive-cassandra.png "Cassandra shown as inactive")

Once you click on the database, you will see more details and the button to start the database.

![inactive-cassandra.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/WsYxk3F3TBKW1oO88TQKzQ/inactive-cassandra.png)

Clicking the Create button runs a background process to configure and start your Cassandra server.

![starting-cassandra.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/mUw-mtohQmZVyyPJQX52TQ/starting-cassandra.png)

Shortly after that, your server is ready for use. This deployment has access control enabled and Cassandra enforces authentication. CLick on the `Connection Information` take note of the `Cassandra CLI Command` as you will need to login as a `root` user.

![cassandra-cli-command.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/3Zo1W_KPf4wgoXWBgDe85g/cassandra-cli-command.png)


You can now type  `\open terminal` and enter the details.  

![Launch new terminal](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/new-terminal.png "Launch new terminal")

This action open a new terminal at the bottom of the screen as seen in the following image.  

![New terminal launched](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/terminal-launched.png "New terminal launched")  

Run the following command in the newly opened terminal. (You can copy the code by clicking on the little copy button on the bottom right of the codeblock below and then paste the code where needed.)  

```bash
cqlsh HOST PORT --username root --password PASSWORD
```
![cqlsh-new.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/0Y0LSrdXyqwRbcNe-JRPPg/cqlsh-new.png)


This command contains the username and password to connect to Cassanrda server. Your output could be different from the one shown above. Copy the command given to you, and keep the command handy. You will use this command in the next step.

Or you can simply click on Cassandra CLI which does that for you.

![Cassandra CLI button](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/cassandra-cli.png "Cassandra CLI button")  



::page{title="Exercise 1: Working with a MongoDB database"}

## Download sample data file  

Use the following command to download the data file in your Cloud IDE project directory.  

```bash
curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/labs/FinalProject/movies.json
```
  
## A sample movie document  
```json
{
  _id: '9',
  title: 'The Lost City of Z',
  genre: 'Action,Adventure,Biography',
  Description: 'A true-life drama, centering on British explorer Col. Percival Fawcett, who disappeared while searching for a mysterious city in the Amazon in the 1920s.',
  Director: 'James Gray',
  Actors: 'Charlie Hunnam, Robert Pattinson, Sienna Miller, Tom Holland',
  year: 2016,
  'Runtime (Minutes)': 141,
  rating: 'unrated',
  Votes: 7188,
  'Revenue (Millions)': 8.01,
  Metascore: 78
}
```
  
### Task 1:  Import `movies.json` into mongodb server into a database named `entertainment` and a collection named `movies`.  

Now import the data in `movies.json` and take a screenshot of the command you used and the output.  


![01-mongo-import-new.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/4kvUwNrkiWN-nsCxe5m8Yw/01-mongo-import-new.png)


**Assessment**: Take a screen capture of the output and save the screen capture as `01-mongo-import.png` (Save the images using either a `.jpg` or `.png` extension).  

### Task 2: Write a mongodb query to find the year in which most number of movies were released  

<details>
<summary>Click here for Hint</summary>
  
The `$group` stage can be used to group documents by a certain field. You can calculate the count of movies within the group using the $sum aggregation operator.  
Your query should:  
- Group movies by their release year.  
- Calculate the total count of movies for each year 
- Sort the years in descending order of movie count 
- Limit the output to 1 document (year) which has the highest movie count.  

```
db.movies.aggregate([
    {
        "$group": {
            "_id": "$FIELD_TO_GROUP_ON",
            "calculatedField": { "$group_operator": 1 }
        }
    }
])
```

</details>

Take a screenshot of the command you used and the output showing 73 movies in year 2016.

![most movies in a year output](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/02-most-movies-year.png "most movies in a year output")

**Assessment**: Take a screen capture of the output and save the screen capture as `02-most-movies-year.png` (You can save the image using either the `.jpg` or `.png` extension).

### Task 3:  Write a mongodb query to find the count of movies released after the year 1999

Take a screenshot of the command you used and the output showing 99 movies after year 1999.

![movies count since 1999](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/03-movies-count-1999.png "movies count since 1999")

**Assessment**: Take a screen capture of the output and save the screen capture as `03-movies-count-1999.png` (You can save the image using either the `.jpg` or `.png` extension).

### Task 4: Write a query to find out the average votes for movies released in 2007

<details>
<summary>Click here for Hint</summary>

> use the `$match` operator to filter for movies released in 2007. And `$group` with `$avg` operator to find average votes.

```
db.books.aggregate([
	{ $match : "filter criteria" },
	{ $avg: { _id: "$field", averageVotes: "syntax for $avg" } }
])
```
</details>

Take a screenshot of the command you used and the output.

![Average votes for movies in 2007](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/04-average-votes.png "Average votes for movies in 2007")

**Assessment**: Take a screen capture of the output and save the screen capture as `04-average-votes.png` You can save the image using either the`.jpg` or `.png` extension).

### Task 5:  Export the fields `_id`, `title`, `year`, `rating` and `director` from the `movies` collection into a file named `partial_data.csv`

Take a screenshot of the command you used and its output.

![mongo-export.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/vTfjlSf2K1_txs0Z-gBfgA/mongo-export.png)

**Assessment**: Take a screen capture of the output and save the screen capture as `05-mongo-export.png` (images can be saved with either `.jpg` or `.png` extension).

::page{title="Exercise 2 - Working with a Cassandra database"}

## Download sample data file

If you haven\'t managed to successfully export data into `partial_data.csv` file, then download the data file lready created for you with the following command.

```bash
curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/labs/FinalProject/partial_data.csv
```

### Task 6 - Create a keyspace named `entertainment`

<details>
<summary>Click here for Hint</summary>

> use the `CREATE KEYSPACE` command

```
CREATE KEYSPACE keyspace_name
WITH replication replication_details
```
</details>

Once created, use the `describe` command and use the output for assessment.  

![describe keyspaces command output](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/06-describe-keyspaces.png "describe keyspaces command output")

**Assessment**: Take a screen capture of the output and save the screen capture as `06-describe-keyspaces.png` (You can save the image using either the `.jpg` or `.png` extension).  

### Task 7 - Import `partial_data.csv` into cassandra server into a keyspace named `entertainment` and a table named `movies`  

While creating the table `movies` configure all of the columns as text columns including the id column.  

- _id
- title
- year
- rating
- director

<details>
<summary>Click here for Hint</summary>

> use the `CREATE TABLE` command

```
CREATE TABLE table_name(
    field_name text PRIMARY KEY,
    second_field_name text
);
```
</details>

![describe movies table command output](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/movies-table.png "describe movies table command output")

And now import the data present in `partial_data.csv`  

<details>
<summary>Click here for Hint</summary>

> use the `COPY` command  

```
COPY keyspace.table_name(columns) FROM 'file_path' WITH DELIMITER=',' AND HEADER=TRUE;
```  
</details>

![describe keyspaces command output](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/07-movies-imported.png "describe keyspaces command output")

**Assessment**: Take a screen capture of the output and save the screen capture as `07-movies-imported.png` (You can save the image using either the `.jpg` or `.png` extension).  

### Task 8 - Write a cql query to count the number of rows in the `movies` table  

<details>
<summary>Click here for Hint</summary>

> use the `SELECT COUNT(*)` command  

```
SELECT COUNT(*) FROM table_name;
```
</details>

![movies count command output](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/08-movies-count.png "movies count command output")  

**Assessment**: Take a screen capture of the output and save the screen capture as `08-movies-count.png` You can save the image using either the`.jpg` or `.png` extension).  

### Task 9 - Create an index for the `rating` column in the `movies` table using cql

<details>
<summary>Click here for Hint</summary>

> use the `CREATE INDEX` command  

```
CREATE INDEX IF NOT EXISTS index_name
ON keyspace.table_name ( column_name )  
```
</details>

And then run the `describe` on `movies` that shows `CREATE INDEX` listed in the output.  

Take a screenshot of the command you used and the output.  

![movies with rating index output](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/09-movies-rating-index.png "movies with rating index output")

**Assessment**: Take a screen capture of the output and save the screen capture as `09-movies-rating-index.png` (You can save the image using either the `.jpg` or `.png` extension).  

### Task 10 - Write a cql query to count the number of movies that are rated \'G\'.  

<details>
<summary>Click here for Hint</summary>

> use the `SELECT COUNT(*) FROM table_name WHERE criteria` command  

```
SELECT COUNT(*) FROM table_name WHERE some_field='some value';  
```
</details>

![g rated movies count](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-DB0151EN-edX/images/10-g-rated-movies.png "g rated movies count")

**Assessment**: Take a screen capture of the output and save the screen capture as `10-g-rated-movies.png` (You can save the image using either the`.jpg` or `.png` extension).  


::page{title="Checklist for submission"}


1. **Assessment**: Take a screen capture of the output and save the screen capture as `01-mongo-import.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `02-most-movies-year.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `03-movies-count-1999.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `04-average-votes.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `05-mongo-export.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `06-describe-keyspaces.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `07-movies-imported.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `08-movies-count.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `09-movies-rating-index.png`.
1. **Assessment**: Take a screen capture of the output and save the screen capture as `10-g-rated-movies.png`.

### Congratulations! That\'s a wrap!  

#### Author: [Muhammad Yahya](https://www.linkedin.com/in/1muhammadyahya/)  

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>
	
<!-- ## Change Log
## Changelog
| Date       | Version | Changed by     | Change Description      |
| ---------- | ------- | -------------- | ----------------------- |
| 2024-09-09 | 1.3    | Nikesh Kumar | Update SN Network screenshot for mongo and cassandra/ CLI connect command|
| 2024-09-02 | 1.2     | Nikesh Kumar | Update mongoimport and mongoimport command screenshot |
| 2024-02-07 | 1.1     | Patsy Kravitz	| Grammar items corrected. Logo replaced |
| 2024-02-06 | 1.0     | Patsy Kravitz	| Corrected the top formatting and minor capitalization updates of bullet points. Working with logos |
| 2023-10-24 | 0.9     | Muhammad Yahya | Refresh |
-->







