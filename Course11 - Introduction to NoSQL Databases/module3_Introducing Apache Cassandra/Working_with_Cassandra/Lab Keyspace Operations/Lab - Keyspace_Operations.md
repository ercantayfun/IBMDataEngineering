---
markdown-version: v1
tool-type: theiadocker
branch: lab-2769-instruction
version-history-start-date: '2022-12-14T10:01:21Z'
locales-url: https://cf-courses-data.static.labs.skills.network/Den497XQBfjA3jcSo5zQLg/Lab%20-%20Keyspace-Operations-v1-locales.json
---
::page{title="Keyspace Operations"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

Estimated time needed: **15** minutes

## Objectives

After completing this lab, you will be able to:

- Create, update, and remove a keyspace in Cassandra
- Identify the keyspace for the current session with the USE command
- Describe a keyspace by listing all the tables in it

::page{title="About This SN Labs Cloud IDE"}

This Skills Network Labs Cloud IDE provides a hands-on environment for course and project related labs. It utilizes Theia, an open-source IDE (Integrated Development Environment) platform, that can be run on desktop or on the cloud. To complete this lab, we will be using the Cloud IDE based on Theia and Cassandra provided by Skills Network.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.

::page{title="Exercise 1 - Getting the environment ready"}

Open the Cassandra database page by clicking the button below:

::openDatabase{db="Cassandra" start="false"}

On that page, click the `Create` button to create a Cassandra database.

After creation has finished, click the `Cassandra CLI` button (below the `Create` button from the previous step) to connect to the database using the cqlsh CLI.


::page{title="Exercise 2 - Create a keyspace"}

The below command creates a keyspace called **training**, using SimpleStrategy  and a replication_factor of 3.

SimpleStrategy is used when all the nodes in your cassandra cluster exist in a single data center.

On cqlsh run the below command.

```
CREATE KEYSPACE training  
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};
```

List all keyspaces.

```	
describe keyspaces
```

::page{title="Exercise 3 - Describe a keyspace"}

In the previous exercise you have created a keyspace named **training**.
Let us print more details of it using the describe command.

Describe a keyspace.

```	
describe training
```

::page{title="Exercise 4 - Alter a keyspace"}

In a previous exercise, you created a keyspace named **training** using SimpleStrategy.
Let\'s change that to use NetworkTopologyStrategy.

NetworkTopologyStrategy is used when all the nodes in your cassandra cluster are spread across multiple data centers.

Alter a keyspace.

```	
ALTER KEYSPACE training
WITH replication = {'class': 'NetworkTopologyStrategy'};
```

Verify the changes using the describe command.

```	
describe training
```

::page{title="Exercise 5 - Use a keyspace"}

To use a keyspace run the below command.

```	
use training;
```

List all tables in this keyspace.

```	
describe tables
```

You will get an empty list because we do not have any tables yet.

 

::page{title="Exercise 6 - Drop a keyspace"}

To drop a keyspace, run the below command.

```	
drop keyspace training;
```

Verify the changes using the describe command.

```	
use system;
describe keyspaces

```

::page{title="Practice exercises"}

1.  Problem:

> _Create a keyspace named **sales** using SimpleStrategy and a replication factor of 1._

<details>
<summary>Click here for Hint</summary>

> use the 'create keyspace' command 

</details>

<details>
<summary>Click here for Solution</summary>
On the cqlsh run the below command.

```
CREATE KEYSPACE sales  
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 1};
```

</details>
    

2.  Problem:

> _Change the replication factor to 3 for the **sales** keyspace._

<details>
<summary>Click here for Hint</summary>

> use the 'alter keyspace' command

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
ALTER KEYSPACE sales  
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};
```

</details>

3.  Problem:

> _Drop the **sales** keyspace._

<details>
<summary>Click here for Hint</summary>

> use the 'drop keyspace' command

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
drop keyspace sales;
```

</details>

4.  Problem:

> _Verify that the **sales** keyspace is dropped._

<details>
<summary>Click here for Hint</summary>

> use the describe command

</details>

<details>
<summary>Click here for Solution</summary>

On the cqlsh run the below command.

```
describe keyspaces
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
| 2024-01-16        | 0.4     | Mercedes Schneider | QA pass with edits      |
| 2021-11-22        | 0.3     | Kathy An          | Updated lab instructions |
| 2021-04-20        | 0.2     | Steve Ryan | Review pass |
| 2021-03-24        | 0.1     | Ramesh Sannareddy | Created initial version of the lab |-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>

