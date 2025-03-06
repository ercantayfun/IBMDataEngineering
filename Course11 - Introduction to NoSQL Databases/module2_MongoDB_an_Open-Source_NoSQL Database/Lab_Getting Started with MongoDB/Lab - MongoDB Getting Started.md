---
markdown-version: v1
tool-type: theiadocker
branch: lab-2763-instruction
version-history-start-date: '2022-12-14T09:57:11Z'
locales-url: https://cf-courses-data.static.labs.skills.network/RpiPUa1uBjsebxIpVwBGyA/Lab%20-%20MongoDB%20Getting%20Started-v1-locales.json
---
::page{title="Getting Started with MongoDB"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

Estimated time needed: **30** minutes

## Objectives

After completing this lab you will be able to:

- Access the MongoDB server using the command-line interface
- Describe the process of listing and creating collections, which contain documents, and databases, which contain one or more collections
- Perform basic operations on a collection such as inserting, counting and listing documents

::page{title="About Skills Network Cloud IDE"}

Skills Network Cloud IDE (based on Theia and Docker) provides an environment for hands on labs for course and project related labs. Theia is an open source IDE (Integrated Development Environment), that can be run on desktop or on the cloud. to complete this lab, we will be using the Cloud IDE based on Theia and MongoDB provided by Skills Network.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.

::page{title="Exercise 1 - Start mongodb server"}

Open the MongoDB database page by clicking the button below:

::openDatabase{db="MongoDB" start="false"}

On that page, click the `Create` button to create a MongoDB database.

::page{title="Exercise 2 - Connect to mongodb server"}

After creation has finished, click the `MongoDB CLI` button (below the `Create` button from the previous step) to connect to the database using the mongosh CLI.

You should now get connected to the mongodb database, and see an output as in the figure below.

![mongo_client_new.png](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/pJgFD0HRnmWDrwOgSudItw/mongo-client-new.png)

::page{title="Exercise 3 - Find the version of the server"}

On the mongo client run the below command.

```
db.version()
```

This will show the version of the mongodb server.

::page{title="Exercise 4 - List databases"}

On the mongo client run the below command.

```
show dbs
```

This will print a list of the databases present on the server.

::page{title="Exercise 5 - Create database"}

On the mongo client run the below command.

```
use training
```

This will create a new database named **training**. If a database named training already exists, it will start using it.

::page{title="Exercise 6 - Create collecton"}

On the mongo client run the below command.

```
db.createCollection("mycollection")
```

This will create a collection name **mycollection** inside the **training** database.

::page{title="Exercise 7 - List collections"}

On the mongo client run the below command.

```
show collections
```

This will print the list of collections in your current database.

::page{title="Exercise 8 - Insert documents into a collection"}

On the mongo client run the below command.

```
db.mycollection.insert({"color":"white","example":"milk"})
```

The above command inserts the json document {"color":"white","example":"milk"} into the collection.

Let us insert one more document.

```
db.mycollection.insert({"color":"blue","example":"sky"})
```

The above command inserts the json document {"color":"blue","example":"sky"} into the collection.

Insert 3 more documents of your choice.

::page{title="Exercise 9 - Count the number of documents in a collection"}

On the mongo client run the below command.

```
db.mycollection.countDocuments()
```

This command gives you the number of documents in the collection.

::page{title="Exercise 10 - List all documents in a collection"}

On the mongo client run the below command.

```
db.mycollection.find()
```

This command lists all the documents in the collection **mycollection**

Notice that mongodb automatically adds an '_id' field to every document in order to uniquely identify the document.

::page{title="Exercise 11 - Disconnect from mongodb server"}

On the mongo client run the below command.

```
exit
```

::page{title="Practice exercises"}


1.  Problem:

	> _List databases._

	<details>
	<summary>Click here for Hint</summary>

	> Use the 'show' command with dbs option.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	show dbs

	```

	</details>

1.  Problem:

	> _Create a database named **mydatabase**._

	<details>
	<summary>Click here for Hint</summary>

	> Use the 'use' command with the database name.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	use mydatabase

	```

	</details>

1.  Problem:

	> _Create a collection named **landmarks** in the database **mydatabase**._

	<details>
	<summary>Click here for Hint</summary>

	> Use the 'createCollection' command.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	db.createCollection("landmarks")

	```

	</details>

1.  Problem:

	> _List collections_

	<details>
	<summary>Click here for Hint</summary>

	> Use the 'show' command with collections_ option.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	show collections

	```

	</details>

1.  Problem:

	> _Insert details of five landmarks including name, city, and country. Example: Eiffel Tower, Paris, France._

	<details>
	<summary>Click here for Hint</summary>

	> Use the 'db.collection.insert()' command with the correct options.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	db.landmarks.insert({"name":"Statue of Liberty","city":"New York","country":"USA"})
	db.landmarks.insert({"name":"Big Ben","city":"London","country":"UK"})
	db.landmarks.insert({"name":"Taj Mahal","city":"Agra","country":"India"})
	db.landmarks.insert({"name":"Pyramids","country":"Egypt"})
	db.landmarks.insert({"name":"Great Wall of China","country":"China"})

	```

	</details>

1.  Problem:

	> _Count the number of documents you have inserted._

	<details>
	<summary>Click here for Hint</summary>

	> Use the 'count' command on your collections.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	db.landmarks.countDocuments()

	```

	</details>

1.  Problem:

	> _List the documents._

	<details>
	<summary>Click here for Hint</summary>

	> Use the 'db.collection.find()' command.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	db.landmarks.find()

	```

	</details>

1.  Problem:

	> _Disconnect from the server._

	<details>
	<summary>Click here for Hint</summary>

	> Use the 'exit' command.

	</details>

	<details>
	<summary>Click here for Solution</summary>

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
| 2024-09-02        | 0.5     | Nikesh Kumar          | Updated count() to documentCount() |
| 2021-10-19        | 0.4     | Kathy An          | Updated learning objectives |
| 2021-04-19        | 0.3     | Steve Ryan | Review pass|
| 2021-03-16        | 0.2     | Ramesh Sannareddy | Added Hints/Solutions to Practise exercises|
| 2021-02-24        | 0.1     | Ramesh Sannareddy | Created initial version of the lab |-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>
