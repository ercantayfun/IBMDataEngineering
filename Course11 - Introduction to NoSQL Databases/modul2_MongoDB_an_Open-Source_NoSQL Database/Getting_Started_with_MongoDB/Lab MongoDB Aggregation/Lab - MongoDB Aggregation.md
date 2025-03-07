---
markdown-version: v1
tool-type: theiadocker
branch: lab-2766-instruction
version-history-start-date: '2022-12-14T09:59:05Z'
locales-url: https://cf-courses-data.static.labs.skills.network/YNs2rhbiazZsDYdQwJdHKw/Lab%20-%20MongoDB%20Aggregation-v1-locales.json
---
::page{title="MongoDB Aggregation"}

<img src="https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/images/IDSN-logo.png" width="200" alt="cognitiveclass.ai logo">

##

Estimated time needed: **45** minutes

## Objectives

After completing this lab you will be able to:

- Describe simple aggregation operators that process and compute data such as $sort, $limit, $group, $sum, $min, $max, and $avg
- Combine operators to create multi-stage aggregation pipelines 
- Build aggregation pipelines that draw insights about the data by returning aggregated values

## Prerequisites

Before starting this lab, it'll be helpful to have knowledge about accessing and performing basic operations with MongoDB. If you're unfamiliar with MongoDB, feel free to take a look at the [Getting Started with MongoDB](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/MongoDB/Lab%20-%20MongoDB%20Getting%20Started.md.html) and [MongoDB CRUD](https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0151EN-SkillsNetwork/labs/MongoDB/Lab%20-%20MongoDB%20CRUD.md.html) labs!

::page{title="About Skills Network Cloud IDE"}

Skills Network Cloud IDE (based on Theia and Docker) provides an environment for hands on labs for course and project related labs. Theia is an open source IDE (Integrated Development Environment), that can be run on desktop or on the cloud. to complete this lab, we will be using the Cloud IDE based on Theia and MongoDB provided by Skills Network.

## Important Notice about this lab environment

Please be aware that sessions for this lab environment are not persisted. Every time you connect to this lab, a new environment is created for you. Any data you may have saved in the earlier session would get lost. Plan to complete these labs in a single session, to avoid losing your data.

::page{title="Exercise 1 - Getting the environment ready"}

Open the MongoDB database page by clicking the button below:

::openDatabase{db="MongoDB" start="false"}

On that page, click the `Create` button to create a MongoDB database.

After creation has finished, click the `MongoDB CLI` button (below the `Create` button from the previous step) to connect to the database using the mongosh CLI.

Load sample data into the **training** database.

```
use training
db.marks.insert({"name":"Ramesh","subject":"maths","marks":87})
db.marks.insert({"name":"Ramesh","subject":"english","marks":59})
db.marks.insert({"name":"Ramesh","subject":"science","marks":77})
db.marks.insert({"name":"Rav","subject":"maths","marks":62})
db.marks.insert({"name":"Rav","subject":"english","marks":83})
db.marks.insert({"name":"Rav","subject":"science","marks":71})
db.marks.insert({"name":"Alison","subject":"maths","marks":84})
db.marks.insert({"name":"Alison","subject":"english","marks":82})
db.marks.insert({"name":"Alison","subject":"science","marks":86})
db.marks.insert({"name":"Steve","subject":"maths","marks":81})
db.marks.insert({"name":"Steve","subject":"english","marks":89})
db.marks.insert({"name":"Steve","subject":"science","marks":77})
db.marks.insert({"name":"Jan","subject":"english","marks":0,"reason":"absent"})

```

::page{title="Exercise 2 - Limiting the rows in the output"}

Using the $limit operator we can limit the number of documents printed in the output.
This command will print only 2 documents from the **marks** collection.

```
use training
db.marks.aggregate([{"$limit":2}])
```

::page{title="Exercise 3 - Sorting based on a column"}

We can use the $sort operator to sort the output.

This command sorts the documents based on field marks in ascending order.

```	

db.marks.aggregate([{"$sort":{"marks":1}}])
```

This command sort the documents based on field marks in descending order.

```	

db.marks.aggregate([{"$sort":{"marks":-1}}])
```

::page{title="Exercise 4 - Sorting and limiting"}

Aggregation usually involves using more than one operator.
A pipeline consists of one or more operators declared inside an array.
The operators are comma separated.
Mongodb executes the first operator in the pipeline and sends its output to the next operator.

Let us create a two stage pipeline that answers the question "What are the top 2 marks?".

```
db.marks.aggregate([
{"$sort":{"marks":-1}},
{"$limit":2}
])
```	

# Exercise 5 - Group by

The operator $group by, along with operators like $sum, $avg, $min, $max, allows us to perform grouping operations.

This aggregation pipeline prints the average marks across all subjects.

```	

db.marks.aggregate([
{
    "$group":{
        "_id":"$subject",
        "average":{"$avg":"$marks"}
        }
}
])
```

The above query is equivalent to the below sql query.

SELECT subject, average(marks)
FROM marks
GROUP BY subject

::page{title="Exercise 6 - Putting it all together"}

Now let us put together all the operators we have learnt to answer the question. "Who are the top 2 students by average marks?"
This involves: 

- finding the average marks per student.
- sorting the output based on average marks in descending order.
- limiting the output to two documents.

```	

db.marks.aggregate([
{
    "$group":{
        "_id":"$name",
        "average":{"$avg":"$marks"}
        }
},
{
    "$sort":{"average":-1}
},
{
    "$limit":2
}
])
```

::page{title="Practice exercises"}

1.  Problem:

> _Find the total marks for each student across all subjects._

<details>
<summary>Click here for Hint</summary>

> use the $sum operator along with $group on the field 'name'

</details>

<details>
<summary>Click here for Solution</summary>
On the mongo client run the below commands.

```
db.marks.aggregate([
    {
        "$group":{"_id":"$name","total":{"$sum":"$marks"}}
    }
])
```

</details>
    

2.  Problem:

> _Find the maximum marks scored in each subject._

<details>
<summary>Click here for Hint</summary>

> use the $max operator along with $group on the field 'subject'

</details>

<details>
<summary>Click here for Solution</summary>
On the mongo client run the below commands.

```
db.marks.aggregate([
    {
        "$group":{"_id":"$subject","max_marks":{"$max":"$marks"}}
    }
])
```

</details>

3.  Problem:

> _Find the minimum marks scored by each student._

<details>
<summary>Click here for Hint</summary>

> use the $min operator along with $group on the field 'name'

</details>

<details>
<summary>Click here for Solution</summary>
On the mongo client run the below commands.

```
db.marks.aggregate([
    {
        "$group":{"_id":"$name","min_marks":{"$min":"$marks"}}
    }
])
```

</details>

4.  Problem:

> _Find the top two subjects based on average marks._

<details>
<summary>Click here for Hint</summary>

> use the $average operator along with $group on the field 'subject'. Sort by average descending. Limit output to 2 documents

</details>

<details>
<summary>Click here for Solution</summary>
On the mongo client run the below commands.

```
db.marks.aggregate([
{
    "$group":{
        "_id":"$subject",
        "average":{"$avg":"$marks"}
        }
},
{
    "$sort":{"average":-1}
},
{
    "$limit":2
}
])
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
| 2021-11-17        | 0.3     | Kathy An          | Updated lab instructions |
| 2021-04-19        | 0.2     | Steve Ryan | Review pass |
| 2021-03-24        | 0.1     | Ramesh Sannareddy | Created initial version of the lab |-->

<h3 align="center"> &#169; IBM Corporation. All rights reserved. <h3/>

