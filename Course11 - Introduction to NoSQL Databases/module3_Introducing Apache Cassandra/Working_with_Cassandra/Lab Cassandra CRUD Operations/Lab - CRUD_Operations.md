---
markdown-version: v1
tool-type: theiadocker
branch: lab-2771-instruction
version-history-start-date: '2022-12-14T10:02:06Z'
locales-url: https://cf-courses-data.static.labs.skills.network/8_5TeqAmcmszE2K2PtVu0w/Lab%20-%20CRUD-Operations-v1-locales.json
---
::page{title="Cassandra CRUD Operations"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

Estimated time needed: **15** minutes

## Objectives

After completing this lab you will be able to:

- Insert data into a table with an INSERT command
- Read data from a table by querying from it
- Update and delete data from the table based on specific criteria

::page{title="About This SN Labs Cloud IDE"}

This Skills Network Labs Cloud IDE provides a hands-on environment for course and project related labs. It utilizes Theia, an open-source IDE (Integrated Development Environment) platform, that can be run on desktop or on the cloud. To complete this lab, we will be using the Cloud IDE based on Theia and Cassandra provided by Skills Network.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.

::page{title="Exercise 1 - Getting the environment ready"}

Open the Cassandra database page by clicking the button below:

::openDatabase{db="Cassandra" start="false"}

On that page, click the `Create` button to create a Cassandra database.

After creation has finished, click the `Cassandra CLI` button (below the `Create` button from the previous step) to connect to the database using the cqlsh CLI.


</details>

1.  Problem:

> _Create a keyspace named **training** using SimpleStrategy and replication factor of 3._

<details>
<summary>Click here for Hint</summary>

>use CREATE KEYSPACE command with appropriate options 

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
CREATE KEYSPACE training  
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};
```

</details>

2.  Problem:

> _Create a table named **movies** with columns 'movie_id' which is the primary key and integer type, 'movie_name' of type text, and 'year_of_release' of type integer._

<details>
<summary>Click here for Hint</summary>

>use CREATE TABLE command with appropriate options 

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
use training;
CREATE TABLE movies(
movie_id int PRIMARY KEY,
movie_name text,
year_of_release int
);
```

</details>

::page{title="Exercise 2 - Insert data into a table"}

Let us insert a row into the table movies.

   

On cqlsh run the below command.

```
INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (1,'Toy Story',1995);
```

Verify that the data is saved.

```	
select * from movies;
```

Insert the below movies into the table.

| `movie_id` | `movie_name` | `year_of_release`        | 
| ----------------- | ------- | ----------------- |
| 2     | Jumanji  | 1995 | 
| 3     | Heat  | 1995 |
| 4     | Scream  | 1995 |
| 5     | Fargo  | 1996 |

<details>
<summary>Click here for Solution</summary>
On the cqlsh run the below command.

```
INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (2,'Jumanji',1995);

INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (3,'Heat',1995);

INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (4,'Scream',1995);

INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (5,'Fargo',1996);

```

</details>

::page{title="Exercise 3 - Read data from a table"}

In the previous exercise you have inserted some data into the table named **movies**.
Let us query the data in the **movies** table.

Query all rows.

```	
select * from movies;
```

Query the movie name with movie_id 1.

```	
select movie_name from movies where movie_id = 1;
```

::page{title="Exercise 4 - Update data in a table"}

 The movie_id for Scream is 4. It was released in 1996 and not 1995.
Here is how you modify it.

```	
UPDATE movies
SET year_of_release = 1996
WHERE movie_id = 4;
```

Verify that the update was successful.

```	
select * from movies where movie_id = 4;
```

::page{title="Exercise 5 - Delete data from a table"}

Delete the movie with the movie_id 5.

```	
DELETE from movies
WHERE movie_id = 5;
```

Verify using the below command.

```	
select * from movies;
```

::page{title="Practice exercises"}

1.  Problem:

> _Insert the below movie into the movies table._

| `movie_id` | `movie_name` | `year_of_release`        | 
| -----------| ------------ | ------------------------ |
| 6          | Twister      | 1997                     | 

<details>
<summary>Click here for Hint</summary>

> use the command 'insert into table'

</details>

<details>
<summary>Click here for Solution</summary>
On the cqlsh run the below command.

```
INSERT into movies(
movie_id, movie_name, year_of_release)
VALUES (6,'Twister',1997);
```

</details>
    

2.  Problem:

> _Modify the release year of Twister to 1996._

<details>
<summary>Click here for Hint</summary>

> use the command 'update table set column=value where column=value'

</details> 

<details>

<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
UPDATE movies
SET year_of_release = 1996
WHERE movie_id = 6;
```

</details>

3.  Problem:

> _Delete the movie Twister._

<details>
<summary>Click here for Hint</summary>

> use the command 'delete from ..'

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
DELETE from movies
WHERE movie_id = 6;
```

</details>

4.  Problem:

> _Drop the **training** keyspace._

<details>
<summary>Click here for Hint</summary>

> use the 'drop keyspace' command

</details>

<details>

<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
drop keyspace training;
```

</details>

 5.  Problem:

> _Disconnect from the cassandra server._

<details>
<summary>Click here for Hint</summary>

> Refer to the <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/Cassandra/Lab%20-%20Using%20the%20CQL%20Shell.md.html">Using the CQL Shell (cqlsh)</a> lab.

</details>

<details>
<summary>Click here for Solution</summary>

Run the below command on the terminal.

```
exit
```

</details>

## Authors

Ramesh Sannareddy

### Other Contributors

Rav Ahuja

<!--## Change Log

| Date (YYYY-MM-DD) | Version | Changed By        | Change Description                 |
| ----------------- | ------- | ----------------- | ---------------------------------- |
| 2021-11-22        | 0.3     | Kathy An          | Updated lab instructions |
| 2021-04-20        | 0.2     | Steve Ryan | Review pass |
| 2021-03-24        | 0.1     | Ramesh Sannareddy | Created initial version of the lab |-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>

