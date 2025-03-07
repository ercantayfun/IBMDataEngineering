---
markdown-version: v1
tool-type: theiadocker
branch: lab-2765-instruction
version-history-start-date: '2022-12-14T09:58:37Z'
locales-url: https://cf-courses-data.static.labs.skills.network/KrbXcETpH4Ha5h4vI9H7Zg/Lab%20-%20MongoDB%20Indexing-v1-locales.json
---
::page{title="MongoDB Indexing"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

Estimated time needed: **30** minutes

## Objectives

After completing this lab you will be able to:

- Measure the time it takes to execute a query with the explain function
- Describe the process of creating, listing and deleting indexes
- Evaluate the effectiveness of an index

## Prerequisites

Before starting this lab, it'll be helpful to have knowledge about accessing and performing basic operations with MongoDB. If you're unfamiliar with MongoDB, feel free to take a look at the [Getting Started with MongoDB](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/MongoDB/Lab%20-%20MongoDB%20Getting%20Started.md.html) and [MongoDB CRUD](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/MongoDB/Lab%20-%20MongoDB%20CRUD.md.html) labs!

::page{title="About Skills Network Cloud IDE"}

Skills Network Cloud IDE (based on Theia and Docker) provides an environment for hands on labs for course and project related labs. Theia is an open source IDE (Integrated Development Environment), that can be run on desktop or on the cloud. to complete this lab, we will be using the Cloud IDE based on Theia and MongoDB provided by Skills Network.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.

::page{title="Exercise 1 - Get the environment ready"}

Open the MongoDB database page by clicking the button below:

::openDatabase{db="MongoDB" start="false"}

On that page, click the `Create` button to create a MongoDB database.

After creation has finished, click the `MongoDB CLI` button (below the `Create` button from the previous step) to connect to the database using the mongosh CLI.

1.  Problem:

	> _Select the **training** database._

	<details>
	<summary>Click here for Hint</summary>

	> Refer to the <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/MongoDB/Lab%20-%20MongoDB%20Getting%20Started.md.html">Mongodb Getting Started</a> lab.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	use training
	```

	</details>

1.  Problem:

	>_Create a collection named **bigdata**._

	<details>
	<summary>Click here for Hint</summary>

	> Refer to the <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/MongoDB/Lab%20-%20MongoDB%20Getting%20Started.md.html">Mongodb Getting Started</a> lab.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	db.createCollection("bigdata")
	```

	</details>

::page{title="Exercise 2 - Insert documents"}

- Let us insert a lot of documents into the newly created collection.
- This should take around 3 minutes, so please be patient.
- The code given below will insert 200000 documents into the 'bigdata' collection.
- Each document would have a field named **account_no** which is a simple auto increment number.
- And a field named **balance** which is a randomly generated number, to simulate the bank balance for the account.

Copy the below code and paste it on the mongo client.

```
use training
for (i=1;i<=200000;i++){print(i);db.bigdata.insert({"account_no":i,"balance":Math.round(Math.random()*1000000)})}
```

Verify that 200000 documents got inserted by running the below command.

```
db.bigdata.countDocuments()
```

::page{title="Exercise 3 -  Measure the time taken by a query"}

Let us run a query and find out how much time it takes to complete.

    

Let us query for the details of account number 58982.

    

We will make use of the explain function to find the time taken to run the query in milliseconds.

Run the below command.

```
db.bigdata.find({"account_no":58982}).explain("executionStats").executionStats.executionTimeMillis
```

Make a note of the milliseconds it took to run the query. We will need this at a later stage.

    
    

::page{title="Exercise 4 -  Working with indexes"}

Before you create an index, choose the field you wish to create an index on. It is usually the field that you query most.

    

Run the below command to create an index on the field **account_no**.

```
    
db.bigdata.createIndex({"account_no":1})
```

    

Run the below command to get a list of indexes on the 'bigdata' collection.

    

```	
db.bigdata.getIndexes()
```

    

You should see an index named `account_no_1`

    

::page{title="Exercise 5 -  Find out how effective an index is"}

Let us run a query and find out how much time it takes to complete, using an index.

Let us query for the details of account number 69271.

Run the below command.	

```
db.bigdata.find({"account_no": 69271}).explain("executionStats").executionStats.executionTimeMillis
```

    

Make a note of the milliseconds it took to run the query. Compare this with the time you recored during Exercise-3. This should be a lot less than that.

::page{title="Exercise 6 - Delete an index"}

Use the below command to delete the index we created earlier.

```	
db.bigdata.dropIndex({"account_no":1})
```

    

::page{title="Practice exercises"}

1.  Problem:

> _Create an index on the **balance** field._

<details>
<summary>Click here for Hint</summary>

> use the command db.collection.createIndex()

</details>

<details>
<summary>Click here for Solution</summary>

On the mongo client run the below commands.

```
db.bigdata.createIndex({"balance":1})
```

</details>
    

2.  Problem:

> _Query for documents with a balance of 10000 and record the time taken._

<details>
<summary>Click here for Hint</summary>

> use the command db.collection.find().explain()

</details>

<details>
<summary>Click here for Solution</summary>
	
```
db.bigdata.find({"balance":10000}).explain("executionStats").executionStats.executionTimeMillis
```

</details>

3.  Problem:

> _Drop the index you have created._

<details>
<summary>Click here for Hint</summary>

> use the command db.collection.dropIndex()

</details>

<details>
<summary>Click here for Solution</summary>
	
```
db.bigdata.dropIndex({"balance":1})
```

</details>

4.  Problem:

> _Query for documents with a balance of 10000 and record the time taken, and compare it with the previously recorded time._

<details>
<summary>Click here for Hint</summary>

> use the command db.collection.find().explain()

</details>

<details>
<summary>Click here for Solution</summary>
	
```
db.bigdata.find({"balance": 10000}).explain("executionStats").executionStats.executionTimeMillis
```

</details>

 5.  Problem:

> _Disconnect from the mongodb server._

<details>
<summary>Click here for Hint</summary>

> Refer to the <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/MongoDB/Lab%20-%20MongoDB%20Getting%20Started.md.html">Mongodb Getting Started</a> lab.

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
| 2021-11-17        | 0.4     | Kathy An          | Updated lab instructions |
| 2021-04-19        | 0.3     | Steve Ryan | Review pass |
| 2021-03-17        | 0.2     | Ramesh Sannareddy | Added Hints/Solutions to Practise exercises |
| 2021-02-24        | 0.1     | Ramesh Sannareddy | Created initial version of the lab |-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>
