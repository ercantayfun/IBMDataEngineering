---
markdown-version: v1
tool-type: theiadocker
branch: lab-2770-instruction
version-history-start-date: '2022-12-14T10:01:43Z'
locales-url: https://cf-courses-data.static.labs.skills.network/gMXvGxaOTCHdsHGbdXC31w/Lab%20-%20Table-Operations-v1-locales.json
---
::page{title="Cassandra Table Operations"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

Estimated time needed: **10** minutes

## Objectives

After completing this lab you will be able to:

- Create a table in a keyspace by defining a column name and data type
- Extract the details of a table with the DESCRIBE command
- Alter a table by adding columns
- Drop a table by removing it from the keyspace

::page{title="About This SN Labs Cloud IDE"}

This Skills Network Labs Cloud IDE provides a hands-on environment for course and project related labs. It utilizes Theia, an open-source IDE (Integrated Development Environment) platform, that can be run on desktop or on the cloud. To complete this lab, we will be using the Cloud IDE based on Theia and Skills Network-provided Cassandra.

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

::page{title="Exercise 2 - Create a table"}

The below command creates a table named **movies**, in the **training** keyspace.
The **movies** table has three columns:

   - 'movie_id' is an integer and is the primary key.
   - 'movie_name' is a text column.
   - 'year_of_release' is an integer.

   

On the cassandra client run the below command.

```
use training;
CREATE TABLE movies(
movie_id int PRIMARY KEY,
movie_name text,
year_of_release int
);
```

Verify that the table got created by listing all tables.

```	
describe tables;
```

::page{title="Exercise 3 - Describe a table"}

In the previous exercise you created a table named **movies**.
Let us print more details of it using the describe command.

Describe the table.

```	
describe movies
```

::page{title="Exercise 4 - Alter a table"}

In a previous exercise you created a table named **movies**.
Let us modify it by adding a column named 'genre' which is of type 'text'.

Alter the table.

```	
ALTER TABLE movies
ADD genre text;
```

Verify the changes using the below command

```	
describe movies;
```

::page{title="Exercise 5 - Drop a table"}

To drop the **movies** table run the below command.

```	
drop table movies;
```

Verify using the below command. You should get an error.

```	
describe movies;

```

::page{title="Practice exercises"}

1.  Problem:

> _Create a table named **books** with 3 columns; 'book_id' which is the primary key and of integer type, 'author' which is of type text and 'title' which is of type text._

<details>
<summary>Click here for Hint</summary>

> use the 'create table' command 

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
CREATE TABLE books (
book_id int PRIMARY KEY,
author text,
title text
);
```

</details>
    

2.  Problem:

> _Add a column 'date_of_publication' which is of date type._

<details>
<summary>Click here for Hint</summary>

> use the 'alter table' command

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
ALTER TABLE books
add date_of_publication date;
```

</details>

3.  Problem:

> _Add a 'column' price which is of type decimal._

<details>
<summary>Click here for Hint</summary>

> use the 'alter table' command

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
ALTER TABLE books
add price decimal;
```

</details>

4.  Problem:

> _Drop the 'column' price from the **books** table._

<details>
<summary>Click here for Hint</summary>

> use the 'alter table' command with drop option

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
ALTER TABLE books
drop price;
```

</details>

5.  Problem:

> _Drop the **books** table._

<details>
<summary>Click here for Hint</summary>

> use the 'drop table' command

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
DROP TABLE books;
```

</details>

6.  Problem:

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

 7.  Problem:

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

