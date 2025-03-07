---
markdown-version: v1
tool-type: theiadocker
branch: lab-2764-instruction
version-history-start-date: '2022-12-14T09:58:11Z'
locales-url: https://cf-courses-data.static.labs.skills.network/ZUnTzbEzj5ojG64rxH4g1A/Lab%20-%20MongoDB%20CRUD-v1-locales.json
---
::page{title="MongoDB CRUD"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

Estimated time needed: **30** minutes

## Objectives

After completing this lab, you will be able to:

- Create documents in MongoDB with the insert method
- Read documents by listing them, counting them and matching them to a query
- Update and delete documents in MongoDB based on specific criteria

::page{title="About Skills Network Cloud IDE"}

Skills Network Cloud IDE (based on Theia and Docker) provides an environment for hands on labs for course and project related labs. Theia is an open source IDE (Integrated Development Environment), that can be run on desktop or on the cloud. to complete this lab, we will be using the Cloud IDE based on Theia and MongoDB provided by Skills Network.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.

::page{title="Exercise 1 - Getting the environment ready"}

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

	>_Create a collection named **languages**._

	<details>
	<summary>Click here for Hint</summary>

	> Refer to the <a href="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/MongoDB/Lab%20-%20MongoDB%20Getting%20Started.md.html">Mongodb Getting Started</a> lab.

	</details>

	<details>
	<summary>Click here for Solution</summary>

	```
	db.createCollection("languages")
	```

	</details>

::page{title="Exercise 2 - Insert documents"}

Let us insert five documents into the collection **languages**

On the mongo client run the below commands.

```
db.languages.insert({"name":"java","type":"object oriented"})
db.languages.insert({"name":"python","type":"general purpose"})
db.languages.insert({"name":"scala","type":"functional"})
db.languages.insert({"name":"c","type":"procedural"})
db.languages.insert({"name":"c++","type":"object oriented"})
```

::page{title="Exercise 3 -  Read documents"}

Let us try out different ways of querying documents.

Find the count of documents.

```	
db.languages.countDocuments()
```

List the first document in the collection.

```	
db.languages.findOne()
```

List all documents in the collection.

```	
db.languages.find()
```

List first 3 documents in the collection.

```
db.languages.find().limit(3)
```

Query for "python" language.

```
db.languages.find({"name":"python"})
```

Query for "object oriented" languages.

```
db.languages.find({"type":"object oriented"})
```

List only specific fields.

Using a projection document you can specify what fields we wish to see or skip in the output.

    

This command lists all the documents with only name field in the output.

```	
db.languages.find({},{"name":1})
```

This command lists all the documents without the name field in the output.

```	
db.languages.find({},{"name":0})
```

This command lists all the "object oriented" languages with only "name" field in the output.

```
db.languages.find({"type":"object oriented"},{"name":1})
```

::page{title="Exercise 4 -  Update documents"}

Update documents based on a criteria.

Add a field to all the documents.

The \'updateMany\' command is used to update documents in a mongodb collection, and it has the following generic syntax.

```
db.collection.updateMany({what documents to find},{$set:{what fields to set}})
```

Here we are adding a field **description** with value **programming language** to all the documents.

```
db.languages.updateMany({},{$set:{"description":"programming language"}})
```

    

Set the creater for python language.

```	
db.languages.updateMany({"name":"python"},{$set:{"creator":"Guido van Rossum"}})
```

    

Set a field named **compiled** with a value **true** for all the **object oriented** languages.

```	
db.languages.updateMany({"type":"object oriented"},{$set:{"compiled":true}})
```

::page{title="Exercise 5 -  Delete documents"}

Delete documents based on a criteria.

Delete the **scala** language document.

```
db.languages.remove({"name":"scala"})
```

Delete the  **object oriented** languages.

```
db.languages.remove({"type":"object oriented"})
```

Delete all the documents in a collection.

```	
db.languages.remove({})
```

::page{title="Practice exercises"}

Run the below code on mongo console. It will insert 5 documents, which will serve as sample data for the next steps.

```
use training
db.languages.insert({"name":"java","type":"object oriented"})
db.languages.insert({"name":"python","type":"general purpose"})
db.languages.insert({"name":"scala","type":"functional"})
db.languages.insert({"name":"c","type":"procedural"})
db.languages.insert({"name":"c++","type":"object oriented"})
```

1.  Problem:

> _Insert an entry for 'Haskell' programming language which is of type 'functional ._

<details>

<summary>Click here for Hint</summary>

> use the command db.collection.insert()

</details>

<details>
<summary>Click here for Solution</summary>

On the mongo client run the below commands.

```
db.languages.insert({"name":"Haskell","type":"functional"})
```

</details>
    

2.  Problem:

> _Query for all functional languages._

<details>
<summary>Click here for Hint</summary>

> use the command db.collection.insert() with suitable options

</details>

<details>
<summary>Click here for Solution</summary>

On the mongo client run the below commands.

```
db.languages.find({"type":"functional"})
```

</details>

3.  Problem:

> _Add 'Bjarne Stroustrup' as creator for c++._

<details>
<summary>Click here for Hint</summary>

> use the command db.collection.insert() with suitable options

</details>

<details>
<summary>Click here for Solution</summary>

On the mongo client run the below commands.

```
db.languages.updateMany({"name":"c++"},{$set:{"creator":"Bjarne Stroustrup"}})
```

</details>

4.  Problem:

> _Delete all functional programming languages._

<details>
<summary>Click here for Hint</summary>

> use the command db.collection.remove() with suitable options

</details>

<details>
<summary>Click here for Solution</summary>

On the mongo client run the below commands.

```
db.languages.remove({"type":"functional"})
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
| 2021-03-16        | 0.2     | Ramesh Sannareddy | Added Hints/Solutions to Practise exercises |
| 2021-02-24        | 0.1     | Ramesh Sannareddy | Created initial version of the lab |-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>